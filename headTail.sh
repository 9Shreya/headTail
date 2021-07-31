#! /bin/zsh -x

random=$(( RANDOM%((1-0)+1)+0 ))

if [ $random -eq 0 ]
then
echo tails
else
echo heads
fi
