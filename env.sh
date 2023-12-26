export YUANQI_HOME=`pwd`
alias yq='controller.pl'
export PATH=$YUANQI_HOME/scripts:$PATH
mkdir -p $YUANQI_HOME/apps/riscv
export RISCV=$YUANQI_HOME/apps/riscv
export PATH=$RISCV/bin:$PATH
export RISCV_TESTS_ROOT=$RISCV
# riscv-dv
export RISCV_TOOLCHAIN=$RISCV
export RISCV_GCC=$RISCV_TOOLCHAIN/bin/riscv64-unknown-elf-gcc
export RISCV_OBJCOPY=$RISCV_TOOLCHAIN/bin/riscv32-unknown-elf-objcopy
export SPIKE_PATH=$RISCV/bin/spike