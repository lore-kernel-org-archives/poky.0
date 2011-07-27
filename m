Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 91A754C800A1
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 08:20:55 -0500 (CDT)
Received: by wwf4 with SMTP id 4so1316286wwf.11
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 06:20:54 -0700 (PDT)
Received: by 10.216.9.134 with SMTP id 6mr2958739wet.111.1311772854640;
	Wed, 27 Jul 2011 06:20:54 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id n6sm87097wed.16.2011.07.27.06.20.53
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Jul 2011 06:20:54 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1244.3)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <201107271417.45336.paul.eggleton@linux.intel.com>
Date: Wed, 27 Jul 2011 15:20:47 +0200
Message-Id: <ED9B98B8-EA29-4407-9892-D333F803BD71@dominion.thruhere.net>
References: <4E3008DA.8090401@freyther.de>
	<201107271357.22352.paul.eggleton@linux.intel.com>
	<4E300F10.6090102@freyther.de>
	<201107271417.45336.paul.eggleton@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1244.3)
Cc: poky@yoctoproject.org
Subject: Re: Another story of a non upstream user of poky
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
X-List-Received-Date: Wed, 27 Jul 2011 13:20:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 27 jul. 2011, om 15:17 heeft Paul Eggleton het volgende geschreven:

> On Wednesday 27 July 2011 14:13:52 Holger Hans Peter Freyther wrote:
>> Now there appears to be one more bug, PACKAGE_ARCH is
>> not set to the MACHINE_ARCH even after the right interfaces is used. =
Is
>> that known?
>=20
> Hmm, you're right, this is an omission. Presumably for meta-yocto this =
should=20
> be PACKAGE_ARCH_beagleboard =3D "${MACHINE_ARCH}" ?

OE should be doing that automatically since something in SRC_URI is =
getting pulled from a machine specific dir.=

