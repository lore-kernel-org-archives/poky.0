Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 549CA4C810F1
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 11:48:10 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNHnX7E022944; Thu, 23 Dec 2010 17:49:33 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id cWVzzmqBnibl; Thu, 23 Dec 2010 17:49:32 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBNHnSQo022929
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 23 Dec 2010 17:49:30 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <9CDD7A28-36BB-4970-B802-B4398C8B8BB7@dominion.thruhere.net>
References: <9CDD7A28-36BB-4970-B802-B4398C8B8BB7@dominion.thruhere.net>
Date: Thu, 23 Dec 2010 17:47:55 +0000
Message-ID: <1293126475.17519.135.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: Build breakage on master
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
X-List-Received-Date: Thu, 23 Dec 2010 17:48:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-23 at 16:22 +0100, Koen Kooi wrote:
> I wanted to try a build from scratch to test my RDEPENDS patch, but even without that it quickly halts with:
> 
> ERROR: Logfile of failure stored in: /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/binutils-cross-2.20.1-r3/temp/log.do_configure.21368Log data follows:
> | /OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/binutils-cross-2.20.1-r3/temp/run.do_configure.21368: line 183: gnu-configize: command not found| FATAL: Failed to run gnu-configize
> 
> I tripple checked and I don't have any classes or files relating to binutils, gnu-config or autotools overlayered, does anyone else see this issue?
> 
> bitbake gnu-config-native results in:
> 
> ERROR: Task failed: ('function do_configure failed', '/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/bzip2-native-1.0.6-r3/temp/log.do_configure.21957')
> ERROR: Logfile of failure stored in: /OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/bzip2-native-1.0.6-r3/temp/log.do_configure.21957
> Log data follows:
> | cp: cannot stat `/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/share/automake*/install-sh': No such file or directory
> 
> and
> 
> ERROR: Task failed: ('function do_configure failed', '/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/icu-native-3.6-r6/temp/log.do_configure.22007')
> ERROR: Logfile of failure stored in: /OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/icu-native-3.6-r6/temp/log.do_configure.22007
> Log data follows:
> | Remember to add `AC_PROG_LIBTOOL' to `configure.in'.
> | Using `AC_PROG_RANLIB' is rendered obsolete by `AC_PROG_LIBTOOL'
> | You should add the contents of `/usr/share/aclocal/libtool.m4' to `aclocal.m4'.
> | /OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/icu-native-3.6-r6/temp/run.do_configure.22007: line 154: gnu-configize: command not found
> 

Talking with Koen offlist, this wasn't a build from scratch as sstate
info was present. I believe this issue is resolved now although why the
sstate was causing issues wasn't 100% clear. Angstrom and Poky distro
configs were out of sync with some core sstate variables which might
have been part of the problem and/or some of the recent sstate
improvements.

Cheers,

Richard


