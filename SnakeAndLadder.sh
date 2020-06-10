#!/bin/bash -x

function checkPosition()
{
    case $Position in
        8)
            newPosition=20
            ;;

        10)
            newPosition=25
            ;;

        15)
            newPosition=10
            ;;

        19)
            newPosition=50
            ;;

        20)
            newPosition=10
            ;;

        21)
            newPosition=3
            ;;

        24)
            newPosition=58
            ;;

        27)
            newPosition=37
            ;;

        34)
            newPosition=20
            ;;

        42)
            newPosition=11
            ;;

        46)
            newPosition=53
            ;;

        49)
            newPosition=32
            ;;

        67)
            newPosition=5
            ;;

        70)
            newPosition=15
            ;;

        75)
            newPosition=32
            ;;

        80)
            newPosition=10
            ;;

        85)
            newPosition=50
            ;;

        90)
            newPosition=70
            ;;

        *)
            newPosition=$Position
            ;;
    esac
}

    printf "   100  99  98  97  96  95  94  93  92  91\n"
    printf "    81  82  83  84  85  86  87  88  89  90     \n"
    printf "    80  79  78  77  76  75  74  73  72  71          1=Start       27=go to 37         75=go to 32\n"
    printf "    61  62  63  64  65  66  67  68  69  70          8=go to 35    34=go to 20         80=go to 10\n"
    printf "    60  59  58  57  56  55  54  53  52  51          10=go to 23   42=go to 11         85=go to 50\n"
    printf "    41  42  43  44  45  46  47  48  49  50          15=go  to 5   46=go to 53         90=go to 70\n"
    printf "    40  39  38  37  36  35  34  33  32  31          19=go to 43   49=go  to 32\n"
    printf "    21  22  23  24  25  26  27  28  29  30          20=go  to 13  63=go  to 2\n"
    printf "    20  19  18  17  16  15  14  13  12  11          21=go  to 3   67=go to 5  \n"
    printf "    1   2   3   4   5   6   7   8   9   10          24=go to 58   70= go to 15\n"


   while ((Position < 100 ))
    do
            echo " "
            echo -e "To roll die press enter button"
            read ch

            dice=$(echo "$RANDOM%6+1" )

            Position=$((Position+dice))

            echo -e "You are on $Position.\n"

            checkPosition

            if ((Position < newPosition))
            then
                echo -e "\nYou are now on ladder $newPosition."
            fi

            if ((Position > newPosition ))
            then
                echo -e "\nYou are now on snake $newPosition."
            fi

            echo -e "1st player - $newPosition."
            Position=$newPosition
    done

    if((Position == 100))
    then
        echo "You won"
    fi





