Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 207724C80FAC
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 13:12:06 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Dec 2010 11:12:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="632502623"
Received: from unknown (HELO [10.255.13.208]) ([10.255.13.208])
	by fmsmga002.fm.intel.com with ESMTP; 02 Dec 2010 11:11:58 -0800
Message-ID: <4CF7EF7B.30300@linux.intel.com>
Date: Thu, 02 Dec 2010 11:11:55 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Problems with devshell over ssh with X forwarding and then with ./configure for gst-ffmpeg
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
X-List-Received-Date: Thu, 02 Dec 2010 19:12:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I'm trying to debug a build (linker) failure in gst-ffmpeg and getting unexpected results from devshell.

$ ssh -X nhm
$ screen
...
$ bitbake gst-ffmpeg -c devshell

NOTE: package gst-ffmpeg-0.10.1-r5: task do_devshell: Started
ERROR: Task failed: ('function do_devshell failed', '/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/temp/log.do_devshell.22436')
ERROR: Logfile of failure stored in: /vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/temp/log.do_devshell.22436
Log data follows:
| Failed to summon the GConf demon; exiting.  Failed to contact configuration server; some possible causes are that you need to enable TCP/IP networking for ORBit, or you have stale NFS locks due to a system crash. See http://projects.gnome.org/gconf/ for information. (Details -  1: Failed to get connection to session: /bin/dbus-launch terminated abnormally with the following error: Autolaunch requested, but X11 support not compiled in.
| Cannot continue.
| )
| ERROR: Task failed: ('function do_devshell failed', '/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/temp/log.do_devshell.22436')
NOTE: package gst-ffmpeg-0.10.1-r5: task do_devshell: Failed
ERROR: Task 4 (/home/dvhart/data/poky.git/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb, do_devshell) failed with 1
ERROR: '/home/dvhart/data/poky.git/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb' failed


Running gnome-terminal from the same shell opens a gnome-terminal as expected. Changing my local.conf to contain:

TERMCMD = 'xterm -T "$TERMWINDOWTITLE"'
TERMCMDRUN = '${XTERM_TERMCMD} -e bash'

Succeeds in opening the new terminal, but configure fails unexpectedly:

...gst-ffmpeg-0.10.1]$ ./configure
configure: loading site script /home/dvhart/data/poky.git/meta/site/endian-little
configure: loading site script /home/dvhart/data/poky.git/meta/site/common-glibc
configure: loading site script /home/dvhart/data/poky.git/meta/site/x86_64-linux
configure: loading site script /home/dvhart/data/poky.git/meta/site/common
configure: loading site script /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/share/x86_64-poky-linux_config_site.d/zlib_config
configure: loading site script /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/share/x86_64-poky-linux_config_site.d/eglibc_config
checking build system type... x86_64-unknown-linux-gnu
checking host system type... x86_64-unknown-linux-gnu
checking target system type... x86_64-unknown-linux-gnu
checking whether to enable maintainer-specific portions of Makefiles... no
configure: configuring gst-ffmpeg for release
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking how to print strings... printf
checking for style of include used by make... GNU
checking for gcc... ccache  x86_64-poky-linux-gcc -L/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... configure: error: in `/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/gst-ffmpeg-0.10.1':
configure: error: cannot run C compiled programs.
If you meant to cross compile, use `--host'.
See `config.log' for more details.


I expected ./configure to succeed and for make to fail as it did in the log.do_compile log.


My local.conf has 'MACHINE ?= "qemux86-64"'

Any thoughts?
-- 
Darren Hart
Yocto Linux Kernel

