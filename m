Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABAA14C810B6
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 12:05:27 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so2112901iyb.35
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 10:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=JQtNaSHoeJlnjevzy0Sqw6PNqsi2eHjlW2A/faNfemI=;
	b=jiSsFq5dYltiGnJayw599FfO0emEHeHiP6z8X90LpHTqN46BgZMvGejv4x93dNC0hp
	/1SPDWV4qPaFjliznGxXRx43l1ixEzsutegPDweLXla5lXFQSPoePud8osnv53t1//bC
	XbwchcokWQjq7r0Hs1OgURwGr4IlCMwZwNi84=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=UAVbNkEx2PT3m4C24OLRniAeFS1YuGKQgVziDwJs+dZz/ICKcr3Ii/FHTadaWYxYjH
	4YbinHk1LsblDieqv1F+6I7HzriDBwuwAOMyr79ooagO6qmkiTbSczLiISts/8XJSfqT
	lfQvI2602OQCF/Lg2NDz+Ao1ckhXFiWJ89AUA=
MIME-Version: 1.0
Received: by 10.231.13.137 with SMTP id c9mr1124618iba.37.1295633127218; Fri,
	21 Jan 2011 10:05:27 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Fri, 21 Jan 2011 10:05:27 -0800 (PST)
In-Reply-To: <cover.1295627451.git.dvhart@linux.intel.com>
References: <cover.1295627451.git.dvhart@linux.intel.com>
Date: Fri, 21 Jan 2011 13:05:27 -0500
Message-ID: <AANLkTikSnhTYW-drjN2NE+qoPTFvyjZvvSN12nyTvD42@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] linux-2.6-windriver: Beagleboard revision detection and gpio write-protect mapping
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
X-List-Received-Date: Fri, 21 Jan 2011 18:05:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 21, 2011 at 11:37 AM, Darren Hart <dvhart@linux.intel.com> wrot=
e:
> The existing board detection doesn't work for all board types. The GPIO p=
ins are
> mapped differently, particularly the SD card write-protect lines. These p=
atches
> fix a boot hang on the Beagleboard xM due to the xM using a micro SD whic=
h
> doesn't have WP lines.
>
> The following patches already exist in mainline and apply without modific=
ation
> to the linux-2.6-windriver git tree.
>
> Please merge dvhart/beagleboard-standard with beagleboard-standard.

Grabbed them and amended with the upstream commit IDs for tracking.
SRCREV bumps shortly. My build worked here.

Bruce

>
> Pull URL: git://git.pokylinux.org/linux-2.6-windriver-contrib.git
> =A0Branch: dvhart/beagleboard-standard
> =A0Browse: http://git.pokylinux.org/cgit.cgi/linux-2.6-windriver-contrib/=
log/?h=3Ddvhart/beagleboard-standard
>
> Thanks,
> =A0 =A0Darren Hart <dvhart@linux.intel.com>
> ---
>
>
> Robert Nelson (3):
> =A0omap: Beagle: revision detection
> =A0omap: Beagle: only Cx boards use pin 23 for write protect
> =A0omap: Beagle: no gpio_wp pin connection on xM
>
> =A0arch/arm/mach-omap2/board-omap3beagle.c | =A0 93 +++++++++++++++++++++=
+++++++++-
> =A01 files changed, 92 insertions(+), 1 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

