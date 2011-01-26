Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f172.google.com (mail-iw0-f172.google.com
	[209.85.214.172])
	by mx1.pokylinux.org (Postfix) with ESMTP id D50654C80BCF
	for <poky@lists.pokylinux.org>; Wed, 26 Jan 2011 08:24:18 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn40 with SMTP id 40so962660iwn.3
	for <poky@lists.pokylinux.org>; Wed, 26 Jan 2011 06:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=Slck0uxnRB7d9aJbAHEkRvk5dKEGe1doCiK/WgtwIAI=;
	b=SzXKEGaEN+OVms7sB8UBBTwmj6BzdIYiRYHHM8ckx6Ls3opPQcavVaOdDyFvJ5uWfh
	KWL1PzH29RxWGZOe6lvqN+4N7wCpJvpMbEGgHWVgbM7+GIkILczzro7UMWJl6SenN7r1
	M5mPpREH8b+BdWsfa9LdAKOtrwjK7w+mXiYmM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=BH7A6hInndF8Pjq1/q8ahr5zByYM2XAShLBoZb8OI4FeCrN/uc2UY9bSsXd9L1/Q7k
	RpP3VNKqAeBgkwb6HJ37W3+79aDIgz9MeW9pNWlL+KiSsyKj+Z5qElkQCuV+Jn81PLEW
	76XtMG22/hN22jGegVhgvjMZIEgiAteONDvYY=
MIME-Version: 1.0
Received: by 10.231.13.137 with SMTP id c9mr8198395iba.37.1296051858543; Wed,
	26 Jan 2011 06:24:18 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Wed, 26 Jan 2011 06:24:18 -0800 (PST)
In-Reply-To: <4D402D0E.9060400@mlbassoc.com>
References: <4D40251F.5070906@mlbassoc.com> <4D4026AC.1030706@mlbassoc.com>
	<AANLkTimteGhJd8rRdTYAnZAWP_a54_WuRpQ_P84pns8q@mail.gmail.com>
	<4D402D0E.9060400@mlbassoc.com>
Date: Wed, 26 Jan 2011 09:24:18 -0500
Message-ID: <AANLkTi=dEAcr6VsW89fJo+55ud3a5-KabEj+shyj6Ag8@mail.gmail.com>
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
X-List-Received-Date: Wed, 26 Jan 2011 14:24:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 26, 2011 at 9:17 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 01/26/2011 06:58 AM, Bruce Ashfield wrote:
>>
>> On Wed, Jan 26, 2011 at 8:50 AM, Gary Thomas<gary@mlbassoc.com> =A0wrote=
:
>>>
>>> On 01/26/2011 06:43 AM, Gary Thomas wrote:
>>>>
>>>> I finally got Poky to build for a standard PC (actually atom-pc
>>>> so I could build a live/bootable image). Sadly, that's all I
>>>> have is an image as I can't get it to run anywhere :-(
>>>>
>>>> * On my laptop (the point of this exercise) which is an older
>>>> Pentium-III machine, the kernel crashes almost immediately.
>>>
>>> Exact same failure on my [newer] AMD/2800 tower.
>>
>> I'll start some builds up here and see how things perform around
>> here. =A0I've largely been building and booting the emulator for
>> x86 and the non-x86 hardware targets. But this sounds like something
>> worth taking for a spin.
>
> Thanks. =A0FAOD, here's my build setup:
> =A0OE Build Configuration:
> =A0BB_VERSION =A0 =A0 =A0 =A0=3D "1.11.0"
> =A0METADATA_BRANCH =A0 =3D "local_master"
> =A0METADATA_REVISION =3D "db9b8bc9a34f3f486d6ce948a073a1f042d9dbb7"
> =A0TARGET_ARCH =A0 =A0 =A0 =3D "i586"
> =A0TARGET_OS =A0 =A0 =A0 =A0 =3D "linux"
> =A0MACHINE =A0 =A0 =A0 =A0 =A0 =3D "atom-pc"
> =A0DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D "poky"
> =A0DISTRO_VERSION =A0 =A0=3D "0.9+snapshot-20110126"
> =A0TARGET_FPU =A0 =A0 =A0 =A0=3D ""
>

perfect. This matches what I launched a few minutes ago.

Bruce

> Host CPU =3D Fedora-13/x86
> Building poky-image-sato-live.
>
>>>
>>>>
>>>> * On my brand new laptop (Core-i3), I couldn't get it to even
>>>> try...
>>>>
>>>> * On a VirtualBox machine, it boots but then sits forever
>>>> "waiting for removable media"...
>>>>
>>>> Oh well, back to my OMAP that at least boots :-(
>
> --
> ------------------------------------------------------------
> Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the
> MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world
> ------------------------------------------------------------
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

