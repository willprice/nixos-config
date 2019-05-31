* Download [NixOS ISO](https://nixos.org/nixos/download.html)
* Write the ISO to a USB drive using `dd`
* Boot machine from ISO
  * If you're using vbox, then boot with `nomodeset` as otherwise the boot hangs.
* Install git: `nix-env -i git`
* Clone configuration: `git clone https://github.com/willprice/nixos-config.git`
* Follow the [installation guide](https://nixos.org/nixos/manual/index.html#sec-installation) up to `nixos-generate-config`
  * Copy nixos configuration files to `/mnt`: `cp nixos-config/* /mnt/etc/nixos`
  * Generate hardware config: `nixos-generate-config`
  * Install system: `nixos-install` (set root password)
