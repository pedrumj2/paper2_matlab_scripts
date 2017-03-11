#!/bin/bash


#The input data used for this script does not consider all attacks to be the same. Each attach gets its own label
subfolder="MLDA"
type="lda"
dataType="multiple"
rm -rf output/${subfolder}
mkdir output/${subfolder}
SECONDSARR=("1" "5" "10") 
for SEC in "${SECONDSARR[@]}"
do 
  ARRAY=("matlab -r  \"singleF('logs/${SEC}s/MCat/C1/', true, true, true, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E1S1C1.txt &"
         "matlab -r  \"singleF('logs/${SEC}s/MCat/C1/', true, false, true, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E1S0C1.txt &"
         "matlab -r  \"singleF('logs/${SEC}s/MCat/C1/', false, true, true, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E0S1C1.txt &"
         "matlab -r  \"singleF('logs/${SEC}s/MCat/C1/', false, false, true, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E0S0C1.txt &"
         "matlab -r  \"singleF('logs/${SEC}s/MCat/C0/', true, true, false, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E1S1C0.txt &"
         "matlab -r  \"singleF('logs/${SEC}s/MCat/C0/', true, false, false, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E1S0C0.txt &"
         "matlab -r  \"singleF('logs/${SEC}s/MCat/C0/', false, true, false, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E0S1C0.txt &"
         "matlab -r  \"singleF('logs/${SEC}s/MCat/C0/', false, false, false, '$type','$dataType')\" -nodisplay > output/${subfolder}/I${SEC}E0S0C0.txt &")
         
  
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

echo "successful"

    
