
for i in $(ls 01-BWA_mappedBrain/*_sorted_aligned_RD_uniq.bam); do samtools index -@ 12 $i; done
for i in $(ls 01-BWA_mappedLiver/*_sorted_aligned_RD_uniq.bam); do samtools index -@ 12 $i; done
for i in $(ls 01-BWA_mappedMuscle/*_sorted_aligned_RD_uniq.bam); do samtools index -@ 12 $i; done
for i in $(ls 01-BWA_mappedTestis/*_sorted_aligned_RD_uniq.bam); do samtools index -@ 12 $i; done
