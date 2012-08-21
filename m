Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C30B6E00346
	for <poky@yoctoproject.org>; Tue, 21 Aug 2012 10:40:54 -0700 (PDT)
Received: by eekd41 with SMTP id d41so26590eek.35
	for <poky@yoctoproject.org>; Tue, 21 Aug 2012 10:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Q7JjeK0ef/isf8zUIYBVldkmQ0as/tVsZEOZCtOsTSQ=;
	b=UqR+BcTdQvQI55XbHUfO5PrYSO2wgjQpbwELM/aSluJHnLjPi7eqjCfJ8fNpF3eSm8
	Nn3uM5vwFJlbqm9HZl8tvRUJs+Em63LdtU/JK6W+e0i86YxiWTTzJ14mw+F6m1VYO47s
	qdtRNP+B6CssGM7P6YZ/5lKwy4qssq05A1Eb0KHb5wzjWiBrfAXbzgnkgJe32wykRK5E
	f/J7qXk2PXC9p2fFwj6pHfg5g2Hh8AVUPxd72P5Pp7bOyDj8flVDTQyjgl9FlxH2UZsd
	HPSK4EsLuG2poeuyjPhuAFQM7jPAvjxcuZ4xzV5wQpBFoCCbAH4fDBXR1+kDAVxWOWOZ
	M6fg==
Received: by 10.14.4.201 with SMTP id 49mr14663099eej.0.1345570853603; Tue, 21
	Aug 2012 10:40:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Tue, 21 Aug 2012 10:40:23 -0700 (PDT)
In-Reply-To: <1345533440.3907.43.camel@ted>
References: <1345533440.3907.43.camel@ted>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 21 Aug 2012 10:40:23 -0700
Message-ID: <CAMKF1sqHnvv0863VfSeXA00q2wR0+5hxmooSuP=MH8MeMjPZmQ@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: atom-pc: Drop glibc --with-tls option, its now the only option for glibc
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Aug 2012 17:40:55 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 21, 2012 at 12:17 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> This option is unused by (e)glibc since 2011 and is the default. It has been
> shown to interact badly with the configure option in ia32-base.inc from meta-intel
> causing a rebuild of the whole system despite the only change being an
> assignment with += vs =. The easiest fix is simply to drop it.

yes, is TLS disabled got atompc somehow ?

>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
> diff --git a/meta-yocto/conf/machine/atom-pc.conf b/meta-yocto/conf/machine/atom-pc.conf
> index 38db414..92d5938 100644
> --- a/meta-yocto/conf/machine/atom-pc.conf
> +++ b/meta-yocto/conf/machine/atom-pc.conf
> @@ -35,7 +35,6 @@ IMAGE_FSTYPES ?= "ext3.lzma live"
>  APPEND += "usbcore.autosuspend=1"
>
>  GLIBC_ADDONS = "nptl"
> -GLIBC_EXTRA_OECONF = "--with-tls"
>
>  EXTRA_OECONF_append_pn-matchbox-panel-2 = " --with-battery=acpi"
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

