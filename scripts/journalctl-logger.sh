#!/usr/bin/env sh
DEBUG=0

decho(){
    if [ "$DEBUG" = "1" ]; then
        echo "$@"
    fi
}

cursor=$(journalctl --output-fields=PRIORITY,MESSAGE --no-pager -b -0\
    -o json | head -n 1 | grep -Po '(?<="__CURSOR"\ :\ ").*?[^\\](?=",)');

while plymouth --ping; do

    journalctl --output-fields=PRIORITY,MESSAGE --no-pager -b -0 -c "$cursor" \
        -o json | while IFS= read -r line ;
    do
        cursor=$(echo "$line" | grep -Po \
            '(?<="__CURSOR"\ :\ )".*?[^\\]"(?=,)');
        priority=$(echo "$line" | grep -Po \
            '(?<="PRIORITY"\ :\ )".*?[^\\]"(?=,)');
        message=$(echo "$line" | grep -Po \
            '(?<="MESSAGE"\ :\ )".*?[^\\]"(?=\ )');

        case "$priority" in
            *[0-3]*)
                msg="colmsg:0:0.976:0.043:0.043:$message"
                plymouth update --status="$msg"
                ;;
            *4*)
                msg="colmsg:0:1:0.792:0:$message"
                plymouth update --status="$msg"
                ;;
            *[5-7]*)
                msg="colmsg:0:0.32:0.48:0.69:$message"
                plymouth update --status="$msg"
                ;;
        esac

        #decho "$cursor"
        #decho "$priority"
        #decho "$message"
        #decho "$line"
    done
done
