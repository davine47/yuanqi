# YuanQi env
## circt compile

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
```