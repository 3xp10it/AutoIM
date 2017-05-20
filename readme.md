# vim中英文输入法自动切换完美方案

### 0x00 About

```
about:
    解决vim下的中英文输入法切换的问题

测试环境:
    系统:macOS sierra(win和linux没有测试,理论上也支持)
    应用:MacVim(同样适用于vim)
    键盘:HHKB PRO BT(同样适用于普通键盘)

```

### 0x01 Detail

```

使用squirrel输入法(笔者使用输入法轨迹:squirrel->百度五笔->squirrel)
    在squirrel的配置文件(~/Library/Rime/default.custom.yaml)中设置一个按键绑定为按了esc后使用英文输入:
    {accept: Escape, toggle: ascii_mode, when: always}

tip:例如笔者的~/Library/Rime/default.custom.yaml文件内容如下设置:

    patch:
      schema_list:
        - schema: wubi_pinyin
      ascii_composer:
        good_old_caps_lock: true
        switch_key:
          Shift_L: commit_code
      key_binder:
        bindings:
          - {accept: Escape, toggle: ascii_mode, when: always}
```

### 0x02 Tips

```
--->建议将control键设置为按一下为esc,按住为control<---

hint:这样设置的好处太多,macOS下设置方法为使用keyboard maestro设置,如果不会可参考
http://3xp10it.cc/web/2017/05/20/HHKB-BT键盘设置/

windows及linux下由于没有keyboard maestro软件所以需要找到替代的可以设置按键设置的工具

按照建议设置后效果:
1.在insert模式下按一下control键可直接从insert模式转成normal模式,此外还会自动将输入法转成squirrel
的英文输入模式
2.control的组合键不受影响
3.这里的建议也可不参考,不影响自动切换中英文输入法的效果
```

### 0x03 懒人通道

```
方法1:
wget https://raw.githubusercontent.com/3xp10it/mytools/master/autoSquirrel.py | python3

方法2:
在~/.vimrc中加入:
Plugin '3xp10it/AutoIM'
并在vim中:BundleInstall安装即可

hint:这里懒人通道里的2种方法都没有设置control为按一下为esc,按住为control,这个设置需要手动设置,虽然这样设置
control不是必须的,但强烈建议这样设置control
```
