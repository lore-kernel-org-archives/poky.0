Return-Path: <eric@eukrea.com>
Received: from smtp3-g21.free.fr (smtp3-g21.free.fr [212.27.42.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6D5FE01514;
	Wed,  6 Mar 2013 14:05:21 -0800 (PST)
Received: from e6520eb (tal33-3-82-233-81-124.fbx.proxad.net [82.233.81.124])
	(Authenticated sender: eukrea)
	by smtp3-g21.free.fr (Postfix) with ESMTPSA id 2E618A6296;
	Wed,  6 Mar 2013 23:04:52 +0100 (CET)
Date: Wed, 6 Mar 2013 23:04:51 +0100
From: Eric =?UTF-8?B?QsOpbmFyZA==?= <eric@eukrea.com>
To: John Weber <rjohnweber@gmail.com>
Message-ID: <20130306230451.228caae1@e6520eb>
In-Reply-To: <5137BB73.2050607@gmail.com>
References: <51375B7C.9010106@gmail.com> <20130306224808.6efe1351@e6520eb>
	<5137BB73.2050607@gmail.com>
Organization: =?UTF-8?B?RXVrcsOpYQ==?= Electromatique
X-Mailer: Claws Mail 3.9.0 (GTK+ 2.24.13; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	poky@yoctoproject.org
Subject: Re: [meta-freescale] Firmware loading
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Mar 2013 22:05:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Le Wed, 06 Mar 2013 15:56:03 -0600,
John Weber <rjohnweber@gmail.com> a =C3=A9crit :
> Thanks for the help.  I've since broken the driver out of the kernel and=
=20
> modprobed it with the same results.  This allows me to start udevadm to s=
ee some=20
> debug output from udev, but it still fails.  I've manually created a firm=
ware=20
> helper script as well, and that's not even being executed at the moment.
>=20
> It just seems like this kind of thing is already being done as the i.MX6 =
vpu=20
> firmware is needed (not being loaded into the filesystem now, but that is=
 a=20
> different issue), as well as other machines use atheros wifi modules.  Th=
is=20
> seems that I'm missing something.
>=20
stupid question, but do you have
CONFIG_FW_LOADER=3Dy
in your kernel config ?

Maybe you can post the udev log also as it may contain some hints.

Eric

