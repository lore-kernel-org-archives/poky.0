Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4206F4C80334
	for <poky@yoctoproject.org>; Thu,  9 Jun 2011 05:59:08 -0500 (CDT)
Received: by wyb40 with SMTP id 40so1544085wyb.35
	for <poky@yoctoproject.org>; Thu, 09 Jun 2011 03:59:08 -0700 (PDT)
Received: by 10.227.36.212 with SMTP id u20mr658483wbd.35.1307617147877;
	Thu, 09 Jun 2011 03:59:07 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id fl19sm1124604wbb.66.2011.06.09.03.59.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 09 Jun 2011 03:59:06 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4DF0A70C.7080501@windriver.com>
Date: Thu, 9 Jun 2011 12:59:05 +0200
Message-Id: <AE4FCBC5-C286-4353-AD39-A7782693701D@dominion.thruhere.net>
References: <4DF0A70C.7080501@windriver.com>
To: Kang Kai <kai.kang@windriver.com>
X-Mailer: Apple Mail (2.1084)
Cc: "poky@yoctoproject.org Project" <poky@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: Question about apply eglibc configurability to create minimal image
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
X-List-Received-Date: Thu, 09 Jun 2011 10:59:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<broken record>
These things need to get posted to the oe-core list, not the poky list
</broken record>

Op 9 jun 2011, om 12:57 heeft Kang Kai het volgende geschreven:

> Hi Mark,
>=20
> I am focus on eglibc itself compilation with disabling all the =
configurable options, right now eglibc can be compiled with disable all =
the configurable options.
>=20
> But when I build core-image-minimal in a clear new directory, some =
packages build failed and they need eglibc supports, such as
>=20
> gcc-runtime    depends on     libc-libm
> ncurse            depends on    libc-posix-wchar-io =
libc-posix-clang-wchar
> openssl           depends on    libc-inet libc-nsswitch
> gettext            depends on    libc-spawn libc-locale-code =
libc-getlogin libc-utmp
> ...
>=20
> After enable those options, the image size only decrease from 9.6M  to =
9.4M(qemux86). And the dependencies on eglibc is hard to break, =
something like  libcrypt getlogin(function) can't be breaken.
> Could you give me some directions what should I do with eglibc =
configurability?
> Thanks a lot!
>=20
> I made a mistake that try eglibc configurability in a directory which =
has build core-image-minimal, so the packages which depend on eglibc =
didn't rebuild, and I didn't find the dependency before. I am sorry!
>=20
> Regards,
> Kai
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


