# Practice Common Lisp

Practice Common Lisp.


## Environments

- WSL Ubuntu 20.04.4 : Install Roswell using Linuxbrew
- MacOS 12.4 Monterey : Install Rosswell using Homebrew

```bash
# WSL Linuxbrew
$ brew --version
Homebrew 3.6.1

# MacOS Homebrew
$ brew --version
Homebrew 3.6.2

# Install Roswell
$ brew install roswell
```


## Setup Roswell

```bash
# Install SBCL For First Time
$ ros

# WSL
$ ros version
roswell 21.10.14.111(NO-GIT-REVISION)
build with gcc-5 (Ubuntu 5.4.0-6ubuntu1~16.04.12) 5.4.0 20160609
libcurl=7.79.1
Quicklisp=2021-02-13
Dist=2022-07-08
lispdir='/home/linuxbrew/.linuxbrew/Cellar/roswell/21.10.14.111/etc/roswell/'
homedir='/home/neo/.roswell/'
sbcl-bin-variant=''

# MacOS
$ ros version
roswell 21.10.14.111(NO-GIT-REVISION)
build with Apple clang version 13.0.0 (clang-1300.0.29.3)
libcurl=7.77.0
Quicklisp=2021-02-13
Dist=2022-07-08
lispdir='/usr/local/Cellar/roswell/21.10.14.111/etc/roswell/'
homedir='/Users/neo/.roswell/'
sbcl-bin-variant=''

$ ros config
setup.time=3872504440
sbcl-bin.version=2.2.8
default.lisp=sbcl-bin

$ ros list installed
Installed implementations:

Installed versions of sbcl-bin:
sbcl-bin/2.2.8
```


## REPL

```bash
$ ros run
* (format t "Hello World")
Hello World
NIL
* (exit)
```


## First Project

```bash
# Create project skeleton using cl-project
$ ros run
* (ql:quickload :cl-project)
* (cl-project:make-project #P"hello-project" :author "Neos21")
* (exit)
$ tree -a ./hello-project
./hello-project
├── .gitignore
├── README.markdown
├── README.org
├── hello-project.asd
├── src
│   └── main.lisp
└── tests
    └── main.lisp
2 directories, 6 files

# Create Entry Point File
$ cd ./hello-project/
$ ros init hello-project
Successfully generated: hello-project.ros
$ ../

# Create Symbolic Link (Important!)
$ ln -s "$(pwd)" "${HOME}/.roswell/local-projects/$(basename "$(pwd)")"

# Execute
$ ros ./hello-project/hello-project.ros
hello-project/hello-project.ros !
hello-project/src/main.lisp !

# Build And Execute
$ ros build ./hello-project/hello-project.ros
$ ./hello-project/hello-project
```


## Single File

`main` 関数さえあれば `$ ros ./main-only.lisp` のように実行できる (`$ ros build` はできない)。


## Links

- [Neo's World](https://neos21.net/)
