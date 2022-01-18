for i in $(ls 01-BWA_mappedBrain/); do a=`basename $i | cut -d"." -f1`; samtools view -@ 12 -bS 01-BWA_mappedBrain/$i > 01-BWA_mappedBrain/$a".unsorted_aligned.bam"; done
for i in $(ls 01-BWA_mappedLiver/); do a=`basename $i | cut -d"." -f1`; samtools view -@ 12 -bS 01-BWA_mappedLiver/$i > 01-BWA_mappedLiver/$a".unsorted_aligned.bam"; done
for i in $(ls 01-BWA_mappedMuscle/); do a=`basename $i | cut -d"." -f1`; samtools view -@ 12 -bS 01-BWA_mappedMuscle/$i > 01-BWA_mappedMuscle/$a".unsorted_aligned.bam"; done
for i in $(ls 01-BWA_mappedTestis/); do a=`basename $i | cut -d"." -f1`; samtools view -@ 12 -bS 01-BWA_mappedTestis/$i > 01-BWA_mappedTestis/$a".unsorted_aligned.bam"; done
