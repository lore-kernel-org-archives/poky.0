Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id F3B8D4C811AA
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 09:06:39 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RF8b6P005992; Thu, 27 Jan 2011 15:08:37 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id XXZS1ocWuLz2; Thu, 27 Jan 2011 15:08:37 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0RF8U47005989
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 27 Jan 2011 15:08:32 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <A75EAA1D-9046-4CD6-B407-65AA43B9F3CC@dominion.thruhere.net>
References: <1295993245.27814.133.camel@rex>
	<A75EAA1D-9046-4CD6-B407-65AA43B9F3CC@dominion.thruhere.net>
Date: Thu, 27 Jan 2011 15:06:07 +0000
Message-ID: <1296140767.27814.7777.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky <poky@yoctoproject.org>
Subject: Re: Master stability update
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
X-List-Received-Date: Thu, 27 Jan 2011 15:06:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-27 at 13:45 +0100, Koen Kooi wrote:
> Op 25 jan 2011, om 23:07 heeft Richard Purdie het volgende geschreven:
> > The following are know issues with master:
> > 
> > * Using rm_work and switching machines to machines of the same
> > "multimachine" architecture breaks.
> > 
> > * When switching machines of the same "multimachine" architecture (e.g.
> > emenlow to atom-pc), some sstate packages are changing checksums when at
> > first glance they shouldn't (e.g. perl do_install). A
> 
> After the fixes for those 2 went in builds from scratch fail with:
> 
> ERROR: Logfile of failure stored in: /OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/gmp-native-5.0.1-r0/temp/log.do_configure.31887
> Log data follows:
> | automake (GNU automake) 1.9.6
> | Written by Tom Tromey <tromey@redhat.com>.
> |
> | Copyright 2005 Free Software Foundation, Inc.
> | This is free software; see the source for copying conditions.  There is NO
> | warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> | AUTOV is 1.9
> | NOTE: Executing autoreconf --verbose --install --force --exclude=autopoint -I /OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/share/aclocal
> | /usr/bin/autoreconf2.50: unrecognized option `--exclude=autopoint'
> | Try `/usr/bin/autoreconf2.50 --help' for more information.
> | FATAL: autoreconf execution failed.
> | Function 'do_configure' failed (see /OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/gmp-native-5.0.1-r0/temp/log.do_configure.31887 for further information)
> | ERROR: Function 'do_configure' failed (see /OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/gmp-native-5.0.1-r0/temp/log.do_configure.31887 for further information)
> 
> It wants to use the autoreconf from my host, which doesn't have the `--exclude=autopoint' option since that's something OE patches in. After building autoconf native pseudo is gone!
> 
> /OE/tentacle/sources/openembedded/scripts/bitbake: line 38: /OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/bin/pseudo: No such file or directory
> 
> After building pseudo-native again:
> 
> NOTE: package pseudo-native-0.0+git0+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17: task do_rm_work_all: Started
> NOTE: package pseudo-native-0.0+git0+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17: task do_rm_work_all: Succeeded
> NOTE: Tasks Summary: Attempted 785 tasks of which 448 didn't need to be rerun and 0 failed.
> koen@dominion:/OE/tentacle$ MACHINE=beagleboard bitbake console-image
> /OE/tentacle/sources/openembedded/scripts/bitbake: line 38: /OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/bin/pseudo: No such file or directory

It seems that autoconf.bbclass change is having a weird ripple effect
with the sstate packages. Can you clean sstate and then retry, just to
try and isolate the issues?

I agree having a simple change to autotools.bbclass ripple through
sstate like that isn't desirable btw, I just want to try and fix one
issue at a time.

Cheers,

Richard


