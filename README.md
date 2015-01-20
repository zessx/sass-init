# sass-init
Shell script to build a Sass architecture from a Manifest.

## How to use it?
First, you should have a Sass manifest file, let's say `main.scss`.  
You then simply have to call `sass-init` on this file to generate your Sass architecture:

    $ ./sass-init.sh main.scss

`sass-init` comes with two available options: 

- file extension (`scss` by default, can be `sass`)
- optional underscore prefix (`prefix` by default, can be `no-prefix`)

<!-- -->

    $ ./sass-init.sh main.scss sass
    $ ./sass-init.sh main.scss scss no-prefix
    $ ./sass-init.sh main.scss sass no-prefix

## Features
- [x] Create all directories
- [x] Create all files
- [x] Accept both SASS and SCSS syntaxes
- [x] Accept both simple and double quotes
- [x] Reject comment lines
- [ ] Accept lines with extension already specified
- [ ] Accept parameters in any order

## Notes
> Windows users: be sure your shell script use Unix line endings
