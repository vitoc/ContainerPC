# ContainerPC

ContainerPC is an attempt to move my personal computer to a Docker container. Why? Freedom and continuity. By committing the Dockerfile for my ContainerPC on a public repository (Github in this case), I can easily clone it on any physical computer I get my hands on and instantly get a personalised stack of software that I maintain and use.

If I lose any of my physical computers, well, I’ll just lose the physical aspects of the computer. The personal computer continues to be on Github and other repo.

> Caveat: this applies to stuff I do that needs to persist on a personal non-web environment via a CLI (i.e. the personal part of my personal computer).

If you have a good software to recommend, or a suggestion on how I can run my personal computer better, just do a Pull Request.

The Private part of the personal computer in ContainerPC though lies in the volume. I'd yet to fixate on a specific solution to work this yet other than mounting with a VOLUME command. If you have any suggestion on a practical way to manage volume in such a way that supports the freedom and continuity objectives of this ContainerPC, it will be great to hear from you!

How to use
===========

Currently:

$ docker build -t brain:ContainerPC .
$ docker run --privileged -it --name my_container -d brain:ContainerPC
$ docker exec -it my_container bash

To get KBFS within container:

$ run_keybase