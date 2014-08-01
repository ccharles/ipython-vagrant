# Sample iPython Notebook repository using Vagrant #

## Introduction ##

This repository contains code to build an [Ubuntu](http://www.ubuntu.com/) [virtual machine](http://en.wikipedia.org/wiki/Virtual_machine) containing a number of scientific and numerical computing libraries.

In particular, it includes

* [Python 2.7](https://docs.python.org/2/),
* [IPython](http://ipython.org/),
* [matplotlib](http://matplotlib.org/),
* [NumPy](http://www.numpy.org/),
* [pandas](http://pandas.pydata.org/), and
* [SciPy](http://www.scipy.org/).

Building the virtual machine is relatively straightforward, thanks to some lovely automation tools.

## Dependencies ##

In order to use this repository you will need to install

* [VirtualBox](https://www.virtualbox.org/) and
* [Vagrant](http://www.vagrantup.com/)

onto your computer.

The machine sitting on your desk will be referred to as the *host* machine. It needs to be relatively recent to run VirtualBox properly. If you've got an i5 processor or better and 4GB of memory you're probably fine (and some older hardware will work as well). Specifically, your CPU must support [hardware-assisted virtualization](http://en.wikipedia.org/wiki/Hardware-assisted_virtualization).

The virtual machine will be referred to as the *guest* machine.

## Installation ##

After setting up VirtualBox and Vagrant, [clone](http://git-scm.com/docs/git-clone) this repository somewhere on your host machine. Then open up a terminal window (`cmd.exe` on Windows, Terminal.app on OSX, something like `gnome-terminal` or `konsole` on Linux), navigate to your working directory (the root of this repository) and run

    vagrant up

The first time you run this command, Vagrant will download an operating system image for the latest long-term support version of Ubuntu (about 500 MB) and begin building your virtual machine. This will take some time.

But don't worry, Vagrant is very smart. It will only do what is necessary each time you invoke it, so you shouldn't have to worry about repeat downloads or waiting for your guest machine to be built each time you want to do some work.

## Testing iPython Notebook ##

Once your `vagrant up` command has completed you should have a working, running virtual machine. Let's connect to it!

Run

    vagrant ssh

to connect to the guest machine. You don't need a password for this; Vagrant has already taken care of that for you by setting up a special SSH key. After running `vagrant ssh` you should see a prompt like

    vagrant@ubuntu-14:~$

indicating that you are on the guest machine.

Now, let's get a sample notebook up and running. If you list the files in your home directory with the `ls` command, you should see a directory called `sample_notebooks`. Let's `cd` into that:

    cd sample_notebooks

Now, start the iPython Notebook server with

    ipython notebook ip='*'

If all goes well, you should be able to browse to `localhost:8888` on your host machine and see the iPython Notebook interface. Congratulations!

**Note:** The `ip='*'` portion of the `ipython` command is important. It causes IPython's Notebook server to listen on *all* guest IP addresses, not just `localhost`. This is part of what lets you connect from your host machine.

## Shutting down ##

To shut down your Vagrant machine, first log out using the `exit` command. Once you are back to your host machine's command line, run

    vagrant halt

to shut down the guest. You can always run `vagrant status` to see if your machine is running.

## References ##

* [Vagrant's documentation](http://docs.vagrantup.com/v2/) has lots of useful information
* [Pro Git](http://git-scm.com/book) is an excellent free book on using Git
