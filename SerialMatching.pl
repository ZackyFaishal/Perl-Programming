#!/usr/bin/perl -w
use strict;

my $serial;
my $valid;
do{
    print "Input Serial : ";
    $serial = <>;
    chomp $serial;

        if ($serial =~ m/^(\d{2})(\-)(\w{5})(\-)(\w{6}$)/){
            print "serial is valid\n";
            $valid =1;
        }
        else{
        print "serial is invalid, try again\n";
        $valid = 0;
        }
}while $valid == 0;