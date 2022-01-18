for i in $(ls 01-bwaMappedBrain/); do a=`basename $i | cut -d"_" -f1`; samtools view -@ 12 -bS 01-bwaMappedBrain/$i > 01-bwaMappedBrain/$a".unsorted_aligned.bam"; done

rm 01-bwaMappedBrain/*.sam

for i in $(ls 01-bwaMappedBrain/); do a=`basename $i | cut -d"." -f1`; samtools sort -@ 12 01-bwaMappedBrain/$i > 01-bwaMappedBrain/$a"_sorted_aligned.bam"; done

rm 01-bwaMappedBrain/*unsorted_aligned.bam

for i in $(ls 01-bwaMappedBrain/*_sorted_aligned.bam); do a=`basename $i | cut -d"." -f1`; samtools rmdup $i 01-bwaMappedBrain/$a"_RD.bam"; done

for i in $(ls 01-bwaMappedBrain/*_sorted_aligned_RD.bam); do a=`basename $i | cut -d"." -f1`; samtools view -@ 12 -b -q 10 $i > 01-bwaMappedBrain/$a"_uniq.bam"; done

for i in $(ls 01-bwaMappedBrain/*_sorted_aligned_RD_uniq.bam); do samtools index -@ 12 $i; done

#for i in $(ls 01-bwaMappedBrain/*uniq.bam); do a=`basename $i | cut -d"." -f1`; samtools idxstats $i | cut -f1 | grep -v "MT" | xargs samtools view --threads 6 -b $i > 01-bwaMappedBrain/$a"_noMT.bam"; done
