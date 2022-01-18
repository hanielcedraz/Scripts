#samtools mpileup --positions positions.txt  -uf gatk_analysis/referenceGenome.fa 01-BWA_mappedBrain/do14530_Input_brain_unk_susScr2Sus_scrofaPig5_sorted_aligned_RD_uniq.bam | bcftools-1.12/bcftools call -mv > var.raw.vcf
#bcftools-1.12/bcftools filter -s LowQual -e '%QUAL<20 || DP>100' var.raw.vcf  > var.flt.vcf



for i in $(ls 01-BWA_mappedMuscle/*.bam); do a=`basename $i | cut -d"_" -f1,2,3`; samtools mpileup -uf gatk_analysis/referenceGenome.fa $i | bcftools-1.12/bcftools call -mv > resultsVFC/$a"_var.raw.vcf"; done
