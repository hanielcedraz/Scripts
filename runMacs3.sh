#for i in $(ls 01-BWA_mapped/*_noMT.bam); do a=`basename $i | cut -d"_" -f1`; macs2 callpeak -f BAMPE -t $i -g hs --outdir 02-MACS2_narrow_noMT/ -n $a -B -q 0.05 ; done


for i in $(ls 01-BWA_mapped/*_noMT.bam); do a=`basename $i | cut -d"_" -f1`; macs2 callpeak -f BAMPE -t $i -g hs --outdir 02-MACS2_broad_noMT/ -n $a -B -q 0.05 --broad --broad-cutoff 0.05 ; done
