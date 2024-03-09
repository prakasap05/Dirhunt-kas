#!usr/bin/perl5

use if $^O eq "MSWin32", Win32::Console::ANSI;
@months = qw( Januari Februari Maret April Mei Juni Juli Agustus September Oktober November Desmber );
@days = qw(Minggu Senin Selasa Rabu Kamis Jumat Sabtu Minggu);
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

sub prakasap05 {
if ($^O =~ /MSWin32/) {system("mode con: cols=100 lines=29");system("cls"); }else { system("resize -s 28 87");system("clear"); }
print "-------------------------------------\nAuthor: prakasap05 | Directory Hunter\n-------------------------------------\n[•] $hour:$min:$sec $days[$wday],$mday-$months[$mon]-$year\n\n";
}
prakasap05();
print "1.Install Dirhunt\n2.Run Dirhunt\n\n[•] Enter your choice: ";
chomp($akas=<STDIN>);
if($akas eq '1'){
prakasap05();
print "[-] Currently installing Directory Hunter\n";
system('pip install dirhunt');
}if($akas eq '2'){
prakasap05();
print "[•] Type in your target web url: ";
$webkas=<STDIN>;
print "[-] Your taret web: $webkas";
system('dirhunt', $webkas);
}
