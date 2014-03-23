dotfiles
========

All my dotfiles!

I've separated them out into directories to help me keep track of what kind of configuration files should be going where.

I might look at converting this into a Puppet usable set of configs, so that I can just write a manifest and have the installation of all this stuff happen automatically on a new computer. Another possibility is to look at writing some sort of Make or Rakefile that can install the configuration files where they need to go. I like the idea of using Puppet a bit more though, because then it's quite a bit easier to manage the installation of the packages that the various configuration files belong to, including the ones that need to be compiled.

## Installation
* Copy organizer.org to ~/organizer.org
* See README.md files in subdirectories for further installation instructions

## Other Things To Install
### Else I Can't Work.
* rsense: http://cx4a.org/software/rsense/
* nodejs => /usr/local/nodejs-v.v.v ( symlink latest to /usr/local/nodejs )
* arduino => /usr/local/arduino-v.v.v ( symlink latest to /usr/local/arduino )
* processing => /usr/local/processing-v.v.v ( symlink latest to /usr/local/processing )
* java => untar the jdk tarball into /usr/local/jdk-v.v.v ( symlink latest to /usr/local/java )
