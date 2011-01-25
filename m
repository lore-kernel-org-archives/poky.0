Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f172.google.com (mail-iy0-f172.google.com
	[209.85.210.172])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2BFDB4C806DA
	for <poky@lists.pokylinux.org>; Tue, 25 Jan 2011 07:45:23 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyi42 with SMTP id 42so5346623iyi.3
	for <poky@lists.pokylinux.org>; Tue, 25 Jan 2011 05:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=n54EjpSPrfzm44l35CTTlyPqhIZqfxrVdNC8hOSqN/4=;
	b=oLK+oimmivkgmi4FBpYxcNTT3OPtL8ByOs4v61qi1M3EZbpf4xxEIQrSwRdrCKlWFO
	8OF6xTSItiin7DBN27fTaDXo2itWRQQBRL79D++hYQEdJu5fYt6NVYY7VOsYgHZ8VtaP
	oS3crBIJsT2kCMwXJ4ZKW61b+q+qjZrUvIHfA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=lalkxwfUEdxymxGs7CsYGIDgi4OTgik1pVRCemZe8opufPeLPq/hLdMSdHB8X4j8Yy
	7h5DlEqXHpQcDATB5mKoBuLe7Raig+4/sspItrMJZML6yeB6cbgL3Fyp4k14NKgm5Wo7
	2RU+lvHwhEdGNmGc+20EjOOHteNoyLuTd/56w=
MIME-Version: 1.0
Received: by 10.231.34.9 with SMTP id j9mr6488420ibd.137.1295963117519; Tue,
	25 Jan 2011 05:45:17 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Tue, 25 Jan 2011 05:45:17 -0800 (PST)
In-Reply-To: <4D3EBD30.2070708@mlbassoc.com>
References: <4D3D6AFC.8060300@mlbassoc.com> <1295872759.14388.44775.camel@rex>
	<4D3E0323.2080905@linux.intel.com> <4D3EBD30.2070708@mlbassoc.com>
Date: Tue, 25 Jan 2011 08:45:17 -0500
Message-ID: <AANLkTimCPy=tcgDqqgiT6Lzu7z=KZLvBA9839Y12=Gj8@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Poky on "standard" PC
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
X-List-Received-Date: Tue, 25 Jan 2011 13:45:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 25, 2011 at 7:08 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 01/24/2011 03:54 PM, Darren Hart wrote:
>>
>> On 01/24/2011 04:39 AM, Richard Purdie wrote:
>>>
>>> On Mon, 2011-01-24 at 05:05 -0700, Gary Thomas wrote:
>>>>
>>>> I wanted to try Poky on a spare laptop, so I went looking
>>>> for an appropriate configuration to build.
>>>>
>>>> From 'README.hardware' (last updated 2010-12-16), I read:
>>>> Poky Boot CD (bootcdx86)
>>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
>>>>
>>>> The Poky boot CD iso images are designed as a demonstration of the Pok=
y
>>>> environment and to show the versatile image formats Poky can generate.
>>>> It will
>>>> run on Pentium2 or greater PC style computers. The iso image can be
>>>> burnt to CD and then booted from.
>>>>
>>>> When I tried it (it's also listed in the default local.conf),
>>>> I got this error:
>>>> Please set TARGET_ARCH directly, or choose a MACHINE or DISTRO that do=
es
>>>> so.
>>>> Please set a valid MACHINE in your local.conf
>>>>
>>>> There seems to be no machine named 'bootcd*' anywhere :-(
>>>>
>>>> What should I be using?
>>>
>>> bootcdx86 was superceeded by the -live images. I'd suggest using the
>>> qemux86 or atom-pc machines and building a -live image, dd that to a us=
b
>>> stick and boot that on the laptop. An iso format image is also generate=
d
>>> that can be placed onto a CD.
>>
>> It will have to be atom-pc as qemu doesn't provide live images (last I
>> checked, a few weeks back).
>
> Sadly, this doesn't build :-( =A0Failed in compile_perf, log attached.

Hmm. This one was worked around a while ago via:

commit d38ad3271829b2d282c973e69edd265ef52174c8
Author: Tom Zanussi <tom.zanussi@intel.com>
Date:   Fri Jan 14 16:33:05 2011 -0600

    linux-yocto: hard-code NO_LIBPERL/NO_LIBPYTHON

    ExtUtils::Embed ccopts is getting the host's -I/usr/local/include and
    using it to compile perf, which results in a compilation error that
    started appearing just recently.

    This turns the code that makes use of ExtUtils::Embed off and simply
    hard-codes NO_LIBPERL.

    It does the same for LIBPYTHON while we're at it, since it probably
    suffers from a similar underlying problem and just by chance hasn't
    broken anything yet.

    This will be re-enabled after I familiarize myself with the perf
    recipe and am able to create a proper fix.

    Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>

:100644 100644 21023da... 7833f65... M
meta/recipes-kernel/linux/linux-yocto_git.bb

But the issue hadn't been showing up on the -stable .. until now. We can ch=
erry
pick this patch and commit to at least temporarily work around it.

I would have expected the nightly builds to show this one, since not all
supported targets have moved to 2.6.37.

Bruce

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

