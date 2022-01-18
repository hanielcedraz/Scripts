for i in $(ls liver/); do bwa mem -t 12 /localData/fasta_gtf/pig/v11.1/Sus_scrofa.Sscrofa11.1.dna.toplevel.fa  liver/$i > 01-BWA_mappedLiver/$i"_unsorted_aligned.sam"; done
for i in $(ls brain/); do bwa mem -t 12 /localData/fasta_gtf/pig/v11.1/Sus_scrofa.Sscrofa11.1.dna.toplevel.fa  brain/$i > 01-BWA_mappedBrain/$i"_unsorted_aligned.sam"; done
for i in $(ls muscle/); do bwa mem -t 12 /localData/fasta_gtf/pig/v11.1/Sus_scrofa.Sscrofa11.1.dna.toplevel.fa  muscle/$i > 01-BWA_mappedMuscle/$i"_unsorted_aligned.sam"; done
for i in $(ls testis/); do bwa mem -t 12 /localData/fasta_gtf/pig/v11.1/Sus_scrofa.Sscrofa11.1.dna.toplevel.fa  testis/$i > 01-BWA_mappedTestis/$i"_unsorted_aligned.sam"; done
