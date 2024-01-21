# vim:syntax=apparmor

abi <abi/3.0>,

include <tunables/global>

profile jq /usr/bin/jq {
  include <abstractions/base>

  /** r,

  # Site-specific additions and overrides. See local/README for details.
  include if exists <local/usr.bin.jq>
}
