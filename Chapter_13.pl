#!/usr/bin/perl

use strict;
use feature qw/state say/;

my @all_file = glob "*";
say "@all_file";

my @all_pm_file = glob "*.pm";
say "@all_pm_file";

chdir "/etc";
my @all_file = glob "*";
say "@all_file";

my $name = "fred";
my @lines = readline $name;
say "@lines";

opendir DIRNAME, "~";
foreach my $file (readdir DIRNAME) {
	say $file; 
}

#unlink ɾ���ļ�
unlink glob "*.o";
my $success = unlink "slate", "bedrock", "lava";
say "i deleted $success file(s) just now";

#rename �൱��mv
rename "over_there/some/plsome_file", "some_file";

foreach my $file (glob "*.old") {
	my $newfile = $file;
	$newfile =~ s/\.old$/.new/;
	if (-e $newfile) {
		warn "cant rename $file to $newfile exist";
	}elsif (rename $file, $newfile) {
		
	}
}

#link �൱��ln
link "chicken", "egg"
	or warn "cant link";

#symlink ������
symlink "dodgson", "carroll";

#readlink ȡ�÷�������ָ���λ��
my $were = readlink "carroll";
my $where = readlink "/usr/bin/perl";
say $where;

#mkdir ����Ŀ¼
mkdir "fred", 0755 or warn "cannot make fred directory:$!";

#oct���� ���ַ�������8������ʹ��
my $name = "test2";
mkdir $name, oct "0777";

#rmdir ɾ����Ŀ¼

#$$��ʾ��ǰ���̺�
say $$;

#chmod �޸�Ȩ��
chmod 0755, "fred", "barney";

#chown ����������ϵ
my $user = 1004;
my $group = 100;
chown $user, $group, glob "*.o";

#getpwnam ȡ���û�����Ӧ�ı��  getgrnam ȡ��������Ӧ�ı��

#utime ����ʱ���

my $now = time;
my $ago = $now + 24 * 60 * 60;
utime $now, $ago, glob "*";







