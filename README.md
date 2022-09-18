# Practice Common Lisp

Practice Common Lisp

- WSL Ubuntu 20.04.4 : Install Roswell using Linuxbrew

```bash
# Linuxbrew
$ brew --version
Homebrew 3.6.1

$ brew install roswell
```

- Setup Roswell

```bash
# Install SBCL For First Time
$ ros

$ ros version
roswell 21.10.14.111(NO-GIT-REVISION)
build with gcc-5 (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609
libcurl=7.79.1
Quicklisp=2021-02-13
Dist=2022-07-08
lispdir='/home/linuxbrew/.linuxbrew/Cellar/roswell/21.10.14.111/etc/roswell/'
homedir='/home/neo/.roswell/'
sbcl-bin-variant=''

$ ros config
setup.time=3872504440
sbcl-bin.version=2.2.8
default.lisp=sbcl-bin

$ ros list installed
Installed implementations:

Installed versions of sbcl-bin:
sbcl-bin/2.2.8

# REPL
$ ros run
* (format t "Hello, World")
Hello, World
NIL
* (exit)

# Create Template
$ ros init hello-world
Successfully generated: hello-world.ros
# Execute
$ ./hello-world.ros

# Build
$ ros build ./hello-world.ros
$ ./hello-world
```


## Links

- [Neo's World](https://neos21.net/)
