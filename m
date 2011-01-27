Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 50FB24C8112C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 06:45:33 -0600 (CST)
Received: by wwb31 with SMTP id 31so2149348wwb.11
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 04:45:32 -0800 (PST)
Received: by 10.227.143.148 with SMTP id v20mr954391wbu.222.1296132331967;
	Thu, 27 Jan 2011 04:45:31 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id y29sm6651339wbd.22.2011.01.27.04.45.30
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 27 Jan 2011 04:45:30 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1295993245.27814.133.camel@rex>
Date: Thu, 27 Jan 2011 13:45:29 +0100
Message-Id: <A75EAA1D-9046-4CD6-B407-65AA43B9F3CC@dominion.thruhere.net>
References: <1295993245.27814.133.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1082)
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
X-List-Received-Date: Thu, 27 Jan 2011 12:45:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Op 25 jan 2011, om 23:07 heeft Richard Purdie het volgende geschreven:
> The following are know issues with master:
>=20
> * Using rm_work and switching machines to machines of the same
> "multimachine" architecture breaks.
>=20
> * When switching machines of the same "multimachine" architecture =
(e.g.
> emenlow to atom-pc), some sstate packages are changing checksums when =
at
> first glance they shouldn't (e.g. perl do_install). A

After the fixes for those 2 went in builds from scratch fail with:

ERROR: Logfile of failure stored in: =
/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/gmp-native-5.0.1-=
r0/temp/log.do_configure.31887
Log data follows:
| automake (GNU automake) 1.9.6
| Written by Tom Tromey <tromey@redhat.com>.
|
| Copyright 2005 Free Software Foundation, Inc.
| This is free software; see the source for copying conditions.  There =
is NO
| warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR =
PURPOSE.
| AUTOV is 1.9
| NOTE: Executing autoreconf --verbose --install --force =
--exclude=3Dautopoint -I =
/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/share/acl=
ocal
| /usr/bin/autoreconf2.50: unrecognized option `--exclude=3Dautopoint'
| Try `/usr/bin/autoreconf2.50 --help' for more information.
| FATAL: autoreconf execution failed.
| Function 'do_configure' failed (see =
/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/gmp-native-5.0.1-=
r0/temp/log.do_configure.31887 for further information)
| ERROR: Function 'do_configure' failed (see =
/OE/tentacle/build/tmp-angstrom_2010_x/work/x86_64-linux/gmp-native-5.0.1-=
r0/temp/log.do_configure.31887 for further information)

It wants to use the autoreconf from my host, which doesn't have the =
`--exclude=3Dautopoint' option since that's something OE patches in. =
After building autoconf native pseudo is gone!

/OE/tentacle/sources/openembedded/scripts/bitbake: line 38: =
/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/bin/pseud=
o: No such file or directory

After building pseudo-native again:

NOTE: package =
pseudo-native-0.0+git0+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17: =
task do_rm_work_all: Started
NOTE: package =
pseudo-native-0.0+git0+bcb42d80c0817da5479ab9c4f2cd8c4727e98ef8-r17: =
task do_rm_work_all: Succeeded
NOTE: Tasks Summary: Attempted 785 tasks of which 448 didn't need to be =
rerun and 0 failed.
koen@dominion:/OE/tentacle$ MACHINE=3Dbeagleboard bitbake console-image
/OE/tentacle/sources/openembedded/scripts/bitbake: line 38: =
/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/bin/pseud=
o: No such file or directory

weird

regards,

Koen


