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
* Reboot
* Login as root
* Set password for `will`: `passwd will`
* Log out and login as `will` setting `mate+xmonad` as desktop session
* Generate an SSH key for the new machine: `ssh-keygen`
* [Add SSH key to github profile](https://github.com/settings/ssh/new)
* Clone dotfiles: `git clone --recursive git@github.com:willprice/dotfiles.git ~/.dotfiles`
* Install dotfiles: `cd ~/.dotfiles; ./install-all.sh`


## Cheatsheet
### Nix

* Install a package: `nix-env -i packageName`
* List all available packages: `nix-env -qa` (take a while to run, best of dumping this and grepping the listing)


### NixOS

* Configuration file: `/etc/nixos/configuration.nix`
