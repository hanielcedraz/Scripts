mkdir 02-callpeaks_broad_liver
mkdir 02-callpeaks_narrow_liver


#narrowpeaks
macs3 callpeak -t 01-BWA_mappedLiver/do14589_H3K27ac_liver_ab4729_susScr2Sus_scrofaPig5_sorted_aligned_RD_uniq.bam -c 01-BWA_mappedLiver/do14604_Input_liver_unk_susScr2Sus_scrofaPig5_sorted_aligned_RD_uniq.bam -f BAM -g hs -n 02-callpeaks_narrow_liver/H3K27ac_liverSus_scrofaPig5 -B -q 0.05

macs3 callpeak -t 01-BWA_mappedLiver/do16025_Input_liver_unk_susScr2Sus_scrofaPig6_sorted_aligned_RD_uniq.bam -c 01-BWA_mappedLiver/do16070_H3K27ac_liver_ab4729_susScr2Sus_scrofaPig6_sorted_aligned_RD_uniq.bam -f BAM -g hs -n 02-callpeaks_narrow_liver/H3K27ac_liverSus_scrofaPig6 -B -q 0.05

macs3 callpeak -t 01-BWA_mappedLiver/do17018_Input_liver_unk_susScr2Sus_scrofaPig4_sorted_aligned_RD_uniq.bam -c 01-BWA_mappedLiver/do17070_H3K27ac_liver_ab4729_susScr2Sus_scrofaPig4_sorted_aligned_RD_uniq.bam -f BAM -g hs -n 02-callpeaks_narrow_liver/H3K27ac_liverSus_scrofaPig4 -B -q 0.05


#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#broadpeaks
macs3 callpeak -t 001-BWA_mappedLiver/do14589_H3K27ac_liver_ab4729_susScr2Sus_scrofaPig5_sorted_aligned_RD_uniq.bam -c 01-BWA_mappedLiver/do14604_Input_liver_unk_susScr2Sus_scrofaPig5_sorted_aligned_RD_uniq.bam -f BAM --broad -g hs --broad-cutoff 0.05 -n 02-callpeaks_broad_liver/H3K27ac_liverSus_scrofaPig5

macs3 callpeak -t 01-BWA_mappedLiver/do16025_Input_liver_unk_susScr2Sus_scrofaPig6_sorted_aligned_RD_uniq.bam -c 01-BWA_mappedLiver/do16070_H3K27ac_liver_ab4729_susScr2Sus_scrofaPig6_sorted_aligned_RD_uniq.bam -f BAM --broad -g hs --broad-cutoff 0.05 -n 02-callpeaks_broad_liver/H3K27ac_liverSus_scrofaPig6

macs3 callpeak -t 01-BWA_mappedLiver/do17018_Input_liver_unk_susScr2Sus_scrofaPig4_sorted_aligned_RD_uniq.bam -c 01-BWA_mappedLiver/do17070_H3K27ac_liver_ab4729_susScr2Sus_scrofaPig4_sorted_aligned_RD_uniq.bam -f BAM --broad -g hs --broad-cutoff 0.05 -n 02-callpeaks_broad_liver/H3K27ac_liverSus_scrofaPig4
