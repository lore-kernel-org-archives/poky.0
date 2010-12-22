Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDC184C80050
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 08:08:08 -0600 (CST)
Received: by wye20 with SMTP id 20so5403603wye.35
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 06:08:08 -0800 (PST)
Received: by 10.216.46.135 with SMTP id r7mr10626421web.21.1293026887529;
	Wed, 22 Dec 2010 06:08:07 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id r6sm3142957weq.44.2010.12.22.06.08.06
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 22 Dec 2010 06:08:06 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1293026566.13942.7.camel@scimitar>
Date: Wed, 22 Dec 2010 15:08:05 +0100
Message-Id: <F896D0B4-B5E5-4EC2-9287-7EDF5E8B098A@dominion.thruhere.net>
References: <C40A274E-BE70-4CE5-87D3-81F65CAF51AA@dominion.thruhere.net>
	<1293026566.13942.7.camel@scimitar>
To: Joshua Lock <josh@openedhand.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: Replacement for fakeroot do_install()?
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
X-List-Received-Date: Wed, 22 Dec 2010 14:08:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 22 dec 2010, om 15:02 heeft Joshua Lock het volgende geschreven:

> On Wed, 2010-12-22 at 14:48 +0100, Koen Kooi wrote:
>> Hi,
>>=20
>> What's is the pseudo way to do fakeroot do_install()? I have a number
>> of OE recipes that still use fakeroot and I would like to get rid of
>> that in the OE layer for yocto.
>=20
> fakeroot is a flag which tells the runqueue to load appropriate
> environment variables for running the task under a fakeroot like
> program, and as such it's still perfectly valid whether you're using
> fakeroot or pseudo.
>=20
> tl;dr
>=20
> fakeroot do_install() is the pseudo way too

Thanks!

It turns out to be a stray DEPENDS: =
http://cgit.openembedded.org/cgit.cgi/meta-openembedded/commit/?id=3D8bb67=
22b1356cc3b8494e33553240363addd2d80

regards,

Koen


