#narrowpeaks
macs3 callpeak -t 01-BWA_mappedBrain/do14489_H3K27ac_brain_ab4729_susScr2Sus_scrofaPig5_sorted_aligned_RD_uniq.bam -c 01-BWA_mappedBrain/do14530_Input_brain_unk_susScr2Sus_scrofaPig5_sorted_aligned_RD_uniq.bam -f BAM -g hs -n 02-callpeaks_narrow_brain/H3K27ac_brainSus_scrofaPig5 -B -q 0.05

macs3 callpeak -t 01-BWA_mappedBrain/do15534_H3K27ac_brain_ab4729_susScr2Sus_scrofaPig6_sorted_aligned_RD_uniq.bam -c 01-BWA_mappedBrain/do15547_Input_brain_unk_susScr2Sus_scrofaPig6_sorted_aligned_RD_uniq.bam -f BAM -g hs -n 02-callpeaks_narrow_brain/H3K27ac_brainSus_scrofaPig6 -B -q 0.05

macs3 callpeak -t 01-BWA_mappedBrain/do15987_H3K27ac_brain_ab4729_susScr2Sus_scrofaPig4_sorted_aligned_RD_uniq.bam -c 01-BWA_mappedBrain/do16035_Input_brain_unk_susScr2Sus_scrofaPig4_sorted_aligned_RD_uniq.bam -f BAM -g hs -n 02-callpeaks_narrow_brain/H3K27ac_brainSus_scrofaPig4 -B -q 0.05


#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#broadpeaks
macs3 callpeak -t 01-BWA_mappedBrain/do14489_H3K27ac_brain_ab4729_susScr2Sus_scrofaPig5_sorted_aligned_RD_uniq.bam -c 01-BWA_mappedBrain/do14530_Input_brain_unk_susScr2Sus_scrofaPig5_sorted_aligned_RD_uniq.bam -f BAM --broad -g hs --broad-cutoff 0.05 -n 02-callpeaks_broad_brain/H3K27ac_brainSus_scrofaPig5

macs3 callpeak -t 01-BWA_mappedBrain/do15534_H3K27ac_brain_ab4729_susScr2Sus_scrofaPig6_sorted_aligned_RD_uniq.bam -c 01-BWA_mappedBrain/do15547_Input_brain_unk_susScr2Sus_scrofaPig6_sorted_aligned_RD_uniq.bam -f BAM --broad -g hs --broad-cutoff 0.05 -n 02-callpeaks_broad_brain/H3K27ac_brainSus_scrofaPig6

macs3 callpeak -t 01-BWA_mappedBrain/do15987_H3K27ac_brain_ab4729_susScr2Sus_scrofaPig4_sorted_aligned_RD_uniq.bam -c 01-BWA_mappedBrain/do16035_Input_brain_unk_susScr2Sus_scrofaPig4_sorted_aligned_RD_uniq.bam -f BAM --broad -g hs --broad-cutoff 0.05 -n 02-callpeaks_broad_brain/H3K27ac_brainSus_scrofaPig4
