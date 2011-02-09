Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id C1B9E4C8007E
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 19:27:55 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so6843351iwn.35
	for <poky@yoctoproject.org>; Tue, 08 Feb 2011 17:27:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=ZWM0DbbMG+ajiOMEq4A3MdpccUu0c7rsah/aJqbsE4Q=;
	b=kB12QPeTqplC0fYMzIxRcwS+Zb+xeibj/VMHL8o0HBKWPegJoAMymYmblsrSE7IKQf
	FdW//8xeR3Kl5T6Fdk7zBTsN+fyM8gue957YXULXsd1OZaqHPJND9C8cFbrdMN/qj3Ik
	hYvc1iX8lAa5vYmEIfnpPLcX3BWVP7gUa+5WI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=PXvdo1Hx6jPzH8VEYVgNatY6MJuygQYjjZUjcvFlVd054U+C1xwH2NvrOM95wc402v
	Pup3TrVQQ27lINxasdGjYGDf4/E8K37um8gWxR+3VUI8V42T7UyMfU/ELJJyQtBNKLvI
	cfw5eh1SR/kwGHudMXPRG8yfsou0poWL6ZhiY=
MIME-Version: 1.0
Received: by 10.231.35.205 with SMTP id q13mr4438006ibd.12.1297214874900; Tue,
	08 Feb 2011 17:27:54 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Tue, 8 Feb 2011 17:27:54 -0800 (PST)
In-Reply-To: <4D51B86E.7060709@linux.intel.com>
References: <4D51B86E.7060709@linux.intel.com>
Date: Tue, 8 Feb 2011 20:27:54 -0500
Message-ID: <AANLkTikfEdzi+-xo6JGW_Rv1SJ067MApTUxWQps9uZgc@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: History and intentions of linux.inc ?
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
X-List-Received-Date: Wed, 09 Feb 2011 01:27:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 8, 2011 at 4:41 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> I've stumbled over a couple of interesting bits in the existing
> recipes-kernel/linux/linux.inc, for example (but not limited to):
>
>> do_install_prepend() {
>> =A0 =A0 =A0 =A0 if test -e arch/${ARCH}/boot/Image ; then
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0ln -f arch/${ARCH}/boot/Image arch/${ARCH}/bo=
ot/uImage
>> =A0 =A0 =A0 =A0 fi
>
> On a recent kernel, the above will overwrite a valid uImage with Image,
> resulting in a non-bootable set of files in deploy/images.
>
>>
>> =A0 =A0 =A0 =A0 if test -e arch/${ARCH}/boot/images/uImage ; then
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0ln -f arch/${ARCH}/boot/images/uImage arch/${=
ARCH}/boot/uImage
>> =A0 =A0 =A0 =A0 fi
>
> The arch/arm/boot/images directory does not exist on a current kernel
> (2.6.35-linaro anyway).
>
>
> Does anyone know the historical significance and/or intent of this code?
> Are there architectures for which this does something sane? After
> reading through linux.inc, I'm inclined to avoid using it for the
> meta-linaro kernel, and then going after it with chainsaw.
>
> Anyone have anything to add before I start cutting?

You already know my opinion (since as Gary pointed out, I side stepped
much of what's in there), but I'll throw a word in here as well.

Although I don't know all the history, you can see how the code was
needed at different points, but as we move forward it isn't used in the
same way, and can definitely use some spring cleaning.

I'm factoring out the dtb code (it's good) into something that can be inclu=
ded
from multiple places, but there are parts of linux.inc that look like they =
can
be tossed since they modify things like the kernel config in ways that aren=
't
always appropriate.

The base kernel class also has good that can use some cleaning (the
uImage, etc) and we'll tackle that in good time as well.

Cheers,

Bruce

>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

