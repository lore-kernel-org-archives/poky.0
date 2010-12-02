Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2DA424C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 14:59:02 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Dec 2010 12:59:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,289,1288594800"; d="scan'208";a="580004640"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 12:59:01 -0800
Received: from [10.255.13.241] (10.255.13.241) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Thu, 2 Dec 2010 13:59:01 -0700
Message-ID: <4CF80894.8020205@intel.com>
Date: Thu, 2 Dec 2010 12:59:00 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4CF7EF7B.30300@linux.intel.com>
In-Reply-To: <4CF7EF7B.30300@linux.intel.com>
Subject: Re: Problems with devshell over ssh with X forwarding and then with ./configure for gst-ffmpeg
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
X-List-Received-Date: Thu, 02 Dec 2010 20:59:02 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/02/2010 11:11 AM, Darren Hart wrote:
> I'm trying to debug a build (linker) failure in gst-ffmpeg and getting unexpected results from devshell.
>
> $ ssh -X nhm
> $ screen
> ...
> $ bitbake gst-ffmpeg -c devshell
>
> NOTE: package gst-ffmpeg-0.10.1-r5: task do_devshell: Started
> ERROR: Task failed: ('function do_devshell failed', '/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/temp/log.do_devshell.22436')
> ERROR: Logfile of failure stored in: /vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/temp/log.do_devshell.22436
> Log data follows:
> | Failed to summon the GConf demon; exiting.  Failed to contact configuration server; some possible causes are that you need to enable TCP/IP networking for ORBit, or you have stale NFS locks due to a system crash. See http://projects.gnome.org/gconf/ for information. (Details -  1: Failed to get connection to session: /bin/dbus-launch terminated abnormally with the following error: Autolaunch requested, but X11 support not compiled in.
> | Cannot continue.
> | )
> | ERROR: Task failed: ('function do_devshell failed', '/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/temp/log.do_devshell.22436')
> NOTE: package gst-ffmpeg-0.10.1-r5: task do_devshell: Failed
> ERROR: Task 4 (/home/dvhart/data/poky.git/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb, do_devshell) failed with 1
> ERROR: '/home/dvhart/data/poky.git/meta/recipes-multimedia/gstreamer/gst-ffmpeg_0.10.1.bb' failed
>
>
> Running gnome-terminal from the same shell opens a gnome-terminal as expected. Changing my local.conf to contain:
>
> TERMCMD = 'xterm -T "$TERMWINDOWTITLE"'
> TERMCMDRUN = '${XTERM_TERMCMD} -e bash'
>
> Succeeds in opening the new terminal, but configure fails unexpectedly:
>
> ...gst-ffmpeg-0.10.1]$ ./configure
> configure: loading site script /home/dvhart/data/poky.git/meta/site/endian-little
> configure: loading site script /home/dvhart/data/poky.git/meta/site/common-glibc
> configure: loading site script /home/dvhart/data/poky.git/meta/site/x86_64-linux
> configure: loading site script /home/dvhart/data/poky.git/meta/site/common
> configure: loading site script /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/share/x86_64-poky-linux_config_site.d/zlib_config
> configure: loading site script /vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/share/x86_64-poky-linux_config_site.d/eglibc_config
> checking build system type... x86_64-unknown-linux-gnu
> checking host system type... x86_64-unknown-linux-gnu
> checking target system type... x86_64-unknown-linux-gnu
> checking whether to enable maintainer-specific portions of Makefiles... no
> configure: configuring gst-ffmpeg for release
> checking for a BSD-compatible install... /usr/bin/install -c
> checking whether build environment is sane... yes
> checking for a thread-safe mkdir -p... /bin/mkdir -p
> checking for gawk... gawk
> checking whether make sets $(MAKE)... yes
> checking how to print strings... printf
> checking for style of include used by make... GNU
> checking for gcc... ccache  x86_64-poky-linux-gcc -L/vol/1/dvhart/poky.git/build/tmp/sysroots/x86_64-poky-linux/usr/lib
> checking whether the C compiler works... yes
> checking for C compiler default output file name... a.out
> checking for suffix of executables...
> checking whether we are cross compiling... configure: error: in `/vol/1/dvhart/poky.git/build/tmp/work/x86_64-poky-linux/gst-ffmpeg-0.10.1-r5/gst-ffmpeg-0.10.1':
> configure: error: cannot run C compiled programs.
> If you meant to cross compile, use `--host'.
> See `config.log' for more details.
>
>
> I expected ./configure to succeed and for make to fail as it did in the log.do_compile log.

It sounds like you fixed the devshell problem, and now uncovered the 
next layer - a bug exposed in the do_configure step.

config.log should help you narrow down exactly what the test entails. If 
it involves compiling a C program and then executing it to get results 
(all to common), you'll need to develop a patch to work around that.

Perhaps the last time you built the recipe you were doing so on the 
native arch, which could explain why configure succeeded that time and 
not this time. Just a guess.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

