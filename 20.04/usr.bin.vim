# Author: Simon Deziel <simon@sdeziel.info>

#include <tunables/global>

profile vim /usr/bin/vim.{basic,tiny} {
  #include <abstractions/base>

  /** r,
  owner /** w,

  /usr/bin/vim             mr,

  # for executing shell commands from the editor
  /usr/bin/bash Px -> vim//bash,

  profile bash {
    #include <abstractions/base>
    #include <abstractions/user-tmp>
    /usr/bin/bash mr,

    /dev/tty rw,
    owner /dev/pts/[0-9]* rw,

    # list of allowed "!" commands
    /usr/bin/sort Px -> vim,
  }

  #include <local/usr.bin.vim>
}

