#!/bin/bash




rm -rf output
mkdir output

./LDA.sh
./MLDA.sh
./QDA.sh
./MQDA.sh

wait
echo "successful"
    

    


    
