#!/usr/bin/perl

my $root = $ENV{'YUANQI_HOME'};

require "$root/scripts/service.pl";

use strict;
use warnings;
use Getopt::Long;

my $cmd = $ARGV[0];
my ($verbase, $file, $dasm);

GetOptions(
  'verbase' => \$verbase,
  'file'    => \$file,
)or die "Error! Something wrong in command line args!\n";

# Main args parser
if ($cmd) {
	YuanQiService::sayHello();
} else {
  die "Error! yuanqi command is blank!";
}