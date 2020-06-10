#!/bin/bash -x

echo "Player rolls die "

player1Start=0;

roll=$((RANDOM%6+1));

echo "number is "$roll;


NO_PLAY=0;
LADDER1=3;
LADDER2=5;
LADDER3=6;
SNAKE1=1;
SNAKE2=2;
SNAKE3=4;

case $roll in
                  $NO_PLAY)
                  player1Start=0
                  echo "No play"
                  ;;

                  $LADDER1)
                  player1Start=$roll
                  echo "Moves $roll forward from $player1Start position"
                  ;;

                  $LADDER2)
                  player1Start=$roll
                  echo "Moves $roll forward from $player1Start position"
                  ;;

                  $LADDER3)
                  player1Start=$roll
                  echo "Moves $roll forward from $player1Start position"
                  ;;

                  $SNAKE1)
                  player1Start=$(($player1Start - $roll))
                  echo "Moves $roll backward from $player1Start position"
                  ;;

                  $SNAKE2)
                  player1Start=$(($player1Start - $roll))
                  echo "Moves $roll backward from $player1Start position"
                  ;;

                  $SNAKE3)
                  player1Start=$(($player1Start - $roll))
                  echo "Moves $roll backward from $player1Start position"
                  ;;
esac

