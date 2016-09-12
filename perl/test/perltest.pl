#!/usr/bin/perl -w
# DNA序列转换为mRNA序列
# 给定DNA序列
$DNA = 'ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
# 在屏幕上显示DNA序列
print "Here is the starting DNA:\n";
print "$DNA\n\n";
# 以T→U进行替换
$RNA = $DNA;
$RNA =~ s/T/U/g;
# 在屏幕上显示RNA序列
print "Here is the result of transcribing the DNA to mRNA:\n";
print "$RNA\n";
#退出程序
exit;