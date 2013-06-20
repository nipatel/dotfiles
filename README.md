# Chris's dotfiles

Dotfiles for all my Linux boxes.

## How to Execute

Clone this repository anywhere on your filesystem.

```bash
git clone https://github.com/Ludachrispeed/dotfiles.git
```

The clone operation will create a directory called "dotfiles" with all of these
files under it. Then `cd` into the new "dotfiles" folder and execute the
`bootstrap.sh` script, which will copy all of the dotfiles into your home
directory (overwriting existing files).

## How it Works / How to Extend

The `.bootstrap.sh` script pulls the latest changes from this githup repository
and then copies the files into you $HOME directory, overwriting the dotfiles
that were already there.

The `.bashrc` script calls a few other scripts: `.exports`, `.bash_aliases`,
`.extras`, and `.path`.

`.exports` and `.bash_aliases` should not contain private information or
information that can vary between different computers. These files are checked
in to the git repository, and will overwrite the ones you have on your computer
currently.

`.extras` and `.path` are files that you can optionally create on each computer
you own. They should not be checked in to this repository, and can contain
computer-specific or private information.

## Thanks

[Mathias Bynens](http://mathiasbynens.be) for his popular
[dotfiles](http://mths.be/dotfiles) project. I've shamelessly taken his
`bootstrap.sh` as well as several nuggets of bash.
