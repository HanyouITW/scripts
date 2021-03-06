#!/bin/bash

# Environment: Nil

process=$1
runID=$2

home="/home/hanyou"
scratch="/scratch/junzli_flux/hanyou"

toDownload="
http://pac.hudsonalpha.org/v1/AUTH_huda/JDEKdRch4X6W7dLNi2wk/4512-JFI-0502_S5_L008_I1_001.fastq.gz
http://pac.hudsonalpha.org/v1/AUTH_huda/JDEKdRch4X6W7dLNi2wk/4512-JFI-0502_S5_L008_R1_001.fastq.gz
http://pac.hudsonalpha.org/v1/AUTH_huda/JDEKdRch4X6W7dLNi2wk/4512-JFI-0502_S5_L008_R2_001.fastq.gz
http://pac.hudsonalpha.org/v1/AUTH_huda/JDEKdRch4X6W7dLNi2wk/4512-JFI-0503_S1_L001_I1_001.fastq.gz
http://pac.hudsonalpha.org/v1/AUTH_huda/JDEKdRch4X6W7dLNi2wk/4512-JFI-0503_S1_L001_R1_001.fastq.gz
http://pac.hudsonalpha.org/v1/AUTH_huda/JDEKdRch4X6W7dLNi2wk/4512-JFI-0503_S1_L001_R2_001.fastq.gz
"
downloadTo="/scratch/junzli_flux/hanyou/data2/sequence/rat_genome_02"


if [ "$process" == "download" ]; then

    echo "cd $downloadTo" > "$home/script/$runID/`date +"%Y.%m.%d"`.$process"".$runID.sh"
    
    for ff in $toDownload; do

	echo "curl -O $ff" >> "$home/script/$runID/`date +"%Y.%m.%d"`.$process"".$runID.sh"

	done

    cd "$home/script/$runID"
    bash "$home/script/$runID/`date +"%Y.%m.%d"`.$process.$runID.sh"

fi


