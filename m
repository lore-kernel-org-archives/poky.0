Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f172.google.com (mail-iy0-f172.google.com
	[209.85.210.172])
	by mx1.pokylinux.org (Postfix) with ESMTP id 30D574C80BCF
	for <poky@lists.pokylinux.org>; Wed, 26 Jan 2011 07:58:07 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyi42 with SMTP id 42so408886iyi.3
	for <poky@lists.pokylinux.org>; Wed, 26 Jan 2011 05:58:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=lHRfKMVbgaARd1zUJ5Fx0lEosqxMiR6HJwN26U0Wr1M=;
	b=Y2/35PMttClVpKKKpIMbIAXhHW5hpOhdil983It1d/QlKUAMwHPyZgHqWfrmSnuabV
	m/ZP+yr9FLxM9yxSjBwlb7KaIa9ejiS+X6j+mGmKxx4CFgP6wmshZXlcdkN+L70XagS1
	0ftyx+07EBVRNfiQlxx4ZNQTaKdCa5mvRPOiE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=lXomTljf8yIYEEl1NUYDfohXevzaStraaCHiVRSRxXMUMG+W2LOuDnQ9aeKQ3NhR8A
	YrwtaA+vbwi745ne0fuEsLg0eIi1fmbUUAe7wEfTnLm5dGDdS8hFQBFZ+v+efwKWtrjD
	FAzZJEPs2dyHIGXtiCBrL8NH6skGTD66bdyu8=
MIME-Version: 1.0
Received: by 10.231.199.10 with SMTP id eq10mr8139378ibb.112.1296050286701;
	Wed, 26 Jan 2011 05:58:06 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Wed, 26 Jan 2011 05:58:06 -0800 (PST)
In-Reply-To: <4D4026AC.1030706@mlbassoc.com>
References: <4D40251F.5070906@mlbassoc.com>
	<4D4026AC.1030706@mlbassoc.com>
Date: Wed, 26 Jan 2011 08:58:06 -0500
Message-ID: <AANLkTimteGhJd8rRdTYAnZAWP_a54_WuRpQ_P84pns8q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: No joy on "standard" PC
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
X-List-Received-Date: Wed, 26 Jan 2011 13:58:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 26, 2011 at 8:50 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 01/26/2011 06:43 AM, Gary Thomas wrote:
>>
>> I finally got Poky to build for a standard PC (actually atom-pc
>> so I could build a live/bootable image). Sadly, that's all I
>> have is an image as I can't get it to run anywhere :-(
>>
>> * On my laptop (the point of this exercise) which is an older
>> Pentium-III machine, the kernel crashes almost immediately.
>
> Exact same failure on my [newer] AMD/2800 tower.

I'll start some builds up here and see how things perform around
here.  I've largely been building and booting the emulator for
x86 and the non-x86 hardware targets. But this sounds like something
worth taking for a spin.

Cheers,

Bruce


>
>>
>> * On my brand new laptop (Core-i3), I couldn't get it to even
>> try...
>>
>> * On a VirtualBox machine, it boots but then sits forever
>> "waiting for removable media"...
>>
>> Oh well, back to my OMAP that at least boots :-(
>>
>
> --
> ------------------------------------------------------------
> Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the
> MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world
> ------------------------------------------------------------
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

