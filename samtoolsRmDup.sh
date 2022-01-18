for i in $(ls 01-BWA_mappedBrain/*_sorted_aligned.bam); do a=`basename $i | cut -d"." -f1`; samtools rmdup $i 01-BWA_mappedBrain/$a"_RD.bam"; done
for i in $(ls 01-BWA_mappedLiver/*_sorted_aligned.bam); do a=`basename $i | cut -d"." -f1`; samtools rmdup $i 01-BWA_mappedLiver/$a"_RD.bam"; done
for i in $(ls 01-BWA_mappedMuscle/*_sorted_aligned.bam); do a=`basename $i | cut -d"." -f1`; samtools rmdup $i 01-BWA_mappedMuscle/$a"_RD.bam"; done
for i in $(ls 01-BWA_mappedTestis/*_sorted_aligned.bam); do a=`basename $i | cut -d"." -f1`; samtools rmdup $i 01-BWA_mappedTestis/$a"_RD.bam"; done
