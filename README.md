# [ryhn] Arch Linux repository
My own Arch repository for packages that are not on the AUR, packages that take too long to build and AUR helpers.

## Directory structure
```
├ bin/				- scripts
│ ├ buildall.sh		- build all packages 
│ └ buildpkg.sh		- build all packages 
├ pkg/				- folder that contains all packages
├ pkgbuild/			- pkgbuilds for packages
│ └ .../
├ public/			- static HTTP files
│ └ .../
└ nginx-site		- example nginx site
```

## Installing (Server)
0. Install `nginx`, if you're on non-Arch system, install [junest](https://github.com/fsquillace/junest) and run build commands from there (use `r` option to be able to use `su`). On Arch install `pacman-contrib base-devel git wget gzip awk`
1. Modify the [nginx-site](nginx-site) file to match your repo directory.
2. Move [nginx-site](nginx-site) to `/etc/sites-available`
3. Symlink the site to `/etc/sites-enalbed`
4. Get SSL by using certbot
5. Restart nginx (`systemctl restart nginx`)
6. Uncomment and set `PACKAGER` and `GPGKEY` variables in `/etc/makepkg.conf` (Needs the GPG private key to be installed)
7. Go to repo directory and run `./bin/buildall.sh`

## Installing (Client)
1. Visit arch.ryhn.link
2. Copy the one line install script
3. Run it in your terminal