#! /bin/zsh -x

random=$(( RANDOM%((1-0)+1)+0 ))

if [ $random -eq 0 ]
then
echo tails
else
echo heads
fi


declare -A singlet
declare -A singletNo


singlet=(["H"]=1 ["T"]=0)
echo ${singlet[@]}
singletNo=([1]=0 [0]=0)
echo ${singletNo[@]}

for (( index=1;index<=10;index++ ))
do
random=$(( RANDOM%((1-0)+1)+0 ))
singletNo[$random]=$(( ${singletNo[$random]}+1 ))

done
echo ${singletNo[@]}

for key in ${(k)singlet[@]}
do
echo $key $(( ${singletNo[${singlet[$key]}]}*10 ))% 

done
















