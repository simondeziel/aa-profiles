# Author: Simon Deziel <simon@sdeziel.info>

#include <tunables/global>

profile vim /usr/bin/vim.{basic,tiny} {
  #include <abstractions/base>

  /** r,
  owner /** w,

  /usr/bin/vim             mr,

  # for archives
  /usr/bin/bzcat mixr,
  /usr/bin/bzip2 mixr,
  /usr/bin/file  mixr,
  /usr/bin/gzip  mixr,
  /usr/bin/lzcat mixr,
  /usr/bin/lzip  mixr,
  /usr/bin/lzma  mixr,
  /usr/bin/lzop  mixr,
  /usr/bin/tar   mixr,
  /usr/bin/xzcat mixr,
  /usr/bin/xz    mixr,
  /usr/bin/zcat  mixr,
  /usr/bin/zstd  mixr,

  # for executing shell commands from the editor
  /usr/bin/bash Px -> vim//bash,

  profile bash {
    #include <abstractions/base>
    #include <abstractions/user-tmp>
    /usr/bin/bash mr,

    /dev/tty rw,
    owner /dev/pts/[0-9]* rw,

    # for archives
    /usr/bin/bzcat Px -> vim,
    /usr/bin/bzip2 Px -> vim,
    /usr/bin/file  Px -> vim,
    /usr/bin/gzip  Px -> vim,
    /usr/bin/lzcat Px -> vim,
    /usr/bin/lzip  Px -> vim,
    /usr/bin/lzma  Px -> vim,
    /usr/bin/lzop  Px -> vim,
    /usr/bin/tar   Px -> vim,
    /usr/bin/xzcat Px -> vim,
    /usr/bin/xz    Px -> vim,
    /usr/bin/zcat  Px -> vim,
    /usr/bin/zstd  Px -> vim,

    # list of allowed "!" commands
    /usr/bin/sort Px -> vim,
  }

  #include <local/usr.bin.vim>
}

