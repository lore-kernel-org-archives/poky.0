Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 896754C80050
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 17:24:13 -0600 (CST)
Received: by wwb31 with SMTP id 31so12028101wwb.11
	for <poky@yoctoproject.org>; Mon, 06 Dec 2010 15:24:12 -0800 (PST)
Received: by 10.227.132.137 with SMTP id b9mr6512052wbt.48.1291677851752;
	Mon, 06 Dec 2010 15:24:11 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id 11sm3818571wbj.1.2010.12.06.15.24.10
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 06 Dec 2010 15:24:11 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4CFD6EFA.8050503@linux.intel.com>
Date: Tue, 7 Dec 2010 00:24:09 +0100
Message-Id: <9CD5F035-CD09-492D-9066-7C1C770E6105@dominion.thruhere.net>
References: <4CFD6EFA.8050503@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Proper recipe naming and PV definition
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
X-List-Received-Date: Mon, 06 Dec 2010 23:24:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 7 dec 2010, om 00:17 heeft Darren Hart het volgende geschreven:

> I'm having trouble determining what the best practice is for naming a =
linux kernel recipe.
>=20
> The meta-linaro layer contains a linux-linaro recipe, and eventually =
I'd like it to contain two. One for the stable kernel and one for the =
development kernel. These are currently 2.6.35 and 2.6.37 respectively. =
I currently have:
>=20
> linux-linaro-2.6.35_git.bb
> PV=3D2.6.35
>=20
> This results in directory names in the build tree like:
> linux-linaro-2.6.36_2.6.35 (or similar, with the version duplicated). =
As I understand it, the PV _must_ contain a standard Linux kernel =
version along the lines of 2.6.[0-9]+-* (and parsing fails without it).
>=20
> In order to both track the version and distinguish between stable and =
dev, would something like the following be appropriate? This also =
replaces _git with _KERNELVER (as proposed by Marcin).
>=20
> linux-linaro-stable_2.6.35.bb
> PV=3D2.6.35+git${SRCREV}
>=20
> linux-linaro-dev_2.6.37.bb
> PV=3D2.6.37+git${SRCREV}

using that will break upgrade paths since git revisions aren't =
monotonically increasing. I use something like this:

PV =3D "2.6.36+2.6.37-rc4"
PR =3D "r3"
PR_append =3D "+gitr${SRCREV}"
SRCREV =3D "a04fd22204b13ce34a3f8a8157f83c44d64f8da9"

And increase PR manually everytime SRCREV changes.

regards,

Koen=

