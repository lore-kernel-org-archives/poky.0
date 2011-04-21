Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f51.google.com (mail-ww0-f51.google.com [74.125.82.51])
	by mx1.pokylinux.org (Postfix) with ESMTP id 55A704C80050
	for <poky@lists.yoctoproject.org>; Thu, 21 Apr 2011 03:07:21 -0500 (CDT)
Received: by wwf26 with SMTP id 26so1700749wwf.8
	for <poky@lists.yoctoproject.org>; Thu, 21 Apr 2011 01:07:20 -0700 (PDT)
Received: by 10.216.155.17 with SMTP id i17mr1228845wek.71.1303373238880;
	Thu, 21 Apr 2011 01:07:18 -0700 (PDT)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id d59sm814993wed.45.2011.04.21.01.07.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 21 Apr 2011 01:07:17 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1303342638.5518.325.camel@rex>
Date: Thu, 21 Apr 2011 10:07:16 +0200
Message-Id: <D7FBAE99-F5F4-4293-8DC5-BC356F7CF903@dominion.thruhere.net>
References: <1303342638.5518.325.camel@rex>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
X-Mailer: Apple Mail (2.1084)
Cc: poky <poky@lists.yoctoproject.org>
Subject: Re: [OE-core] OE-Core Rebranding Phase 1
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
X-List-Received-Date: Thu, 21 Apr 2011 08:07:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 21 apr 2011, om 01:37 heeft Richard Purdie het volgende geschreven:

> Hi,
>=20
> At the face to face OE TSC meeting we talked over the "branding" =
issues
> on OE-Core and what we were going to do about removing many of the =
poky
> references.
>=20
> This email represents a turning point for OE-Core as it marks the =
first
> pass of rebranding and is based on decisions the TSC made at that
> meeting. I'm not going to claim its 100% complete yet but it does give
> us a good start at it. =46rom this point on, I'll be taking patches =
from
> people to assist with this. The key changes I've made so far are:
>=20
> * poky-init-build-env -> oe-init-build-env
> * poky-image-* -> core-image-*
> * task-poky-* -> task-core-*
> * git.pokylinux.org -> git.yoctoproject.org
> * POKYBASE -> COREBASE
> * poky-qemu -> runqemu
> * Sanitised local.conf.sample from Poky references
> * POKY_NATIVE_SYSROOT -> OECORE_NATIVE_SYSROOT
> * Renamed scrips/poky-* to scripts/oe-*
> * Renamed the poky-sb override to linuxstdbase
> * POKY_CONF_VERSION -> LOCALCONF_VERSION
> * Made sanity versions weak assignment

Richard,

Thanks for taking the time to do this. I did a quick check and meta-oe, =
meta-efl, meta-angstrom, meta-texasinstruments and meta-shr seem to be =
up to date with those changes now.

regards,

Koen=

