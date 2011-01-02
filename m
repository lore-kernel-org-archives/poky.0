Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2D2D04C80BD4
	for <poky@yoctoproject.org>; Sun,  2 Jan 2011 11:15:51 -0600 (CST)
Received: by wye20 with SMTP id 20so13530377wye.35
	for <poky@yoctoproject.org>; Sun, 02 Jan 2011 09:15:50 -0800 (PST)
Received: by 10.216.183.195 with SMTP id q45mr7949401wem.94.1293988550117;
	Sun, 02 Jan 2011 09:15:50 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	r38sm9373097weq.47.2011.01.02.09.15.49
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sun, 02 Jan 2011 09:15:49 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <D094D4EC-55AF-4B52-A011-60EDCD5A46A6@dominion.thruhere.net>
Date: Sun, 2 Jan 2011 18:15:48 +0100
Message-Id: <33C7AC93-95A5-49D4-B0F2-91B953F1BA94@dominion.thruhere.net>
References: <D094D4EC-55AF-4B52-A011-60EDCD5A46A6@dominion.thruhere.net>
To: Koen Kooi <koen@dominion.thruhere.net>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: PREMIRRORS in yocto, do they actually work?
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
X-List-Received-Date: Sun, 02 Jan 2011 17:15:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 2 jan 2011, om 18:08 heeft Koen Kooi het volgende geschreven:

> Hi,
>=20
> I would like to have the fetchter try my PREMIRROS first before trying =
to fetch from git. In OE I have the following in a bbclass:
>=20
> PREMIRRORS_append () {
> git://.*/.* http://www.angstrom-distribution.org/unstable/sources/
> }
>=20
> When used in OE that works, but in yocto it doesn't. So I tried to do =
it poky style in a .inc:
>=20
> PREMIRRORS_append =3D "\
> git://.*/.*   http:/www.angstrom-distribution.org/sources/ \n"
>=20
> Which also doesn't work since it doesn't try to fetch from there, but =
it does mention "http:/www.angstrom-distribution.org/sources/" in the =
fetch error message when git read-tree fails.

And the actual error message:

DEBUG: Parsing =
/OE/tentacle/sources/angstrom-layers/BSP/TI/recipes-bsp/x-load/x-load_git.=
bb (full)
DEBUG: Executing task do_fetch
NOTE: package =
x-load-1_1.44+r16+gitr1c9276af4d6a5b7014a7630a1abeddf3b3177563-r16: task =
do_fetch: Started
DEBUG: Running export HOME=3D"/home/koen"; export =
GIT_CONFIG=3D"/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux=
/usr/etc/gitconfig"; export =
PATH=3D"/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/b=
in/armv7a-angstrom-linux-gnueabi:/OE/tentacle/build/tmp-angstrom_2010_x/sy=
sroots/armv7a-angstrom-linux-gnueabi/usr/bin/crossscripts:/OE/tentacle/bui=
ld/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/sbin:/OE/tentacle/build/t=
mp-angstrom_2010_x/sysroots/x86_64-linux/usr/bin:/OE/tentacle/build/tmp-an=
gstrom_2010_x/sysroots/x86_64-linux/sbin:/OE/tentacle/build/tmp-angstrom_2=
010_x/sysroots/x86_64-linux//bin:/OE/tentacle/sources/openembedded/scripts=
:/OE/tentacle/sources/bitbake/bin:/OE/tentacle/sources/bitbake/bin:/OE/bit=
bake/bin:/usr/local/bin:/usr/bin:/bin:/usr/games:/usr/X11/bin:/usr/local/b=
in:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/usr/X11/bin:/usr=
/local/bin:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/OE/tenta=
cle/sources/openembedded/scripts"; git log --pretty=3Doneline -n 1 =
1c9276af4d6a5b7014a7630a1abeddf3b3177563 -- 2> /dev/null | wc -l
ERROR: Task failed: Unknown fetch Error: =
http:/www.angstrom-distribution.org/sources/
NOTE: package =
x-load-1_1.44+r16+gitr1c9276af4d6a5b7014a7630a1abeddf3b3177563-r16: task =
do_fetch: Failed

I wiped before the build, DL_DIR, so the 'git log' is always going to =
fail.

regards,

Koen


