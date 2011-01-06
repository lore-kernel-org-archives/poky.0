Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4D1B84C8086F
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 04:14:04 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jan 2011 02:14:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,282,1291622400"; d="scan'208";a="644014764"
Received: from unknown (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jan 2011 02:14:02 -0800
Date: Thu, 6 Jan 2011 18:22:22 +0800
From: Yu Ke <ke.yu@intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Message-ID: <20110106102222.GC20168@kyu3-hedt>
References: <D094D4EC-55AF-4B52-A011-60EDCD5A46A6@dominion.thruhere.net>
	<1293990824.18787.428.camel@eha>
	<6C85DA8A-40F3-49CD-BBE5-426A648B266E@dominion.thruhere.net>
	<20110106070011.GA20168@kyu3-hedt>
	<A90AA27C-3AEE-4015-9B5B-3E293530B3DB@dominion.thruhere.net>
MIME-Version: 1.0
In-Reply-To: <A90AA27C-3AEE-4015-9B5B-3E293530B3DB@dominion.thruhere.net>
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
X-List-Received-Date: Thu, 06 Jan 2011 10:14:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Jan 06, 08:18, Koen Kooi wrote:
>=20
> Op 6 jan 2011, om 08:00 heeft Yu Ke het volgende geschreven:
>=20
> > On Jan 02, 20:01, Koen Kooi wrote:
> >>=20
> >> Op 2 jan 2011, om 18:53 heeft Esben Haabendal het volgende geschreven:
> >>=20
> >>> On Sun, 2011-01-02 at 18:08 +0100, Koen Kooi wrote:
> >>>> Hi,
> >>>>=20
> >>>> I would like to have the fetchter try my PREMIRROS first before tryi=
ng to fetch from git. In OE I have the following in a bbclass:
> >>>>=20
> >>>> PREMIRRORS_append () {
> >>>> git://.*/.* http://www.angstrom-distribution.org/unstable/sources/
> >>>> }
> >>>>=20
> >>>> When used in OE that works, but in yocto it doesn't. So I tried to d=
o it poky style in a .inc:
> >>>>=20
> >>>> PREMIRRORS_append =3D "\
> >>>> git://.*/.*   http:/www.angstrom-distribution.org/sources/ \n"
> >>>>=20
> >>>> Which also doesn't work since it doesn't try to fetch from there, bu=
t it does mention "http:/www.angstrom-distribution.org/sources/" in the fet=
ch error message when git read-tree fails.
> >>>>=20
> >>>> So my question: how do I make it work in yocto like it works in OE?
> >>>=20
> >>> What about
> >>>=20
> >>> PREMIRRORS_append =3D "\
> >>> git://.*/.*   http:/www.angstrom-distribution.org/sources/\n"
> >>>=20
> >>> ie. without the space before \n
> >>>=20
> >>> I have no idea if it makes sense, but might be worth a try.
> >>=20
> >> Same thing:
> >>=20
> >> DEBUG: Executing task do_fetch
> >> NOTE: package x-load-1_1.44+r17+gitr6f3a26101303051e0f91b6213735b68ce8=
04e94e-r17: task do_fetch: Started
> >> DEBUG: Running export HOME=3D"/home/koen"; export GIT_CONFIG=3D"/OE/te=
ntacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/etc/gitconfig"; =
export PATH=3D"/OE/tentacle/build/tmp-angstrom_2010_x/sysroots/x86_64-linux=
/usr/bin/armv7a-angstrom-linux-gnueabi:/OE/tentacle/build/tmp-angstrom_2010=
_x/sysroots/armv7a-angstrom-linux-gnueabi/usr/bin/crossscripts:/OE/tentacle=
/build/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/sbin:/OE/tentacle/buil=
d/tmp-angstrom_2010_x/sysroots/x86_64-linux/usr/bin:/OE/tentacle/build/tmp-=
angstrom_2010_x/sysroots/x86_64-linux/sbin:/OE/tentacle/build/tmp-angstrom_=
2010_x/sysroots/x86_64-linux//bin:/OE/tentacle/sources/openembedded/scripts=
:/OE/tentacle/sources/bitbake/bin:/OE/tentacle/sources/bitbake/bin:/OE/bitb=
ake/bin:/usr/local/bin:/usr/bin:/bin:/usr/games:/usr/X11/bin:/usr/local/bin=
:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/usr/X11/bin:/usr/lo=
cal/bin:/usr/local/enlightenment/bin:/usr/local/j2re1.4.1/bin:/OE/tentacle/=
sources/openembedded/sc
>  rip
> >> ts"; git log --pretty=3Doneline -n 1 6f3a26101303051e0f91b6213735b68ce=
804e94e -- 2> /dev/null | wc -l
> >> ERROR: Task failed: Unknown fetch Error: http:/www.angstrom-distributi=
on.org/sources/
> >> NOTE: package x-load-1_1.44+r17+gitr6f3a26101303051e0f91b6213735b68ce8=
04e94e-r17: task do_fetch: Failed
> >=20
> > I try to reproduce the issue by:
> > 1. add the following to meta/conf/distro/poky.conf
> >=20
> > PREMIRRORS_append =3D "\
> > git://.*/.*   http://www.angstrom-distribution.org/sources/\n"
> >=20
> > Note: your original URL "http:/www.angstrom-distribution.org/sources/" =
miss a slash after the "http:/", which cause the "Unknown fetch Error".
> >=20
> > 2. bitbake -f -c fetch x-load
> > then the fetcher will try to fetch http://www.angstrom-distribution.org=
/sources/git_www.sakoman.net.git.x-load-omap3.git_65ed00323f3807197a83abc75=
d62ed2a8d3f60de.tar.gz, and failed, because this tar ball does not exist in=
 this mirror.
> >=20
> > so the could you add the corresponding tar ball to the web site, and tr=
y again?
>=20
> I can confirm the following works: http://gitorious.org/angstrom/angstrom=
-layers/commit/e78d521cf0f9310867b660df7743087efdc2642a

Good to see that PREMIRRORS works in your side. one thing i am not quite su=
re is that the above commit use http://www.angstrom-distribution.org/unstab=
le/sources/ as PREMIRRORS, but http://www.angstrom-distribution.org/unstabl=
e/sources/ only contains a webcam-tools svn repo, which looks not a valid m=
irror, so i am not sure how it works. or maybe i miss something here?

Regards
Ke

>=20
> regards,
>=20
> Koen
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

