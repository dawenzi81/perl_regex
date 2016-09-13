#!/usr/bin/perl -w
#正则表达式测试
$str = "I love Perl";
# 表示如果在 $str 中发现 "Perl" 字符串，则返回 "1" 否则返回 "0"。
if($str =~ m/Perl/)
{
 	print "$str 中包含了字符串\"Perl\"\n"
}
##
$str = "I love Perl";
$oldstr = $str;
 # 表示将变量 $str 中的 "Perl" 字符串替换为 "BASH"，如果发生此替换则返回 "1"，否则返回 "0"。
if($str =~ s/Perl/BASH/)
{
	print "$oldstr 替换为：$str\n"
}
##
$str = "I love Perl";
$oldstr = $str;
# 表示将变量 $str 中的所有大写字母转化为小写字母，如果转化发生了则返回 "0"，否则返回 "1"。
if($str !~ tr/A-Z/a-z/)
{
	print "$oldstr  没有转换大小写\n"
}else
{
	print "$oldstr  大小写转换：$str\n"
}

=pod
Perl 的正则表达式中如果出现 () ，则发生匹配或替换后 () 内的模式被 Perl 解释器自动依次赋给系统 $1, $2
替换操作 s/<pattern>;/<replacement>;/ 还可以在末尾加上 e 或 g 参数，他们的含义分别为：
/g 表示把待处理字符串中所有符合 <pattern>; 的模式全部替换为 <replacement>; 字符串，而不是只替换第一个出现的模式。
/e 表示将把 <replacemnet>; 部分当作一个运算符，这个参数用的不多。
...... 请看下面的例子：
=cut

$str = "I love Perl";
$oldstr = $str;
if($str =~ s/(love)/<$1>;/)# 此时 $1 = "love"，并且该替换的结果是将 $string 变为 "I <love>; perl"
{
	print "$oldstr  替换(赋值)：$str\n"
}

$str = "i love perl";
$oldstr = $str;
if($str =~ s/(i)(.*)(perl)/<$3>;$2<$1>;/) # 此时 $1 = "love"，并且该替换的结果是将 $string 变为 "I <love>; perl"
{
	print "$oldstr  替换（赋值测试2）：$str\n"
}

$str = "I love Perl";
$oldstr = $str;
if($str =~ s/ /*/g) # 此时 $1 = "love"，并且该替换的结果是将 $string 变为 "I <love>; perl"
{
	print "$oldstr  替换(全部替换)：$str\n"
}