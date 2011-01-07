Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f172.google.com (mail-iy0-f172.google.com
	[209.85.210.172])
	by mx1.pokylinux.org (Postfix) with ESMTP id E879B4C80B70
	for <poky@lists.pokylinux.org>; Thu,  6 Jan 2011 21:06:12 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyi42 with SMTP id 42so15929359iyi.3
	for <poky@lists.pokylinux.org>; Thu, 06 Jan 2011 19:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=p7R1SDB60y36NkJD7+UjzzHvXMIvuEfWgTPFPmVae5Y=;
	b=GueD2G5ycU2zziI22G8FW+SoPeZDNSlJISyPbVILbYyj45glr+axMllC9vG2Z3ipU6
	W3NcNBOE1dlniN6tFgfGIlgyOHu456/rT6CyswqnzylQYIAt8dFFOu/N4G2VS1QO8b08
	P+qUo/UDNr7Svtzb8p5rQ/ddhK+37leBz1oUU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=G6OybgVaZv/xRv/I6bAvxPvqbccP2wsSa4TQfV3r4m56LN/XBJkH3l6CqcIDfHkm2f
	lu5ODe2P0ZIKjII6S/8hXR+OPqOlAD3cyDvZCFYMmjwIDPInmMxAcfGoM6keU6fDAoNg
	0XsFB/xpnyggqR71VDrsQIeYPaaui0Om4jO/Q=
MIME-Version: 1.0
Received: by 10.231.13.137 with SMTP id c9mr24970774iba.37.1294369572348; Thu,
	06 Jan 2011 19:06:12 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Thu, 6 Jan 2011 19:06:12 -0800 (PST)
In-Reply-To: <4D26588E.7070701@mlbassoc.com>
References: <4D26588E.7070701@mlbassoc.com>
Date: Thu, 6 Jan 2011 22:06:12 -0500
Message-ID: <AANLkTikFj5SROL4Thc3Aj8VK6oLudeVz=2vSRiJ8jOM9@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: SRCREV_FORMAT breaks my builds
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
X-List-Received-Date: Fri, 07 Jan 2011 03:06:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 6, 2011 at 7:04 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> My system builds on the Poky meta layer (only), plus my
> target layers. =A0As of an update today, I now get errors
> parsing any package (in meta) which uses SRCREV_FORMAT.
>
> The error (bitback tracebacks) is attached.
>
> I see these recipes with SRCREV_FORMAT:
> =A0./meta/recipes-kernel/linux/linux-yocto-stable_git.bb:SRCREV_FORMAT =
=3D
> "meta_machine"
> =A0./meta/recipes-kernel/linux/linux-yocto_git.bb:SRCREV_FORMAT =3D
> "meta_machine"
> =A0./meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.=
bb:SRCREV_FORMAT
> =3D "meta_machine"
>
> This error happens because I have my own machine(s) which
> are not listed in poky-default-revisions.inc, such as:
> =A0SRCREV_machine_pn-linux-yocto-stable_beagleboard ?=3D
> "0431115c9d720fee5bb105f6a7411efb4f851d26"
> adding such an entry for my machine into my distribution
> files does work past the problem.

Interesting. I've suffered my fair share of SRCREV pain, but this time I
haven't touched anything in days, and a quick look didn't show me
any suspect commits. But from the traces, it is does look to me to be
another case of the fetcher going out and attempting to validate the
branches in the SRC_URI of the yocto kernel.

Did you try bisecting a bit to narrow down on the offending commit ?
I'm not seeing it myself, but if I reproduce it here, I'll try locate what'=
s
up. There has been fetching work ongoing, but it doesn't appear to be
the cause here.

I may be able to drop a sane default in the recipes that will keep
this working, but until I reproduce it, I can't run effective experiments.
It should simply be pointing at the fallback branches and going merrily
along in the build

I'll continue to try and reproduce this here.

Bruce

>
> Since I have my own machines and linux recipes, the linux-yocto
> ones are not needed and indeed cause pain. =A0How can I ignore
> them (since I want to use the poky meta layer untouched)?
>
> Thanks
>
> --
> ------------------------------------------------------------
> Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the
> MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world
> ------------------------------------------------------------
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

