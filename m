Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B6AC4C80FA5;
	Mon, 31 Jan 2011 08:11:24 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so5495198iyb.35
	for <multiple recipients>; Mon, 31 Jan 2011 06:11:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=qXCF/1FHZ7TI5fnxZhk13zQflS6b2kcsQEq1SFaEa4o=;
	b=OaZW8+loB0B1K1Azdh/euqpjsXIfgQyztzFT15iE52NbA/aDZxyXsCfUQV9eBqTiuL
	8Q2Vvcrr/UB/aKq3foFxjEm97euSC+ZX5o/3QfZYkE89pmWHA4ChYiIQYlR3J88gRIs1
	0PI1N7yjB9FDyYZPW89eHOJo1r/0WMQDj4CNM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=v4pQTA8DKwY0UYo+evbHhsgZTh/JFTpoYWM5gif9rqdpW7v5lUMG891/HpUG2AAcZ2
	3t5X55K5PO2ySGribHgEz3R+0466sQ3OEDbBLunxWxF43uXAjS30fsCjvzFS/Tm7HznF
	dwa/c5mzqYrvha3RYAWDnen1GQFGKo6III558=
MIME-Version: 1.0
Received: by 10.231.34.9 with SMTP id j9mr6568751ibd.137.1296483083329; Mon,
	31 Jan 2011 06:11:23 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Mon, 31 Jan 2011 06:11:23 -0800 (PST)
In-Reply-To: <cover.1296261421.git.darren@dvhart.com>
References: <cover.1296261421.git.darren@dvhart.com>
Date: Mon, 31 Jan 2011 09:11:23 -0500
Message-ID: <AANLkTinaZJzTa2O=6bPxYKOc_W+iDCjogTyMxqMNOJVG@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: poky-bounces@yoctoproject.org
Cc: Nishanth Menon <nm@ti.com>, Tony Lindgren <tony@atomide.com>,
	John Rigby <john.rigby@linaro.org>, poky@yoctoproject.org,
	Koen Kooi <koen@beagleboard.org>
Subject: Re: [PATCH 0/2] linux-yocto: arm fixes, beagleboard hub and OMAP4 armv7-a +sec extension
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
X-List-Received-Date: Mon, 31 Jan 2011 14:11:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 28, 2011 at 7:40 PM,  <poky-bounces@yoctoproject.org> wrote:
> From: Darren Hart <darren@dvhart.com>
>
> Please apply the following patches to the yocto/standard/base branch and =
rebase
> at least yocto/standard/beagleboard on base. With these patches in place =
and
> the corresponding meta patches to follow, the Beagleboard xM will boot th=
e
> linux-yocto kernel.

I'll keep the cc' list on this reply since it has been already started, but
as the out of band comms indicated we'll try and streamline this in
the future.

These look good, I've pulled them into my tree and am testing them
along side other updates, they'll be pushed out in the next day or
so.

Cheers,

Bruce

>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib.git
> =A0Branch: dvhart/base
> =A0Browse: http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/l=
og/?h=3Ddvhart/base
>
> Thanks,
> =A0 =A0Darren Hart <darren@dvhart.com>
> ---
>
>
> John Rigby (1):
> =A0OMAP4: enable smc instruction in new assembler versions
>
> Koen Kooi (1):
> =A0omap3: beaglexm: fix EHCI power up GPIO dir
>
> =A0arch/arm/mach-omap2/Makefile =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A05 +++--
> =A0arch/arm/mach-omap2/board-omap3beagle.c | =A0 10 ++++++++--
> =A02 files changed, 11 insertions(+), 4 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

