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
  if($cmd eq "hello") {
	  YuanQiService::sayHello();
  } 
  elsif ($cmd eq "cmd") {
    YuanQiService::printCmd();
  } 
  elsif ($cmd eq "ccb") {
    YuanQiService::compileChangbai();
  } 
  elsif ($cmd eq "replace-riscv-gnu-toolchain-git-url") {
    YuanQiService::replaceRiscvGnuToolchainGitUrl();
  }
  else {
    print "default print\n";
  }
} else {
  die "Error! yuanqi command is blank!";
}