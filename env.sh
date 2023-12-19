export YUANQI_HOME=`pwd`
alias yq='controller.pl'
export PATH=$YUANQI_HOME/scripts:$PATH
mkdir -p $YUANQI_HOME/apps/riscv
export RISCV=$YUANQI_HOME/apps/riscv
export PATH=$RISCV/bin:$PATH
export RISCV_TESTS_ROOT=$YUANQI_HOME/apps/riscv/