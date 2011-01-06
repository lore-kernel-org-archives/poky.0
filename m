Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id EE1474C8086F
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 00:51:34 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Jan 2011 22:51:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,282,1291622400"; d="scan'208";a="590364222"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by orsmga002.jf.intel.com with ESMTP; 05 Jan 2011 22:51:33 -0800
Date: Thu, 6 Jan 2011 15:00:11 +0800
From: Yu Ke <ke.yu@intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Message-ID: <20110106070011.GA20168@kyu3-hedt>
References: <D094D4EC-55AF-4B52-A011-60EDCD5A46A6@dominion.thruhere.net>
	<1293990824.18787.428.camel@eha>
	<6C85DA8A-40F3-49CD-BBE5-426A648B266E@dominion.thruhere.net>
MIME-Version: 1.0
In-Reply-To: <6C85DA8A-40F3-49CD-BBE5-426A648B266E@dominion.thruhere.net>
User-Agent: Mutt/1.5.20 (2009-06-14)
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
X-List-Received-Date: Thu, 06 Jan 2011 06:51:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Jan 02, 20:01, Koen Kooi wrote:
>=20
> Op 2 jan 2011, om 18:53 heeft Esben Haabendal het volgende geschreven:
>=20
> > On Sun, 2011-01-02 at 18:08 +0100, Koen Kooi wrote:
> >> Hi,
> >>=20
> >> I would like to have the fetchter try my PREMIRROS first before trying=
 to fetch from git. In OE I have the following in a bbclass:
> >>=20
> >> PREMIRRORS_append () {
> >> git://.*/.* http://www.angstrom-distribution.org/unstable/sources/
> >> }
> >>=20
> >> When used in OE that works, but in yocto it doesn't. So I tried to do =
it poky style in a .inc:
> >>=20
> >> PREMIRRORS_append =3D "\
> >> git://.*/.*   http:/www.angstrom-distribution.org/sources/ \n"
> >>=20
> >> Which also doesn't work since it doesn't try to fetch from there, but =
it does mention "http:/www.angstrom-distribution.org/sources/" in the fetch=
 error message when git read-tree fails.
> >>=20
> >> So my question: how do I make it work in yocto like it works in OE?
> >=20
> > What about
> >=20
> > PREMIRRORS_append =3D "\
> > git://.*/.*   http:/www.angstrom-distribution.org/sources/\n"
> >=20
> > ie. without the space before \n
> >=20
> > I have no idea if it makes sense, but might be worth a try.
>=20
> Same thing:
>=20
> DEBUG: Executing task do_fetch
> NOTE: package x-load-1_1.44+r17+gitr6f3a26101303051e0f91b6213735b68ce804e=
94e-r17: task do_fetch: Started
> DEBUG: Running export HOME=3D"/home/koen"; export GIT_CONFIG=3D"/OE/tenta=
cle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/etc/gitconfig"; exp=
ort PATH=3D"/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/us=
r/bin/armv7a-angstrom-linux-gnueabi:/OE/tentacle/build/tmp-angstrom_2010_x/=
sysroots/armv7a-angstrom-linux-gnueabi/usr/bin/crossscripts:/OE/tentacle/bu=
ild/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/sbin:/OE/tentacle/build/t=
mp-angstrom_2010_x/sysroots/x86_64-linux/usr/bin:/OE/tentacle/build/tmp-ang=
strom_2010_x/sysroots/x86_64-linux/sbin:/OE/tentacle/build/tmp-angstrom_201=
0_x/sysroots/x86_64-linux//bin:/OE/tentacle/sources/openembedded/scripts:/O=
E/tentacle/sources/bitbake/bin:/OE/tentacle/sources/bitbake/bin:/OE/bitbake=
/bin:/usr/local/bin:/usr/bin:/bin:/usr/games:/usr/X11/bin:/usr/local/bin:/u=
sr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/usr/X11/bin:/usr/local=
/bin:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/OE/tentacle/sou=
rces/openembedded/scrip
>  ts"; git log --pretty=3Doneline -n 1 6f3a26101303051e0f91b6213735b68ce80=
4e94e -- 2> /dev/null | wc -l
> ERROR: Task failed: Unknown fetch Error: http:/www.angstrom-distribution.=
org/sources/
> NOTE: package x-load-1_1.44+r17+gitr6f3a26101303051e0f91b6213735b68ce804e=
94e-r17: task do_fetch: Failed

I try to reproduce the issue by:
1. add the following to meta/conf/distro/poky.conf

PREMIRRORS_append =3D "\
 git://.*/.*   http://www.angstrom-distribution.org/sources/\n"

Note: your original URL "http:/www.angstrom-distribution.org/sources/" miss=
 a slash after the "http:/", which cause the "Unknown fetch Error".

2. bitbake -f -c fetch x-load
then the fetcher will try to fetch http://www.angstrom-distribution.org/sou=
rces/git_www.sakoman.net.git.x-load-omap3.git_65ed00323f3807197a83abc75d62e=
d2a8d3f60de.tar.gz, and failed, because this tar ball does not exist in thi=
s mirror.

so the could you add the corresponding tar ball to the web site, and try ag=
ain?

Regards
Ke

>=20
> As a work around I fetch it using OE into a shared DL_DIR first and then =
try a yocto build.....
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

