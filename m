Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ew0-f48.google.com (mail-ew0-f48.google.com
	[209.85.215.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id C6E004C81065
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 12:38:39 -0600 (CST)
Received: by ewy20 with SMTP id 20so3443556ewy.35
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 10:38:39 -0800 (PST)
Received: by 10.216.154.136 with SMTP id h8mr4770901wek.84.1295374804807;
	Tue, 18 Jan 2011 10:20:04 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	o51sm3143804wes.39.2011.01.18.10.20.04
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 18 Jan 2011 10:20:04 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <AANLkTimQe+wMuRZjmQ+y0PAhN7Gby67FH99cMa4AgicS@mail.gmail.com>
Date: Tue, 18 Jan 2011 19:20:03 +0100
Message-Id: <A56E829D-33C6-470D-9EAF-DC60198188DA@dominion.thruhere.net>
References: <5D53183E-2C2C-4DAC-9ED9-51DA01F33E77@dominion.thruhere.net>
	<AANLkTimQe+wMuRZjmQ+y0PAhN7Gby67FH99cMa4AgicS@mail.gmail.com>
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.1082)
Subject: Re: install-info creates package clashes for e.g. external python tarball
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
X-List-Received-Date: Tue, 18 Jan 2011 18:38:40 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 18 jan 2011, om 18:51 heeft Chris Larson het volgende geschreven:

> On Tue, Jan 18, 2011 at 12:51 AM, Koen Kooi =
<koen@dominion.thruhere.net> wrote:
>> When building external-python-tarball I get:
>>=20
>>=20
>> |  * check_data_file_clashes: Package libreadline6 wants to install =
file =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
external-python-tarball-1.0-r0/sdk/image/usr/local/angstrom/x86_64/sysroot=
s/x86_64-angstromsdk-linux/usr/share/info/dir
>> |       But that file is already provided by package  * =
eglibc-nativesdk
>> |  * opkg_install_cmd: Cannot install package python-nativesdk-core.
>>=20
>> I vaguely recall running into this a few years ago in OE, but I can =
only find this one: =
http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=3D7b774a106f=
6936fd050abb4cbe90a84bd0b67025
>>=20
>>=20
>> Does anyone have an idea on how to fix this in yocto without =
resorting to --force-overwrite?
>=20
> I don't know much about info, but I'd take a wild guess that dir is an
> index of what's available, and that we should create a bbclass that
> adds a postinst to update it on install for packages that add files to
> infodir. =20

It is. As I never use info, only man, I would very much like to delete =
it and forget about it. But I'm asking if anyone has a better solution =
:) e.g.

bitbake.conf: PACKAGES =3D+ installinfo-crap ; FILES_installinfo-crap =3D =
${datadir}/info/dir

regards,

Koen

> Maybe someone else actually has a clue about info though :)
> --=20
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics


