#!/usr/bin/perl

package YuanQiService;

my $root = $ENV{'YUANQI_HOME'};

sub sayHello {
	print "Hello yuanqi env\n";
};

sub compileChangbai {
	my $res = system("cd $root/changbai && make changbai");
}

sub printCmd {
	print "yq hello"
	print "yq ccb"
	print "yq init_circt"
}
1;
