- 可以用下面命令在不同文件 buffer 之间切换

```
:bn. 切换到下一个文件
:bp. 切换到上一个文件
:ls. 打印文件buffer的列表，带编号
:b [N] 切换到第N个文件，例如 :b 3 命令切换到第3个文件。 ...
:b {bufname} 通过文件名切换到bufname 对应的文件，输入文件名时，可以用Tab键补全。
```
- Vim Terminal

1. 如何退出Terminal mode

```vim
<c-\> <c-n>
```

2. 在新tab打开terminal

```
:tab term
```
