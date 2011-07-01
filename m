Return-Path: <holger@freyther.de>
Received: from mail.symoco.de (sysmocom.de [78.46.147.233])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4D4154C8009E
	for <poky@yoctoproject.org>; Fri,  1 Jul 2011 07:48:20 -0500 (CDT)
Received: from [192.168.0.101] (91-64-95-94-dynip.superkabel.de [91.64.95.94])
	by mail.symoco.de (Postfix) with ESMTPSA id D08542543422
	for <poky@yoctoproject.org>; Fri,  1 Jul 2011 12:56:07 +0000 (UTC)
Message-ID: <4E0DC212.5020808@freyther.de>
Date: Fri, 01 Jul 2011 14:48:18 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110516 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@yoctoproject.org
X-Enigmail-Version: 1.1.1
Subject: Installing GDB or the saga of getting RPM/Zypp to run on JFFS2
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Jul 2011 12:48:20 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I would like to share some more bits of my poky/yocto experience. We
have started to move our software from the desktop to the device and
we had some minor issues and wanted to use/install gdb. So far we are
based on a -minimal image.

So the next step was to include the variable for the package manager in
our custom image and then the fun starts.

a) I CTRL+C'ed the build once and later I noticed that my poky repo had
the git origin changed. I think bitbake should check the result of the
os.chdir... I will prepare a patch for that...

b) libzypp didn't find gettext... (general ramblings against CMake and not
providing information like autoconf), so somehow I had a mix of gettext
0.17 and 0.18 (no idea where I got a temp 0.18 build from, maybe due
a rebase that i aborted or such).

$ bitbake -cclean virtual/gettext... fixed that for me.

For my colleague it somehow ended up not finding udev... but I have no
other information about it, the issue fixed 'itself' by having another
reason to rebuild udev.

c) then we found that RPM does not work on jffs2, or more precisely that
Berkeley DB opens the db files with MAP_READ|MAP_WRITE which is not
supported by jffs2. Googling reveals this[1], which didn't fix the problem
for me. I know have:

$ cat /etc/rpm/macros
%__dbi_txn      create lock log txn auto_commit nommap private.

The key here is 'private', the NO_MMAP is only for readonly data (a nice
red herring). I found an explanation for private here[2], I have also
tested this with 'shared' (which maps to DB_SYSTEM_MEM).

Now I wonder how to fix that, should we add a /etc/rpm/macros when jffs2
is in the filesystem list? which mode should one use by default? for my
target audience private is an acceptable option. Using ubifs is not something
I want to try right now.

d) we also had a very weird issue of packages-split/libgudev.lock being
there and packaging failing, it might be due the OE tree moving and
bblayers.conf pointing to another tree.

e) gdb 7.2 on ARM (but should apply to others too)
Could not find platform independent libraries <prefix>
Could not find platform dependent libraries <exec_prefix>
Consider setting $PYTHONHOME to <prefix>[:<exec_prefix>]
'import site' failed; use -v for traceback

Traceback (most recent call last):
  File "<string>", line 32, in <module>
ImportError: No module named os.path
...
>b
>mmap
Function "mmap" not defined.
Make breakpoint pending on future shared library load? (y or [n]) \n
...[answered N; input not from terminal]


I assume that GDB needs
1.) an RDEPENDS on libthread_db
2.) besides libpython it needs some minimal python support, I am not
    sure if libpython should have this RDEPENDS
3.) either there is a GLIBC with isatty... or I am missing some kernel
    option... or something weird in libreadline/ncurses (e.g. missing
    terminfo) but it would be nice to be able to answer questions..

f) The size of zypper
libzypp is a _huge_ library, did anyone look into shrinking it? maybe
by making zypper link statically to it? Did anyone look into the alternatives
like SMART?

While looking into the size I also found that:
	- udev drags in libgobject/libgthread due libgudev
	- udev installs keymaps even when i have no keyboard in my
	  machine flags...
	- oprofile installs the data for all platforms, would be nice
	  if we could only install the files that are needed by the
	  given platform.


Okay this is a lot, but it all started from the 'I would like to install
GDB' task. Feel free to start new top level threads for the separate
issues or point me to the bugzilla and I can create tickets.

holger


[1] http://elinux.org/RPM_jffs2_issue
[2] http://www.mathematik.uni-ulm.de/help/BerkeleyDB/ref/env/region.html



