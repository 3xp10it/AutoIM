### 0x00 About

```
a)关于vim中中英文自动切换方案,实现:
1.正常模式时自动切换成英文
2.输入模式中自动切换成上一次输入模式中的输入方式
3.输入模式中使用shift切换中文输入方式

b)测试环境
macOS sierra
vim8
```

### 0x01 Detail

```
1.安装百度五笔输入法,在系统中设置只使用系统自带的英文输入法和百度五笔两种输入法,如下图
```
<img src="https://raw.githubusercontent.com/3xp10it/pic/master/inputMethod.png">

```
2.设置百度五笔输入法中使用shift作为中英切换键,如下图
```
<img src="https://raw.githubusercontent.com/3xp10it/pic/master/baiduWuBi.png">

```
3.安装AutoIM插件
    在~/.vimrc中加入Plugin '3xp10it/AutoIM'
    vim
    :BundleInstall

4.在~/.vimrc文件中添加:
    let g:AutoIM_enim_id="com.apple.keylayout.ABC"
    let g:AutoIM_zhim_id='com.baidu.inputmethod.BaiduIM.wubi'
    其中上面两个id分别是英文输入法和百度五笔输入法,如果安装的是其他输入法,需自行设置,查看输入法方法为:
    安装3xp10it/AutoIM插件后退出vim并在终端运行issw -l
    或者手动安装https://github.com/vovkasm/input-source-switcher后运行issw -l
```

### 0x02 Result

```
实现效果如下:
1.从插入模式进入正常模式后自动切换成macOS自带的英文输入法
2.从正常模式进入插入模式后自动切换成安装的百度五笔输入法
3.在百度五笔输入法中有两种输入方式,一种是输入中文,一种是输入英文,通过shift键可切换
3.切换到百度五笔输入法后会默认使用上次百度五笔输入法的最终输入方式(英文或中文)(这是百度五笔输入法自带的功能)
```

### 0x03 Attention

```
1.如果出现不灵情况,按系统切换输入法快捷键(如command+space)重新切换到百度五笔输入法即可
2.从输入模式到正常模式(esc)后不要按键过快,大概要等0.5s,看到屏幕闪一下代表完成输入法自动完成切换
3.如果有时候在百度五笔输入法中按shift无法使用英文输入方式,则要在百度五笔输入法设置中重新设置shift为中英切换键
```
