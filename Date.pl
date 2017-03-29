#！/usr/bin/perl

use PadWalker qw(peek_my peek_our peek_sub closed_over);


$a = localtime();
print "$a \n";

$b = gmtime();
print "$b \n";

$c = time();
print "$c \n";

($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime();
printf ("%02d:%02d:%02d \n", $hour, $min, $sec);

use POSIX qw(strftime);

$datestring = strftime "%Y- %m - %d %H:%M:%S", localtime;
printf ("$datestring \n");
$datestring = strftime("%Y - %m - %d %H:%M:%S", gmtime);
printf ("$datestring \n");
