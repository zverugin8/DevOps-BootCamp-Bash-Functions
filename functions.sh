#!/bin/bash

function pow() {
    local res=1
    for((i=1;i<=$2;i++)); do
        #echo $res
        ((res*=$1))
    done
    echo $res
}

function shortest() {
    arg_arr=($*)
    res_arr=()
    min_len=${#arg_arr[0]}
    #echo "start min: "$min_len
    #echo ${arg_arr[3]}
    # for word in "$@"; do
    #     echo "$word"
    # done

    for((i=0;i<${#arg_arr[@]};i++)); do 
        if  [[ ${#arg_arr[i]} -le $min_len ]]; then  
            min_len=${#arg_arr[i]}
        fi
    done
    #echo "calc min: $min_len"

    for ((i=0;i<${#arg_arr[@]};i++)); do
        #echo "word: ${arg_arr[i]}"
        if  [[ ${#arg_arr[i]} -le $min_len ]]; then
            #echo "add to res ${arg_arr[i]}"
            res_arr+=("${arg_arr[i]}")
            
        fi
    done

    for i in "${!res_arr[@]}"; do
        echo "${res_arr[i]}"
    done
    
}

function print_log() {

timestamp=$(date +"%F %R")
echo "[$timestamp]" "$*"

}
#shortest "This" "is" "is" "Bash" "Functions" "1" "Task"
#print_log "Hello World!"
#print_log "Hello Bash!"


