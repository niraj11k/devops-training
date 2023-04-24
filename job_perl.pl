#!/usr/bin/perl
use strict;
use warnings;
print "Hello, World...\n";
my $area = "/default/main/uobsubsidiaries/WORKAREA/Subsidiaries";
my $countrycode = $area;
my @area = split /\//,$area;
my $branchcode = $area[3];
my @countrycode = split /\//,$countrycode;
my $countrycodenew = $countrycode[5];
if (($branchcode =~ /.*uobcountries.*/ &&  $countrycodenew=~ /.*CTRY.*/) || !($branchcode =~ /.*uobcountries.*/) ){
	print "inside IF $countrycodenew\n";
	print "IF Branch = $branchcode\n";
	print "Do Singapore Deployment\n"
}
else
{
	print "ELSE $countrycodenew\n";
	print "Else Branch = $branchcode\n";
	print "Do Country Deployment\n"
}
if (($branchcode eq "uobcountries" &&  $countrycodenew eq "CTRY" ) || !($branchcode eq "uobcountries" ) ){
	print "second inside IF $countrycodenew\n";
}
