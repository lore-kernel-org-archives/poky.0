Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4489E0030F
	for <poky@yoctoproject.org>; Mon,  5 Dec 2011 09:23:38 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id CCA831660C3A; Mon,  5 Dec 2011 10:23:35 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 501FB1660C37;
	Mon,  5 Dec 2011 10:23:28 -0700 (MST)
Message-ID: <4EDCFE10.4000208@mlbassoc.com>
Date: Mon, 05 Dec 2011 10:23:28 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <4EDCFB28.9010402@mlbassoc.com>
	<CAEsOVNfgTpENJvuQCjGd+BEytb7W4+MmPgJtrX4YqL9Q1-RXZw@mail.gmail.com>
In-Reply-To: <CAEsOVNfgTpENJvuQCjGd+BEytb7W4+MmPgJtrX4YqL9Q1-RXZw@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Can't build glib-2.0
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
X-List-Received-Date: Mon, 05 Dec 2011 17:23:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-12-05 10:18, McClintock Matthew-B29882 wrote:
> On Mon, Dec 5, 2011 at 11:11 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> NOTE: package glib-2.0-1_2.30.1-r0: task do_install: Started
>> ERROR: Function 'do_install' failed (see
>> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/temp/log.do_install.8610
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/temp/log.do_install.8610
>> Log data follows:
>> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
>> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
>> | ERROR: Function 'do_install' failed (see
>> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/temp/log.do_install.8610
>> for further information)
>> |
>> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/temp/run.do_install.8610:
>> line 96: oe_runmake: command not found
>> NOTE: package glib-2.0-1_2.30.1-r0: task do_install: Failed
>
> What's on line 96?

The normal 'autotools_do_install' boilerplate:

autotools_do_install() {
         oe_runmake 'DESTDIR=/home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/image' install
         # Info dir listing isn't interesting at this point so remove it if it exists.
         if [ -e "/home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/image/usr/share/info/dir" ]; then
                 rm -f /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2.0-1_2.30.1-r0/image/usr/share/info/dir
         fi

}

What's missing is the functions which should be coming from base.bbclass.
I looked at an older build of glib-2.0 and these functions are missing:
==============================================================
oe_runmake() {
         if [ x"$MAKE" = x ]; then MAKE=make; fi
         bbnote make -j 4  "$@"
         make -j 4  "$@" || die "oe_runmake failed"

}

die() {
         bbfatal "$*"

}

bbnote() {
         echo "NOTE: $*"

}

bbfatal() {
         echo "ERROR: $*"
         exit 1

}
==============================================================

Why would they be missing from this run.do_install script?


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

