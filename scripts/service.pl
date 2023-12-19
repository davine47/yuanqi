#!/usr/bin/perl

package YuanQiService;

my $root = $ENV{'YUANQI_HOME'};

sub sayHello {
	print "Hello yuanqi env\n";
};

sub compileChangbai {
	my $res = system("cd $root/targets/changbai && make changbai");
};

sub replaceRiscvGnuToolchainGitUrl {
	my $res = system("cd $root/riscv-gnu-toolchain &&
										sed -i\'\' -e \"s|https://gcc.gnu.org/git/gcc.git|https://mirrors.tuna.tsinghua.edu.cn/git/gcc.git|g\" ./.gitmodules &&
										sed -i\'\' -e \"s|https://sourceware.org/git/glibc.git|https://mirrors.tuna.tsinghua.edu.cn/git/glibc.git|g\" ./.gitmodules &&
										sed -i\'\' -e \"s|https://sourceware.org/git/binutils-gdb.git|https://mirrors.tuna.tsinghua.edu.cn/git/binutils-gdb.git|g\" ./.gitmodules &&
										sed -i\'\' -e \"s|https://gitlab.com/qemu-project/qemu.git|https://mirrors.tuna.tsinghua.edu.cn/git/qemu.git|g\" ./.gitmodules &&
										sed -i\'\' -e \"s|https://github.com/llvm/llvm-project.git|https://mirrors.tuna.tsinghua.edu.cn/git/llvm-project.git|g\" ./.gitmodules"
										);
};

sub printCmd {
	print "yq hello\n";
	print "yq ccb\n";
	print "yq init_circt\n";
	print "yq replace-riscv-gnu-toolchain-git-url\n";
};
1;
