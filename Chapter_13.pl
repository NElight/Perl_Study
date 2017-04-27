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

#unlink 删除文件
unlink glob "*.o";
my $success = unlink "slate", "bedrock", "lava";
say "i deleted $success file(s) just now";

#rename 相当于mv
rename "over_there/some/plsome_file", "some_file";

foreach my $file (glob "*.old") {
	my $newfile = $file;
	$newfile =~ s/\.old$/.new/;
	if (-e $newfile) {
		warn "cant rename $file to $newfile exist";
	}elsif (rename $file, $newfile) {
		
	}
}

#link 相当于ln
link "chicken", "egg"
	or warn "cant link";

#symlink 软连接
symlink "dodgson", "carroll";

#readlink 取得符号链接指向的位置
my $were = readlink "carroll";
my $where = readlink "/usr/bin/perl";
say $where;

#mkdir 创建目录
mkdir "fred", 0755 or warn "cannot make fred directory:$!";

#oct函数 将字符串当成8进制来使用
my $name = "test2";
mkdir $name, oct "0777";

#rmdir 删除空目录

#$$表示当前进程号
say $$;

#chmod 修改权限
chmod 0755, "fred", "barney";

#chown 更改隶属关系
my $user = 1004;
my $group = 100;
chown $user, $group, glob "*.o";

#getpwnam 取得用户名对应的编号  getgrnam 取得祖名对应的编号

#utime 更改时间戳

my $now = time;
my $ago = $now + 24 * 60 * 60;
utime $now, $ago, glob "*";







