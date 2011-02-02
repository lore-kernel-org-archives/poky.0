Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D94434C8007E
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 23:50:28 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so8074348iwn.35
	for <poky@yoctoproject.org>; Tue, 01 Feb 2011 21:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=HoJ2RmdqGXvOm7wcTdp0PL7ERaC3ZtfYhxEBrMHkwBc=;
	b=X7gwDpGY0H0k2+mo4lTAKv0h0f1+TjOaf4hj3NMhYkVbTckGcI62VtNaCqU07ZbYmF
	F+tiQrnlKci2r7dpUJZVjLBQIuErJDtcfvkpfTL/voSGnsoGWOUwUjLdaPFXOHIhEc9P
	HShyeSn+43HWEnTAqJBg4CJndM+zKVnVewMb8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=U1g+qf3au8FTZrwRB4Q08hsqzpE41DuK45tOBptslWDaKa/Nz/fdHHs24hCD4zwJ12
	NqU8U2IKanlW3TVX/OFT0Hs1Xs+pKRsgmc3e+Q9AD82dhq8y9PuNsyM2/2/4u7sCcY4X
	i0AOM8qc5E5vekOFdWPNiGo0CY4/YLKa69pGo=
MIME-Version: 1.0
Received: by 10.231.35.131 with SMTP id p3mr9363425ibd.87.1296625828365; Tue,
	01 Feb 2011 21:50:28 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Tue, 1 Feb 2011 21:50:28 -0800 (PST)
In-Reply-To: <1bdc18$jeo1so@fmsmga002.fm.intel.com>
References: <1bdc18$jeo1so@fmsmga002.fm.intel.com>
Date: Wed, 2 Feb 2011 00:50:28 -0500
Message-ID: <AANLkTi=L2A-C8v6OR1DrLdNDpRsuq3FzOOTPqC=_gJQo@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2][KERNEL][2.6.37] Add sugarbay BSP
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
X-List-Received-Date: Wed, 02 Feb 2011 05:50:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 31, 2011 at 4:18 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> The 'Sugar Bay' platform consists of the Intel Sandy Bridge processor,
> plus the Cougar Point PCH.
>
> This is just the kernel BSP infrastructure, the poky layer will follow
> once I'm back to getting a good build...
>
> Please pull the meta branch as well as tzanussi/yocto/standard/sugarbay.

Merged.

I modified the meta commit to use KMACHINE/KTYPE/KARCH instead
of the existing WRS_* (both work, but I'm converting things now), I also
moved the common-pc-64 branch to be a common-pc-64-base and branched
the sugarbay from there. Since the suguarbay is currently only configuratio=
n
differences from the base BSP, we could have just re-used the branch
(and still can in the future), but I opted to create a branch for it .. for=
 now.

Because of the changes to common-pc-64 branching, I'm going to take
this for a bit of multi-board testing, but should have it out tomorrow.

Cheers,

Bruce

>
> Thanks,
>
> Tom
>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
> =A0Branch: tzanussi/sugarbay-meta
> =A0Browse:
> http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=3Dtza=
nussi/sugarbay-meta
>
> Tom Zanussi (2):
> =A0sugarbay: create initial BSP infrastructure
> =A0sugarbay: enable i915 graphics
>
> =A0.../bsp/sugarbay/sugarbay-standard.scc =A0 =A0 =A0 =A0 =A0 =A0 | =A0 =
=A07 ++
> =A0meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg =A0 =A0| =A0 67 ++++++=
++++++++++++++
> =A0meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc =A0 =A0| =A0 10 +++
> =A03 files changed, 84 insertions(+), 0 deletions(-)
> =A0create mode 100644 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay-standar=
d.scc
> =A0create mode 100644 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.cfg
> =A0create mode 100644 meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

