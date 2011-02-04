Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id B17714C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 21:51:56 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so1901416iwn.35
	for <poky@yoctoproject.org>; Thu, 03 Feb 2011 19:51:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=2VlCR63WaGiLyeQ2u0UiNYmTL1XjTlP8tVdSGPqELts=;
	b=rV/5EUBY8S8ShcdA1njewTXWybIHqIH5wWMRggAK7SGelfDs+0eatNXzFeq9a/IsAv
	yXfXlqEtRNwsKi2jJtP5paPrERgnZ0RsPFdozK0uFj/OHFMUDktTfDjESL1rhnZRaAN5
	sGSxqnDNqDfFVF4AWGkO/Iedkz/Ycc70Cut3I=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=p9ID//WQhLoTBTKS0+XJvKHYy/l0KLbZ+Gfj1BN2Su8EoLXbz0ulEmIr+K7f7fxiex
	obFstV2pSKPSKvmh9w6fXcFLZvkCUFH4d84nI4xb8hlvzIGqAfhyftxLTneMPgzacsJ0
	nhZr4KFyxKInKu3rnTngN38kL9irE16Hduf0U=
MIME-Version: 1.0
Received: by 10.231.37.133 with SMTP id x5mr5944038ibd.37.1296791516233; Thu,
	03 Feb 2011 19:51:56 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Thu, 3 Feb 2011 19:51:56 -0800 (PST)
In-Reply-To: <b9dded$hrjbng@orsmga002.jf.intel.com>
References: <b9dded$hrjbng@orsmga002.jf.intel.com>
Date: Thu, 3 Feb 2011 22:51:56 -0500
Message-ID: <AANLkTikTjEjFUdxLQMMwGp2Yvb131ccWt9TqMCBapyAy@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] sugarbay: update kernel SRCREVs
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
X-List-Received-Date: Fri, 04 Feb 2011 03:51:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 3, 2011 at 10:38 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> Update kernel SRCREVs to match linux-yocto.
>
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
> =A0meta-sugarbay/conf/machine/sugarbay.conf | =A0 =A04 ++--
> =A01 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/con=
f/machine/sugarbay.conf
> index 4d58d05..626131d 100644
> --- a/meta-sugarbay/conf/machine/sugarbay.conf
> +++ b/meta-sugarbay/conf/machine/sugarbay.conf
> @@ -53,5 +53,5 @@ PREFERRED_VERSION_xserver-xf86-dri-lite ?=3D "1.9.3"
>
> =A0PREFERRED_VERSION_grub ?=3D "1.98"
>
> -#SRCREV_machine_pn-linux-yocto_sugarbay ?=3D "0431115c9d720fee5bb105f6a7=
411efb4f851d26"
> -#SRCREV_meta_pn-linux-yocto_sugarbay ?=3D "39b796c508a80dcab6b4511b46183=
d4dfee6284d"
> +SRCREV_machine_pn-linux-yocto_sugarbay ?=3D "41ec30ddc42912fec133a533b92=
4e9c56ecda8f9"
> +SRCREV_meta_pn-linux-yocto_sugarbay ?=3D "5a32d7fe3b817868ebb697d2d883d7=
43903685ae"

These will jump again shortly, I'm about to send a merge that includes
lttng support. We still need to come to resolution on how I can have
a global copy AND where we can keep SRCREVs in layers to make
things standalone .. that way I could update these for you when CVEs
and dot updates start rolling in.

I'll kick that discussion up again.

Cheers,

Bruce

> --
> 1.7.0.4
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

