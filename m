Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f68.google.com (mail-ww0-f68.google.com [74.125.82.68])
	by mx1.pokylinux.org (Postfix) with ESMTP id A9CAF4C80FD4
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 09:22:04 -0600 (CST)
Received: by wwj40 with SMTP id 40so2406337wwj.11
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 07:22:03 -0800 (PST)
Received: by 10.216.205.213 with SMTP id j63mr11806446weo.60.1293117723021;
	Thu, 23 Dec 2010 07:22:03 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id n3sm3800229wer.30.2010.12.23.07.22.02
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 23 Dec 2010 07:22:02 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
Date: Thu, 23 Dec 2010 16:22:00 +0100
Message-Id: <9CDD7A28-36BB-4970-B802-B4398C8B8BB7@dominion.thruhere.net>
To: poky@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1082)
X-Mailer: Apple Mail (2.1082)
Subject: Build breakage on master
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
X-List-Received-Date: Thu, 23 Dec 2010 15:22:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

I wanted to try a build from scratch to test my RDEPENDS patch, but even =
without that it quickly halts with:

ERROR: Logfile of failure stored in: =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
binutils-cross-2.20.1-r3/temp/log.do_configure.21368Log data follows:
| =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
binutils-cross-2.20.1-r3/temp/run.do_configure.21368: line 183: =
gnu-configize: command not found| FATAL: Failed to run gnu-configize

I tripple checked and I don't have any classes or files relating to =
binutils, gnu-config or autotools overlayered, does anyone else see this =
issue?

bitbake gnu-config-native results in:

ERROR: Task failed: ('function do_configure failed', =
'/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/bzip2-native-1.0=
.6-r3/temp/log.do_configure.21957')
ERROR: Logfile of failure stored in: =
/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/bzip2-native-1.0.=
6-r3/temp/log.do_configure.21957
Log data follows:
| cp: cannot stat =
`/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/share/au=
tomake*/install-sh': No such file or directory

and

ERROR: Task failed: ('function do_configure failed', =
'/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/icu-native-3.6-r=
6/temp/log.do_configure.22007')
ERROR: Logfile of failure stored in: =
/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/icu-native-3.6-r6=
/temp/log.do_configure.22007
Log data follows:
| Remember to add `AC_PROG_LIBTOOL' to `configure.in'.
| Using `AC_PROG_RANLIB' is rendered obsolete by `AC_PROG_LIBTOOL'
| You should add the contents of `/usr/share/aclocal/libtool.m4' to =
`aclocal.m4'.
| =
/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/icu-native-3.6-r6=
/temp/run.do_configure.22007: line 154: gnu-configize: command not found


I'm at:

commit ab83f5f266ee7f66d14e3711ec84907750ea7e91
Author: Joshua Lock <josh@linux.intel.com>
Date:   Wed Dec 22 17:03:44 2010 +0000

    bitbake/depexp: fix early exit
   =20
    Stupdi typo/thinko from me had depexp exiting once recipes had =
parsed
    as I'd used a return the while loop where I'd meant a continue...
   =20
    Signed-off-by: Joshua Lock <josh@linux.intel.com>



regards,

Koen=

