#!/usr/bin/perl
# **
$a = 10;
$b = 20;
$c = $a ** $b;
print "$c \n";

# <=>  ���������������ֵ�Ƿ����, �����ߵ���С���ұߵ������� -1�������ȷ��� 0, �����ߵ��������ұߵ������� 1 ��
$c = $a <=> $b;
print "$c \n";

# and ==== &&
# or ==== ||
# not ====== !
$a = true;
$b = false;
$c = $a and $b;
print "$c\n";
$c = $a or $b;
print "$c\n";
$c = not($a);
print "$c\n";

#��������
#q{} Ϊ�ַ�����ӵ�����
$a = 10;
$b = q{$a};
print "$b\n";
#qq{} Ϊ�ַ������˫����
$b = qq{$a};
print "$b\n";
#qx{} Ϊ�ַ�����ӷ�����
$t = qx{date};
print "$t\n";

#. �������������ַ���
$a = "run";
$b = "oob";
$c = $a . $b;
print "$c\n ";
$c = "-" x 3;
print "$c\n";
@c = (2..5);
print "@c\n";
# -> ��ͷ����ָ��һ����ķ��� $obj->$a


