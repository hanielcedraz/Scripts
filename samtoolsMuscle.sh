#for i in $(ls 01-bwaMappedMuscle/); do a=`basename $i | cut -d"_" -f1`; samtools view -@ 12 -bS 01-bwaMappedMuscle/$i > 01-bwaMappedMuscle/$a".unsorted_aligned.bam"; done

#rm 01-bwaMappedMuscle/*.sam

#for i in $(ls 01-bwaMappedMuscle/); do a=`basename $i | cut -d"." -f1`; samtools sort -@ 12 01-bwaMappedMuscle/$i > 01-bwaMappedMuscle/$a"_sorted_aligned.bam"; done

#rm 01-bwaMappedMuscle/*unsorted_aligned.bam

for i in $(ls 01-bwaMappedMuscle/*_sorted_aligned.bam); do a=`basename $i | cut -d"." -f1`; samtools rmdup $i 01-bwaMappedMuscle/$a"_RD.bam"; done

for i in $(ls 01-bwaMappedMuscle/*_sorted_aligned_RD.bam); do a=`basename $i | cut -d"." -f1`; samtools view -@ 12 -b -q 10 $i > 01-bwaMappedMuscle/$a"_uniq.bam"; done

for i in $(ls 01-bwaMappedMuscle/*_sorted_aligned_RD_uniq.bam); do samtools index -@ 12 $i; done

#for i in $(ls 01-bwaMappedMuscle/*uniq.bam); do a=`basename $i | cut -d"." -f1`; samtools idxstats $i | cut -f1 | grep -v "MT" | xargs samtools view --threads 6 -b $i > 01-bwaMappedMuscle/$a"_noMT.bam"; done
