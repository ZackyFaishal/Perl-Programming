#!/usr/bin/perl -w
use strict;

   print "Masukan Password :";
   my $pw = <STDIN>;
   chomp ($pw);

   print "Your password must not whitespace\n"
   if ($pw =~ m/\s/);

   print "Your password minimum 10 character\n"
   if (length($pw)<10);
   
  print "Your password minimum 1 uppercase letter\n"
   if (!($pw =~ m/[A-Z]/));


   print "Your password minimum 1 lowercase letter\n"
   if (!($pw =~ m/[a-z]/));

   print "Your password minimum 1 symbolic letter\n"
   if (!($pw =~ m/[^A-Za-z0-9]/));

   print "Your password minimum 1 numeric\n"
   if (!($pw =~/\d/));

   print "Your Password is Valid"
  if  (!($pw =~ m/\s/))&&(length($pw)>=10)&&($pw =~ m/[A-Z]/)&&($pw =~ m/[a-z]/)&&($pw =~ m/[^A-Za-z0-9]/)&&($pw =~/\d/);