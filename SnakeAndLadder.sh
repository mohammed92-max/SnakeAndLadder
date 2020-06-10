#!/bin/bash -x

declare i=0

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

function checkPosition1()
{
    case $Position1 in
        8)
            newPosition1=20
            ;;

        10)
            newPosition1=25
            ;;

        15)
            newPosition1=10
            ;;

        19)
            newPosition1=50
            ;;

        20)
            newPosition1=10
            ;;

        21)
            newPosition1=3
            ;;

        24)
            newPosition1=58
            ;;

        27)
            newPosition1=37
            ;;

        34)
            newPosition1=20
            ;;

        42)
            newPosition1=11
            ;;

        46)
            newPosition1=53
            ;;

	
        49)
            newPosition1=32
            ;;

        67)
            newPosition1=5
            ;;

        70)
            newPosition1=15
            ;;

        75)
            newPosition1=32
            ;;

        80)
            newPosition1=10
            ;;

        85)
            newPosition1=50
            ;;

        90)
            newPosition1=70
            ;;

        *)
            newPosition1=$Position1
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

    NoOfTimes=0;
    count=0;
    while ((Position < 100 && Position1 < 100))
    do
        ((NoOfTimes++));
        key=$((i%2))

        if((key==0))
        then
            echo " "
            echo "1st player"
            echo -e "To roll die press enter button"
            read ch

            dice=$(echo "$RANDOM%6+1" )
            ((count++));
            echo "dice played $count times"
            Position=$((Position+dice))

            echo -e "You are on position $Position.\n"

            checkPosition

            if ((Position < newPosition))
            then
                echo -e "\nYou are now on ladder $newPosition."
            fi

            if ((Position > newPosition))
            then
                echo -e "\nYou are now on snake $newPosition."
            fi

            echo -e "1st player - $newPosition."
            Position=$newPosition

            else
            echo " "
            echo "2nd player"
            echo "To roll die,press enter"
            read ch

            dice=$(echo "$RANDOM%6+1" )
            ((count++));
            echo "dice played $count times"

            Position1=$((Position1+dice))

            echo -e "You are on $Position1.\n"

            checkPosition1

            if ((Position1 < newPosition1))
            then
                echo -e "You are now on ladder $newPosition1."
            fi

            if ((Position1 > newPosition1))
            then
                echo -e "You are now on snake $newPosition1."
            fi
            echo -e "2nd player - $newPosition1."
            Position1=$newPosition1

        fi

        i=$((i+1))

    done

    if((Position1 = 100))
    then
        echo -e "2nd player won"
    elif((Position = 100))
    then
        echo -e "1st player won"
    fi







