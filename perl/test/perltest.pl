#!/usr/bin/perl -w
#������ʽ����
$str = "I love Perl";
# ��ʾ����� $str �з��� "Perl" �ַ������򷵻� "1" ���򷵻� "0"��
if($str =~ m/Perl/)
{
 	print "$str �а������ַ���\"Perl\"\n"
}
##
$str = "I love Perl";
$oldstr = $str;
 # ��ʾ������ $str �е� "Perl" �ַ����滻Ϊ "BASH"������������滻�򷵻� "1"�����򷵻� "0"��
if($str =~ s/Perl/BASH/)
{
	print "$oldstr �滻Ϊ��$str\n"
}
##
$str = "I love Perl";
$oldstr = $str;
# ��ʾ������ $str �е����д�д��ĸת��ΪСд��ĸ�����ת���������򷵻� "0"�����򷵻� "1"��
if($str !~ tr/A-Z/a-z/)
{
	print "$oldstr  û��ת����Сд\n"
}else
{
	print "$oldstr  ��Сдת����$str\n"
}

=pod
Perl ��������ʽ��������� () ������ƥ����滻�� () �ڵ�ģʽ�� Perl �������Զ����θ���ϵͳ $1, $2
�滻���� s/<pattern>;/<replacement>;/ ��������ĩβ���� e �� g ���������ǵĺ���ֱ�Ϊ��
/g ��ʾ�Ѵ������ַ��������з��� <pattern>; ��ģʽȫ���滻Ϊ <replacement>; �ַ�����������ֻ�滻��һ�����ֵ�ģʽ��
/e ��ʾ���� <replacemnet>; ���ֵ���һ�����������������õĲ��ࡣ
...... �뿴��������ӣ�
=cut

$str = "I love Perl";
$oldstr = $str;
if($str =~ s/(love)/<$1>;/)# ��ʱ $1 = "love"�����Ҹ��滻�Ľ���ǽ� $string ��Ϊ "I <love>; perl"
{
	print "$oldstr  �滻(��ֵ)��$str\n"
}

$str = "i love perl";
$oldstr = $str;
if($str =~ s/(i)(.*)(perl)/<$3>;$2<$1>;/) # ��ʱ $1 = "love"�����Ҹ��滻�Ľ���ǽ� $string ��Ϊ "I <love>; perl"
{
	print "$oldstr  �滻����ֵ����2����$str\n"
}

$str = "I love Perl";
$oldstr = $str;
if($str =~ s/ /*/g) # ��ʱ $1 = "love"�����Ҹ��滻�Ľ���ǽ� $string ��Ϊ "I <love>; perl"
{
	print "$oldstr  �滻(ȫ���滻)��$str\n"
}