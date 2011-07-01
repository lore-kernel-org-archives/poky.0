Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 35D034C8009D
	for <poky@yoctoproject.org>; Fri,  1 Jul 2011 08:44:14 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p61DiDmt016657
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 1 Jul 2011 06:44:13 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.229) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 1 Jul 2011 06:44:13 -0700
Message-ID: <4E0DCF2C.1090602@windriver.com>
Date: Fri, 1 Jul 2011 08:44:12 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4E0DC212.5020808@freyther.de>
In-Reply-To: <4E0DC212.5020808@freyther.de>
Subject: Re: Installing GDB or the saga of getting RPM/Zypp to run on	JFFS2
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
X-List-Received-Date: Fri, 01 Jul 2011 13:44:14 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 7/1/11 7:48 AM, Holger Hans Peter Freyther wrote:
> Hi,
> 
> I would like to share some more bits of my poky/yocto experience. We
> have started to move our software from the desktop to the device and
> we had some minor issues and wanted to use/install gdb. So far we are
> based on a -minimal image.
> 
> So the next step was to include the variable for the package manager in
> our custom image and then the fun starts.
> 
> a) I CTRL+C'ed the build once and later I noticed that my poky repo had
> the git origin changed. I think bitbake should check the result of the
> os.chdir... I will prepare a patch for that...
> 
> b) libzypp didn't find gettext... (general ramblings against CMake and not
> providing information like autoconf), so somehow I had a mix of gettext
> 0.17 and 0.18 (no idea where I got a temp 0.18 build from, maybe due
> a rebase that i aborted or such).
> 
> $ bitbake -cclean virtual/gettext... fixed that for me.
> 
> For my colleague it somehow ended up not finding udev... but I have no
> other information about it, the issue fixed 'itself' by having another
> reason to rebuild udev.
> 
> c) then we found that RPM does not work on jffs2, or more precisely that
> Berkeley DB opens the db files with MAP_READ|MAP_WRITE which is not
> supported by jffs2. Googling reveals this[1], which didn't fix the problem
> for me. I know have:
> 
> $ cat /etc/rpm/macros
> %__dbi_txn      create lock log txn auto_commit nommap private.

There is also a database configuration file:

/usr/lib/rpm/DB_CONFIG

This contains database specific settings such as the memory pool and similar.

Note, I've never tried RPM on a jffs2 before.  I'd not expected someone to use
it there either.. ;)  ipk is likely more appropriate simply due to cached file
sizes and such.

See bug http://bugzilla.yoctoproject.org/show_bug.cgi?id=1174

RPM, as currently configured, ends up gobbling up a lot of disk space.  We're
working on a solution to this (changing the values in DB_CONFIG).. but it hasn't
yet been implemented.

> The key here is 'private', the NO_MMAP is only for readonly data (a nice
> red herring). I found an explanation for private here[2], I have also
> tested this with 'shared' (which maps to DB_SYSTEM_MEM).
> 
> Now I wonder how to fix that, should we add a /etc/rpm/macros when jffs2
> is in the filesystem list? which mode should one use by default? for my
> target audience private is an acceptable option. Using ubifs is not something
> I want to try right now.

macro files are being loaded from:

%{_usrlibrpm}/macros:%{_usrlibrpm}/poky/macros:%{_usrlibrpm}/poky/%{_target}/macros:%{_etcrpm}/macros.*:%{_etcrpm}/macros:%{_etcrpm}/%{_target}/macros:~/.oerpmmacros

The key above is the /etc/rpm/macros.*

I would recommend a new file be generated called /etc/rpm/macros.jffs2 that
changes the setting as appropriate for that filesystem.  (How it's placed into
the filesystem I'm not sure.  I think it all comes down to detecting we're
building a jffs2 filesystem and doing it there.  Perhaps in the rootfs_rpm.bbclass?)

> 
> d) we also had a very weird issue of packages-split/libgudev.lock being
> there and packaging failing, it might be due the OE tree moving and
> bblayers.conf pointing to another tree.
> 
> e) gdb 7.2 on ARM (but should apply to others too)
> Could not find platform independent libraries <prefix>
> Could not find platform dependent libraries <exec_prefix>
> Consider setting $PYTHONHOME to <prefix>[:<exec_prefix>]
> 'import site' failed; use -v for traceback
> 
> Traceback (most recent call last):
>   File "<string>", line 32, in <module>
> ImportError: No module named os.path
> ...
>> b
>> mmap
> Function "mmap" not defined.
> Make breakpoint pending on future shared library load? (y or [n]) \n
> ...[answered N; input not from terminal]
> 
> 
> I assume that GDB needs
> 1.) an RDEPENDS on libthread_db

libpthread_db is only needed if you are debugging more then one thread.

> 2.) besides libpython it needs some minimal python support, I am not
>     sure if libpython should have this RDEPENDS

GDB includes some python scripts to make it easier to walk various structures
and similar.  I don't remember off hand where these get placed, but you should
see in your FS something of the format gdb...py, if you remove these it'll no
longer load the python helpers.

> 3.) either there is a GLIBC with isatty... or I am missing some kernel
>     option... or something weird in libreadline/ncurses (e.g. missing
>     terminfo) but it would be nice to be able to answer questions..
> 
> f) The size of zypper
> libzypp is a _huge_ library, did anyone look into shrinking it? maybe
> by making zypper link statically to it? Did anyone look into the alternatives
> like SMART?

zypper is somewhat of a pig.  Again this wasn't really designed for really small
systems.

I've used smart in the past, it's worth looking into... but it's been a lack of
time.  (Plus smart, at least used to, require python.. which itself is a pig, if
you don't already need python.)

> While looking into the size I also found that:
> 	- udev drags in libgobject/libgthread due libgudev
> 	- udev installs keymaps even when i have no keyboard in my
> 	  machine flags...

These should definitely be fixed.

> 	- oprofile installs the data for all platforms, would be nice
> 	  if we could only install the files that are needed by the
> 	  given platform.
> 
> 
> Okay this is a lot, but it all started from the 'I would like to install
> GDB' task. Feel free to start new top level threads for the separate
> issues or point me to the bugzilla and I can create tickets.

Most of my debugging so far with GDB on the target has been on ext3 and "large"
filesystems.  Alternatively I've run gdbserver on fairly small systems -- no RPM
or .debug on the target.. the .debug stuff was on the host side.

--Mark

> holger
> 
> 
> [1] http://elinux.org/RPM_jffs2_issue
> [2] http://www.mathematik.uni-ulm.de/help/BerkeleyDB/ref/env/region.html
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


