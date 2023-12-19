# YuanQi(元气) env
Setup YuanQi env
```shell
source env.sh
```
## riscv-tests
* 遇到stdint.h等标准库没find到，是riscv-gnu-toolchain的构建出错未完全完成，查看riscv64-unknown-elf文件夹中是否有include文件夹


## riscv-isa-sim
```shell
cd ./riscv-isa-sim
../configure --prefix=$RISCV 
make -j
```

## riscv-opcodes
```shell
# python prerequisites
pip3 install PyYAML

# generate a instr_dict.yaml
make

# make different language target encoding list
make inst.chisel
make inst.go 
make latex
make inst.sverilog
make inst.rs
```

## riscv-gcc-toolchain
```shell
# 替换仓库源
cd ./riscv-gcc-toolchain
git checkout <commit-id-you-want-to-build-with>
# gcc
sed -i'' -e "s|https://gcc.gnu.org/git/gcc.git|https://mirrors.tuna.tsinghua.edu.cn/git/gcc.git|g" ./.gitmodules
# glibc
sed -i'' -e "s|https://sourceware.org/git/glibc.git|https://mirrors.tuna.tsinghua.edu.cn/git/glibc.git|g" ./.gitmodules
# binutils-gdb
sed -i'' -e "s|https://sourceware.org/git/binutils-gdb.git|https://mirrors.tuna.tsinghua.edu.cn/git/binutils-gdb.git|g" ./.gitmodules
# qemu
sed -i'' -e "s|https://gitlab.com/qemu-project/qemu.git|https://mirrors.tuna.tsinghua.edu.cn/git/qemu.git|g" ./.gitmodules
# llvm
sed -i'' -e "s|https://github.com/llvm/llvm-project.git|https://mirrors.tuna.tsinghua.edu.cn/git/llvm-project.git|g" ./.gitmodules

# init git submodule
git submodule update --init

# ubuntu prerequisites
sudo apt-get install autoconf automake autotools-dev curl python3 python3-pip libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev ninja-build git cmake libglib2.0-dev

# linux prerequisites
sudo pacman -Syyu autoconf automake curl python3 libmpc mpfr gmp gawk base-devel bison flex texinfo gperf libtool patchutils bc zlib expat

# Fedora/CentOS/RHEL OS prerequisites
sudo yum install autoconf automake python3 libmpc-devel mpfr-devel gmp-devel gawk  bison flex texinfo patchutils gcc gcc-c++ zlib-devel expat-devel

# mac os prerequisites
brew install python3 gawk gnu-sed gmp mpfr libmpc isl zlib expat texinfo flock

# compile
mkdir -p ./riscv-gcc-toolchain/build 
../configure --prefix=$RISCV --enable-multilib --with-arch=rv64gcv_zifencei_zicsr
make -j

```
Errors
* 不能 make -j8，多核情况下会报错，但其他并行编译会打印一些正确的信息把错误覆盖掉
* configure: error: source directory already configured; run "make distclean" there first
```shell
# 删除gcc的安装目录
rm -rf $RISCV 
# 删除build文件夹
rm -rf build 
# 查看gcc、newlib、等仓库的改变情况，使用git
git status
# 使用make清除命令
make distclean
```
- [] TODO: gdb的构建会报错: configure: error: GMP is missing or unusable

## circt
```shell
# 替换仓库源
cd ./circt
git checkout <commit-id-you-want-to-build-with>
sed -i'' -e "s|https://github.com/llvm/llvm-project.git|https://mirrors.tuna.tsinghua.edu.cn/git/llvm-project.git|g" ./.gitmodules
git submodule update --init

# Explanation of sed -i''
# https://stackoverflow.com/a/4247319/13433323
```

## Tools
### git
```shell
# 查看远程仓库地址信息
git remote -v
# 添加子模块仓库
git submodule add <git-url>
```









