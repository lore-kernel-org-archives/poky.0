Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0113A4C80546
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 09:51:02 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so5296774iyb.35
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 07:51:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=cN45fVTlo8ccnwtOu36eXe7nTNudVIJFI1hPLJr9KzY=;
	b=sEpyXvKRPr/SArTjty/VsDfiAfdkgSNtW6Lx6z932aAUhSwwMr4WMv/nBcDqoLgdVk
	amaWwkyxNIGHddg8ADTCovD6yQFxnhPsx2jKQBOxQSChhi/9OgMoKqmkYChtDPoQqfEw
	+2CgPv2zfwqLm18kJHLKx+vUU1ZFpzB+m+LvQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=g4CFM5GvrmFEBOYwY8NyY5RnXOmVMY9ah4+FLSC1WskiC4zv9n9HjlGSt63aHespBq
	MBXo8f3WOiVrRuMKq2DAEe3UAkACvUMJP/u848Ul5SmrWxjo5Nwtogz8yXVNLw94wqFU
	XX9Jaa4ErW2xMC5AuCIYjZUuZFO8nMlW+kDaM=
MIME-Version: 1.0
Received: by 10.231.19.195 with SMTP id c3mr2993071ibb.176.1297698612253; Mon,
	14 Feb 2011 07:50:12 -0800 (PST)
Received: by 10.231.160.79 with HTTP; Mon, 14 Feb 2011 07:50:12 -0800 (PST)
In-Reply-To: <0d30dc$l2qd90@orsmga001.jf.intel.com>
References: <0d30dc$l2qd90@orsmga001.jf.intel.com>
Date: Mon, 14 Feb 2011 10:50:12 -0500
Message-ID: <AANLkTi=Bd8Q-W=0U0HT883Q-stGq874gttPcvHWchbHO@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1][KERNEL][2.6.37] Add jasperforest BSP meta branch
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
X-List-Received-Date: Mon, 14 Feb 2011 15:51:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 14, 2011 at 10:46 AM, Tom Zanussi <tom.zanussi@intel.com> wrote=
:
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> 'Jasper Forest' refers to the Intel Xeon C5500/C3500 processors, which
> combined with the Intel 3420 PCH chipset (Ibex Peak) make up the
> 'Picket Post' CRB this BSP was developed on.
>
> This is just the kernel BSP infrastructure, the poky layer will
> follow...

ack'd. Looks good. I'll create a branch for the board as well, unless you
want to piggy back it on another board. We have the support to do this,
it just isn't being used at the moment.

Cheers,

Bruce

>
> Please pull.
>
> Thanks,
>
> Tom
>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
> =A0Branch: tzanussi/jasperforest-meta
> =A0Browse:
> http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=3Dtza=
nussi/jasperforest-meta
>
> Tom Zanussi (1):
> =A0jasperforest: create initial BSP infrastructure
>
> =A0.../bsp/jasperforest/jasperforest-standard.scc =A0 =A0 | =A0 =A07 ++
> =A0.../kernel-cache/bsp/jasperforest/jasperforest.cfg | =A0 60 ++++++++++=
++++++++++
> =A0.../kernel-cache/bsp/jasperforest/jasperforest.scc | =A0 =A06 ++
> =A03 files changed, 73 insertions(+), 0 deletions(-)
> =A0create mode 100644 meta/cfg/kernel-cache/bsp/jasperforest/jasperforest=
-standard.scc
> =A0create mode 100644 meta/cfg/kernel-cache/bsp/jasperforest/jasperforest=
.cfg
> =A0create mode 100644 meta/cfg/kernel-cache/bsp/jasperforest/jasperforest=
.scc
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

