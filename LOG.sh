#!/bin/bash



subfolder="LOG"
type="log"
dataType="single"
rm -rf output/${subfolder}
mkdir output/${subfolder}
SECONDSARR=("1" "5" "10") 
for SEC in "${SECONDSARR[@]}"
do 
  ARRAY=("matlab -r  \"singleF('logs/${SEC}s/Final/I${SEC}C1.txt', true, true, true, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E1S1C1.txt &"
         "matlab -r  \"singleF('logs/${SEC}s/Final/I${SEC}C1.txt', true, false, true, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E1S0C1.txt &"
         "matlab -r  \"singleF('logs/${SEC}s/Final/I${SEC}C1.txt', false, true, true, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E0S1C1.txt &"
         "matlab -r  \"singleF('logs/${SEC}s/Final/I${SEC}C1.txt', false, false, true, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E0S0C1.txt &"
         "matlab -r  \"singleF('logs/${SEC}s/Final/I${SEC}C0.txt', true, true, false, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E1S1C0.txt &"
         "matlab -r  \"singleF('logs/${SEC}s/Final/I${SEC}C0.txt', true, false, false, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E1S0C0.txt &"
         "matlab -r  \"singleF('logs/${SEC}s/Final/I${SEC}C0.txt', false, true, false, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E0S1C0.txt &"
         "matlab -r  \"singleF('logs/${SEC}s/Final/I${SEC}C0.txt', false, false, false, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E0S0C0.txt &")
         
  
  bash_pid=$BASHPID
  echo $bash_pid
  for i in "${ARRAY[@]}"
  do 
    children="$(ps -eo ppid | grep -w $bash_pid  | wc -l)"
    echo $children
    while [ "$children" -gt "8" ]
    do
      sleep 20
      children="$(ps -eo ppid | grep -w $bash_pid  | wc -l)"
      echo $children
    done
    eval $i
  done   
done

wait
echo "successful"

    
