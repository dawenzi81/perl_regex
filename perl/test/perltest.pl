#!/usr/bin/perl -w
# DNA����ת��ΪmRNA����
# ����DNA����
$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
# ����Ļ����ʾDNA����
print "Here is the starting DNA:\n";
print "$DNA\n\n";
# ��T��U�����滻
$RNA = $DNA;
$RNA =~ s/T/U/g;
# ����Ļ����ʾRNA����
print "Here is the result of transcribing the DNA to mRNA:\n";
print "$RNA\n";
#�˳�����
exit;