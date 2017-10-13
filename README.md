Vulture
=======

Vulture - My personal vim configuration files.

Installation
------------

Requirements:

* vim `>= 7.4`

To install, run the following from your terminal: (you may want to backup
your existing `.vimrc` and `.vim` first)

``` shell
$ cd && git clone https://github.com/japinl/vulture.git .vim
$ .vim/install.sh
```

When you add a new vim plugin in `.vim/vimrc`, you can use

```
$ vim +PluginInstall +qall
```

to install the new plugin, or you can just use `PluginInstall` in vim under
command mode to install the new plugin.
