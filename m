Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id CD1ED4C80050
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 07:45:31 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so561825iwn.35
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 05:45:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=hOMIGd8Wftn5XnP59x8beXNce9I64qwLtdU3aQrHceE=;
	b=uA/huJ9V4zaCCZyT0ffgJS2AwJi1k1dY1w8Dzd+aF8NKkK0HO0R0aws1XYy1ITKzAi
	p+OEBY0oZuuqfC8d/sUdUOvg8M2Yqv4FL1Ku7pMbcCxUv07F6bbqP8ZlyHQA0Eg7YSK4
	Obx40KXOjNx06qSqkGSOUEzx1r8Tc+56/edBw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=pVYlqna3LZBhU+IWxtoJKAx4wdILUIBqXfHr4CKG5k4VMEgkTdsz1JzlTNJPsLxyYt
	Yr7/j/rjoNfaUcRYtYjT+eXIwWsNOSA8FrJ7+1dXvbHQiAgFjlPlYMRCFKvMknJe5L3I
	2J3RnaAYzSaCqSAkWruxrhaksQixwZ+gneroY=
MIME-Version: 1.0
Received: by 10.231.35.131 with SMTP id p3mr956121ibd.87.1294839931267; Wed,
	12 Jan 2011 05:45:31 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Wed, 12 Jan 2011 05:45:31 -0800 (PST)
In-Reply-To: <cover.1293749684.git.dvhart@linux.intel.com>
References: <cover.1293749684.git.dvhart@linux.intel.com>
Date: Wed, 12 Jan 2011 08:45:31 -0500
Message-ID: <AANLkTimkuShXfmK7e2Buw_HM7-ce4OEzjdrd4poYxXfB@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] linux-2.6-windriver: add atom-pc preempt_rt support (RESEND)
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
X-List-Received-Date: Wed, 12 Jan 2011 13:45:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 11, 2011 at 8:45 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> In addition to the patch against the wrs_meta branch to follow, this tree
> also needs the atom-pc-preempt_rt to be created:

So just so I'm clear that I'm not missing anything, this is identical
to the first send ? I have it queued here already, so I won't refresh
anything if this is indeed the same. (and yes, it does look the same,
I just wanted to confirm :)

Bruce

>
> $ git checkout -b atom-pc-preempt_rt common_pc-preempt_rt
>
> Thanks,
> =A0 =A0Darren Hart <dvhart@linux.intel.com>
> ---
>
>
> Darren Hart (1):
> =A0linux-2.6-windriver: atom-pc-preempt_rt meta-data
>
> =A0.../bsp/atom-pc/atom-pc-preempt_rt.scc =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A07 +++++++
> =A01 files changed, 7 insertions(+), 0 deletions(-)
> =A0create mode 100644 wrs/cfg/kernel-cache/bsp/atom-pc/atom-pc-preempt_rt=
.scc
> =A0create mode 100644 wrs/patches/atom_pc-preempt_rt/series
> =A0create mode 100644 wrs/patches/atom_pc-preempt_rt/status
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

