#!/usr/bin/perl -w
use strict;
use autodie;

#die"Usage: perl $0 gff_file\n";
my $gff_file = shift ||  die"Usage: perl $0 <gff_file>\n";
open IN, "$gff_file";
my $num = 0;
while(<IN>){
    my @temp=split /\t/, $_;
    my $type=$temp[2];
    my $start=$temp[3];
    my $end=$temp[4];
    my $srand=$temp[6];
        $num ++ if ($type=~/CDS/);
}
close IN;
print "Number of CDS is :$num\n"
