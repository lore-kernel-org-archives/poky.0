Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C2414C80BEF
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 11:49:58 -0600 (CST)
Received: by eyz10 with SMTP id 10so2748954eyz.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 09:49:53 -0800 (PST)
Received: by 10.14.48.2 with SMTP id u2mr3550631eeb.30.1295286592804;
	Mon, 17 Jan 2011 09:49:52 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id u1sm3802764eeh.4.2011.01.17.09.49.51
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 09:49:51 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <201101171739.11871.paul.eggleton@linux.intel.com>
Date: Mon, 17 Jan 2011 18:49:50 +0100
Message-Id: <70090900-23FE-47B2-A272-907BD804799C@dominion.thruhere.net>
References: <cover.1295282922.git.paul.eggleton@linux.intel.com>
	<70F8AFBB-708E-44C2-8C07-BA394242B311@dominion.thruhere.net>
	<201101171739.11871.paul.eggleton@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/8] Add meta-toolchain-qte from OE
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
X-List-Received-Date: Mon, 17 Jan 2011 17:49:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 17 jan 2011, om 18:39 heeft Paul Eggleton het volgende geschreven:

> On Monday 17 January 2011 17:14:59 Koen Kooi wrote:
>> FWIW, there's a more comprehensive integration for qt 4.6.3 and qt =
4.7.1
>> available at http://cgit.openembedded.org/cgit.cgi/meta-openembedded/ =
.
>=20
> Sounds good, I'll check it out.
>=20
> (FYI I only skipped 4.7.x for simplicity in this first round of =
patches,=20
> pulling that across from OE master was going to be my next step.)
>=20
>> It would be nice to get the feature rich QT stuff from OE into yocto
>> instead of something that lacks features. With my TI hat on: I have
>> customers using the mysql bindings. With my Koen hat on: I use the
>> postgres bindings :)
>=20
> Awesome :) I think we definitely want to have solid Qt4 support in =
Yocto, so if=20
> what you have in meta-openembedded is more polished then I'll start =
looking at=20
> pulling that in rather than using what's in OE master.=3D

It's a cleaned up version of what's in OE. I based it on the yocto =
files, so you'll get a lot of whitespace noise when trying to diff with =
OE, but diffing it with yocto should be reasonably eye-bleed free.

regards,

Koen=

