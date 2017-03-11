#!/bin/bash



#rm -rf logs
#rm -rf output
#mkdir logs
#mkdir logs/1s
#mkdir logs/5s
#mkdir logs/10s
#mkdir output
#
#SECONDSARR=("1" "5" "10") 
#for SEC in "${SECONDSARR[@]}"
#do 
#
#  ARRAY=("java Main "D12" "$SEC" "1" > ../matlab_ml/logs/${SEC}s/D12I${SEC}C1.txt &"
#          "java Main "D12" "$SEC" "0" > ../matlab_ml/logs/${SEC}s/D12I${SEC}C0.txt &"
#          "java Main "D13" "$SEC" "1" > ../matlab_ml/logs/${SEC}s/D13I${SEC}C1.txt &"
#          "java Main "D13" "$SEC" "0" > ../matlab_ml/logs/${SEC}s/D13I${SEC}C0.txt &"
#          "java Main "D14" "$SEC" "1" > ../matlab_ml/logs/${SEC}s/D14I${SEC}C1.txt &"
#          "java Main "D14" "$SEC" "0" > ../matlab_ml/logs/${SEC}s/D14I${SEC}C0.txt &"
#          
#          "java Main "D15A" "$SEC" "1" > ../matlab_ml/logs/${SEC}s/D15AI${SEC}C1.txt &"
#          "java Main "D15A" "$SEC" "0" > ../matlab_ml/logs/${SEC}s/D15AI${SEC}C0.txt &"
#          "java Main "D15B" "$SEC" "1" > ../matlab_ml/logs/${SEC}s/D15BI${SEC}C1.txt &"
#          "java Main "D15B" "$SEC" "0" > ../matlab_ml/logs/${SEC}s/D15BI${SEC}C0.txt &"
#          "java Main "D15C" "$SEC" "1" > ../matlab_ml/logs/${SEC}s/D15CI${SEC}C1.txt &"
#          "java Main "D15C" "$SEC" "0" > ../matlab_ml/logs/${SEC}s/D15CI${SEC}C0.txt &"
#          
#          "java Main "D16A" "$SEC" "1" > ../matlab_ml/logs/${SEC}s/D16AI${SEC}C1.txt &"
#          "java Main "D16A" "$SEC" "0" > ../matlab_ml/logs/${SEC}s/D16AI${SEC}C0.txt &"
#          "java Main "D16B" "$SEC" "1" > ../matlab_ml/logs/${SEC}s/D16BI${SEC}C1.txt &"
#          "java Main "D16B" "$SEC" "0" > ../matlab_ml/logs/${SEC}s/D16BI${SEC}C0.txt &"
#          "java Main "D16C" "$SEC" "1" > ../matlab_ml/logs/${SEC}s/D16CI${SEC}C1.txt &"
#          "java Main "D16C" "$SEC" "0" > ../matlab_ml/logs/${SEC}s/D16CI${SEC}C0.txt &"
#          
#          "java Main "D17A" "$SEC" "1" > ../matlab_ml/logs/${SEC}s/D17AI${SEC}C1.txt &"
#          "java Main "D17A" "$SEC" "0" > ../matlab_ml/logs/${SEC}s/D17AI${SEC}C0.txt &"
#          "java Main "D17B" "$SEC" "1" > ../matlab_ml/logs/${SEC}s/D17BI${SEC}C1.txt &"
#          "java Main "D17B" "$SEC" "0" > ../matlab_ml/logs/${SEC}s/D17BI${SEC}C0.txt &"
#          "java Main "D17C" "$SEC" "1" > ../matlab_ml/logs/${SEC}s/D17CI${SEC}C1.txt &"
#          "java Main "D17C" "$SEC" "0" > ../matlab_ml/logs/${SEC}s/D17CI${SEC}C0.txt &")
#  ##1 second interval, repeat attack
#  (cd ../iscx_feature
#  
#    bash_pid=$BASHPID
#    for i in "${ARRAY[@]}"
#      do 
#        children="$(ps -eo ppid | grep -w $bash_pid  | wc -l)"
#        while [[ "$children" -gt "6" ]]
#        do
#          sleep 20
#          children="$(ps -eo ppid | grep -w $bash_pid  | wc -l)"
#        done
#      eval $i
#    done 
#  
# 
#    echo "Waiting"  
#    wait
#    echo "done Waiting children count is:"
#    children="$(ps -eo ppid | grep -w $bash_pid  | wc -l)"
#    echo $children
#  )
#done
#
#echo "done mysql"
#
#
#
#SECONDSARR=("1" "5" "10") 
#for SEC in "${SECONDSARR[@]}"
#do 
#  DAYS=("15" "16" "17") 
#  for DAY in "${DAYS[@]}"
#  do 
#  
#    cat logs/${SEC}s/D${DAY}AI${SEC}C1.txt > logs/${SEC}s/D${DAY}I${SEC}C1.txt
#    cat logs/${SEC}s/D${DAY}BI${SEC}C1.txt >> logs/${SEC}s/D${DAY}I${SEC}C1.txt
#    cat logs/${SEC}s/D${DAY}CI${SEC}C1.txt >> logs/${SEC}s/D${DAY}I${SEC}C1.txt
#    
#    cat logs/${SEC}s/D${DAY}AI${SEC}C0.txt > logs/${SEC}s/D${DAY}I${SEC}C0.txt
#    cat logs/${SEC}s/D${DAY}BI${SEC}C0.txt >> logs/${SEC}s/D${DAY}I${SEC}C0.txt
#    cat logs/${SEC}s/D${DAY}CI${SEC}C0.txt >> logs/${SEC}s/D${DAY}I${SEC}C0.txt
#                          
#    rm logs/${SEC}s/D${DAY}AI${SEC}C1.txt
#    rm logs/${SEC}s/D${DAY}BI${SEC}C1.txt
#    rm logs/${SEC}s/D${DAY}CI${SEC}C1.txt
#    
#    rm logs/${SEC}s/D${DAY}AI${SEC}C0.txt
#    rm logs/${SEC}s/D${DAY}BI${SEC}C0.txt
#    rm logs/${SEC}s/D${DAY}CI${SEC}C0.txt
#  done
#  
#  mkdir logs/${SEC}s/Final
#  cat logs/${SEC}s/D12I${SEC}C1.txt > logs/${SEC}s/Final/I${SEC}C1.txt 
#  cat logs/${SEC}s/D12I${SEC}C0.txt > logs/${SEC}s/Final/I${SEC}C0.txt 
#  
#  DAYS=("13" "14" "15" "16") 
#  for DAY in "${DAYS[@]}"
#  do 
#    cat logs/${SEC}s/D${DAY}I${SEC}C1.txt >> logs/${SEC}s/Final/I${SEC}C1.txt 
#    cat logs/${SEC}s/D${DAY}I${SEC}C0.txt >> logs/${SEC}s/Final/I${SEC}C0.txt 
#  done
#done  


#For multiple class the input files should be seperate and they must all be in the same
#folder with nothing else. The matlab code itself will handle the tagging of the attack column based on 
#file
SECONDSARR=("1" "5" "10") 
for SEC in "${SECONDSARR[@]}"
do 
mkdir ../logs/${SEC}s/MCat
mkdir ../logs/${SEC}s/MCat/C1
mkdir ../logs/${SEC}s/MCat/C0

  DAYS=("12" "13" "14" "15" "16") 
  for DAY in "${DAYS[@]}"
  do 
    cp ../logs/${SEC}s/D${DAY}I${SEC}C0.txt ../logs/${SEC}s/MCat/C0/
    cp ../logs/${SEC}s/D${DAY}I${SEC}C1.txt ../logs/${SEC}s/MCat/C1/
  done

done
  

    
