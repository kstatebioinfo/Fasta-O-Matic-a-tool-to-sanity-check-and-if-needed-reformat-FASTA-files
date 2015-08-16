#!/usr/bin/bash

# Reference from the NW_005882702.1 Vicugna pacos isolate Carlotta (AHFN-0088) Vicugna_pacos-2.0.1 whole genome shotgun sequence

echo "Wrap only Fasta-O-Matic execution:"
/usr/bin/time -v python ~/read-cleaning-format-conversion/KSU_bioinfo_lab/fasta-o-matic/fasta_o_matic.py -f ~/test_fasta_o_matic/input/GCF_000164845.1_Vicugna_pacos-2.0.1_genomic_FAKE.fna -o ~/test_fasta_o_matic/out -c -s wrap -q

echo "New line only Fasta-O-Matic execution:"
/usr/bin/time -v python ~/read-cleaning-format-conversion/KSU_bioinfo_lab/fasta-o-matic/fasta_o_matic.py -f ~/test_fasta_o_matic/input/GCF_000164845.1_Vicugna_pacos-2.0.1_genomic_FAKE.fna -o ~/test_fasta_o_matic/out -c -s new_line -q

echo "Header whitespace only Fasta-O-Matic execution:"
/usr/bin/time -v python ~/read-cleaning-format-conversion/KSU_bioinfo_lab/fasta-o-matic/fasta_o_matic.py -f ~/test_fasta_o_matic/input/GCF_000164845.1_Vicugna_pacos-2.0.1_genomic_FAKE.fna -o ~/test_fasta_o_matic/out -c -s header_whitespace -q

echo "Unique only Fasta-O-Matic execution:"
/usr/bin/time -v python ~/read-cleaning-format-conversion/KSU_bioinfo_lab/fasta-o-matic/fasta_o_matic.py -f ~/test_fasta_o_matic/input/GCF_000164845.1_Vicugna_pacos-2.0.1_genomic_FAKE.fna -o ~/test_fasta_o_matic/out -c -s unique -q

echo "All steps Fasta-O-Matic execution:"
/usr/bin/time -v python ~/read-cleaning-format-conversion/KSU_bioinfo_lab/fasta-o-matic/fasta_o_matic.py -f ~/test_fasta_o_matic/input/GCF_000164845.1_Vicugna_pacos-2.0.1_genomic_FAKE.fna -o ~/test_fasta_o_matic/out1 -c  -s unique wrap new_line header_whitespace -q

echo "Wrap only setk execution:"
/usr/bin/time -v /home/bionano/seqtk/seqtk seq -l 60 /home/bionano/test_fasta_o_matic/input/GCF_000164845.1_Vicugna_pacos-2.0.1_genomic_FAKE.fna > /home/bionano/test_fasta_o_matic/out2/GCF_000164845.1_Vicugna_pacos-2.0.1_genomic_FAKE_seqtk_wrap.fna

echo "Wrap only seqret execution:"
/usr/bin/time -v /home/bionano/EMBOSS-6.5.7/emboss/seqret -sequence ~/test_fasta_o_matic/input/GCF_000164845.1_Vicugna_pacos-2.0.1_genomic_FAKE.fna -outseq /home/bionano/test_fasta_o_matic/out3/GCF_000164845.1_Vicugna_pacos-2.0.1_genomic_FAKE_seqret.fna

