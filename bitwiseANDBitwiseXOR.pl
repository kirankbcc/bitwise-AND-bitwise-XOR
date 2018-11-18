#!/usr/bin/perl

##########################################
# FileName: bitwiseANDBitwiseXOR.pl
# Description: Generate bitwise AND / Bitwise XOR numbers
#
# CreatedBy: Kiran Babu Chinnam on 19-11-2018
# ModifiedBy: Kiran Babu Chinnam on 19-11-2018
##########################################

use strict;
use warnings;

my @A = (1,2,3,4,4,5,6,7,5);
my @B = (2,3,4,5,6,7,8,9,7,1);
my @C;
my @D;

print "\n***result start***\n";

##########################################
# ===Bitwise AND ====
# common element in both array with no duplicates
##########################################

my %bAnd;
$bAnd{$_} = 1 foreach @A;
$bAnd{$_} = $bAnd{$_}?2:1 foreach @B;
push @C,grep { $bAnd{$_} == 2; } sort {$a <=> $b} keys %bAnd;

print "\nBitwise AND:\n"; 
print join "\t",@C,"\n";


##########################################
# ===Bitwise XOR ====
# items owned by the first or the second array but not in common
##########################################

my %bXor;
$bXor{$_} = 1 foreach @A;
$bXor{$_} = $bXor{$_}?2:1 foreach @B;
push @D,grep { $bXor{$_} == 1; } sort {$a <=> $b} keys %bXor;

print "\nBitwise XOR:\n";
print join "\t",@D,"\n";

print "\n\n***result end***\n";
