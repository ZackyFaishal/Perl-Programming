#!/usr/bin/perl -w
use strict;
my $valid;

do{
print "Input Domain : ";
my $domain = <>;
chomp $domain;

 if($domain =~ m/\.com|\.id|\.net$/ and $domain =~ m/^www\./){
    print "Domain is valid\n";
    $valid = 1;
 }else{
    print "Domain is invalid \n";
    $valid = 0;
 }
}while $valid == 0;