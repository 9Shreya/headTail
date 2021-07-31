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

declare -A doublet 
declare -A doubletNo

doublet=(["HH"]=4 ["TT"]=1 ["HT"]=2 ["TH"]=3)
doubletNo=([4]=0 [1]=0 [2]=0 [3]=0)

for (( index=1;index<=10;index++ ))
do
random=$(( RANDOM%((4-0)+0)+1 ))
doubletNo[$random]=$(( ${doubletNo[$random]}+1 ))
done

echo ${doubletNo[@]}

for key in  ${(k)doublet[@]}
do
echo $key $((  ${doubletNo[${doublet[$key]}]}*10 ))%

done

declare -A triplet
declare -A tripletNo

triplet=(["HHH"]=1 ["HHT"]=2 ["HTT"]=3 ["HTH"]=4 ["THH"]=5 ["THT"]=6 ["TTH"]=7 ["TTT"]=8)
tripletNo=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 [7]=0 [8]=0)

for (( index=1;index<=50;index++ ))
do
random=$(( RANDOM%((9-1)+0)+1 ))
tripletNo[$random]=$(( ${tripletNo[$random]}+1 ))
done

echo $tripletNo

for key in ${(k)triplet[@]}
do
echo $key $(( ${tripletNo[${triplet[$key]}]}*10/5 ))
done

