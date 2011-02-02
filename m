Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id B7C694C8007E;
	Tue,  1 Feb 2011 23:32:25 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so8063792iwn.35
	for <multiple recipients>; Tue, 01 Feb 2011 21:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=dGSYZZNMoA0I1DcolU/aS0JgfAHWvnkEpSNvheB7Rkk=;
	b=jBfH22W5I3eqZx9EOLU8kLYA9l5xmwWEs6NbPaeUmxYxMK2elIS8CIlqoXkvTWpqBs
	3+Az5+Xox8t+J3UiPi54tqHrIVXcoDAxsTFsgXEcwMP7vG/n4qB5izBdVSjZMSdm1ZwK
	e+UsR5DzEgsAjfdjmRAhidPDP0/7fPkTeymH0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=Et8rTuTe26iGruEMiUjXUgdKu+6+6lWPUTG5Un7ZjL5TxZMmSqYBdxY8evZgdO5C9i
	0ZYY7fizwps1SWYvQLAlvdJJnvUU02UJAZiAeAt5RG1N1QIINWO151/A0D+BKF9cuYso
	OqwKAT8vxP6PbPbYAmoqlyNLHforTxtKdGCW0=
MIME-Version: 1.0
Received: by 10.42.229.193 with SMTP id jj1mr10670664icb.188.1296624745133;
	Tue, 01 Feb 2011 21:32:25 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Tue, 1 Feb 2011 21:32:25 -0800 (PST)
In-Reply-To: <cover.1296580065.git.dvhart@linux.intel.com>
References: <cover.1296580065.git.dvhart@linux.intel.com>
Date: Wed, 2 Feb 2011 00:32:25 -0500
Message-ID: <AANLkTikoY=+z+cwrcgzgpbqBybZ57g0cHKn-aONDLs11@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: poky-bounces@yoctoproject.org
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3][KERNEL][2.6.37] beagleboard xM build and networking
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
X-List-Received-Date: Wed, 02 Feb 2011 05:32:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 1, 2011 at 12:22 PM,  <poky-bounces@yoctoproject.org> wrote:
> From: Darren Hart <dvhart@linux.intel.com>
>
> Please apply the following patches to the meta branch.

merged and staged. Did some minor re-ordering and amending
on the commits. I don't like to push changes and then not be
around, so I'll push this out in the morning.

Cheers,

Bruce

>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib.git
> =A0Branch: dvhart/meta
> =A0Browse: http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/l=
og/?h=3Ddvhart/meta
>
> Thanks,
> =A0 =A0Darren Hart <dvhart@linux.intel.com>
> ---
>
>
> Darren Hart (3):
> =A0make beagleboard build with march=3Darmv7-a
> =A0usb-net: add named feature and config fragment
> =A0beagleboard: add usb-net to beagleboard bsp
>
> =A0.../kernel-cache/bsp/beagleboard/beagleboard.cfg =A0 | =A0 =A07 +++++-
> =A0.../kernel-cache/bsp/beagleboard/beagleboard.scc =A0 | =A0 =A01 +
> =A0meta/cfg/kernel-cache/features/usb-net/usb-net.cfg | =A0 22 ++++++++++=
++++++++++
> =A0meta/cfg/kernel-cache/features/usb-net/usb-net.scc | =A0 =A01 +
> =A04 files changed, 30 insertions(+), 1 deletions(-)
> =A0create mode 100644 meta/cfg/kernel-cache/features/usb-net/usb-net.cfg
> =A0create mode 100644 meta/cfg/kernel-cache/features/usb-net/usb-net.scc
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

