for i in $(ls 01-BWA_mappedBrain/*_sorted_aligned_RD.bam); do a=`basename $i | cut -d"." -f1`; samtools view -@ 12 -b -q 10 $i > 01-BWA_mappedBrain/$a"_uniq.bam"; done
for i in $(ls 01-BWA_mappedLiver/*_sorted_aligned_RD.bam); do a=`basename $i | cut -d"." -f1`; samtools view -@ 12 -b -q 10 $i > 01-BWA_mappedLiver/$a"_uniq.bam"; done
for i in $(ls 01-BWA_mappedMuscle/*_sorted_aligned_RD.bam); do a=`basename $i | cut -d"." -f1`; samtools view -@ 12 -b -q 10 $i > 01-BWA_mappedMuscle/$a"_uniq.bam"; done
for i in $(ls 01-BWA_mappedTestis/*_sorted_aligned_RD.bam); do a=`basename $i | cut -d"." -f1`; samtools view -@ 12 -b -q 10 $i > 01-BWA_mappedTestis/$a"_uniq.bam"; done
