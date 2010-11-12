Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-qy0-f169.google.com (mail-qy0-f169.google.com
	[209.85.216.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id 937954C80FD4
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 13:01:27 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk1 with SMTP id 1so236047qyk.14
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 11:01:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=FCjkPNm4IxNF7l7ZYujyw6YHFnUeMdxjT6BWQmfaWdk=;
	b=UZuFaHtNU0Rp3TtpLGo3q/+H/WQcGJN+xPbW3hldXem799CdF0v5pl7Kbd/dvSKxbO
	YZ+ViX2motn/Sx2TLvkLtQs/2hKadpdIzBFOIDL22UeR2JudDsYZcr8L3/Y7d8dSo8v1
	yzJzhv/pz2DaLnyRomE1AFSy98goO71ZX2OWE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=TyDlKSLTRpyAmsLiULOP6oG+BBUwYlEsT1Ks5yXtHIkxzVZEe8FCDRWXWY067XFyUj
	452DbadssK/JNWwS7dTd/9NptdGuxtqS+b+JDHXTucP5BwlK2dY/JxvqoXTDleWTjnyw
	OP4m1dYb2J+T2uunkIvTUwixxmNOcHFeaTKfI=
MIME-Version: 1.0
Received: by 10.224.216.6 with SMTP id hg6mr2412695qab.112.1289588487108; Fri,
	12 Nov 2010 11:01:27 -0800 (PST)
Received: by 10.220.75.132 with HTTP; Fri, 12 Nov 2010 11:01:27 -0800 (PST)
In-Reply-To: <4CDD8DA5.3040106@linux.intel.com>
References: <cover.1289583673.git.bruce.ashfield@windriver.com>
	<260f3ad367b34221104b71380d329e092b6c93c6.1289583673.git.bruce.ashfield@windriver.com>
	<4CDD8DA5.3040106@linux.intel.com>
Date: Fri, 12 Nov 2010 14:01:27 -0500
Message-ID: <AANLkTi=aJ+bkBo9UCN5d8zn0P6jHKNwfu2iiPfLpBygk@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] linux-wrs: implement BSP bootstrapping via fallback branches
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
X-List-Received-Date: Fri, 12 Nov 2010 19:01:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 12, 2010 at 1:55 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> Hey Bruce,
>
> Dropping yocto list as this is a development discussion (and the webpage
> says those take place on poky@yoctoproject.org). Someone correct me if I'=
ve
> got this wrong.
>
> On 11/12/2010 10:40 AM, Bruce Ashfield wrote:
>>
>> When creating a new BSP there isn't always an upstream branch
>> to validate SRCREVs against. Therefore, creating a new BSP
>> required extra manipulations of the git repository, even though
>> the branch for the build would be dynamically created.
>>
>> To fix this, provide a fallback to the 'standard' branch if
>> WRMACHINE is not assigned a specific value for the given MACHINE.
>> The fallback saved in KBRANCH, and represents the branch that
>
> It seems that KBRANCH_FALLBACK might be a bit more self-descriptive. Unle=
ss
> I'm misunderstanding it's purpose...
>
> OK reading the patch, KBRANCH is basically the new variable we store the
> kernel branch in, and it is set to standard if WRMACHINE is not set -
> KBRANCH itself is not the fallback. Code looks good, commit message was
> ambiguous (to me).

Right. The fallback is actually only in the phython chunk. KBRANCH
will be used shortly to separate what you checkout and build from
what it validated by the fetchers. I needed this for the branch renaming
and minimization changes that will follow this shortly.

>
>> we should build, even if no fallback is required. Some substeps
>> of the recipe have been updated to use KBRANCH rather than
>> enforcing MACHINE-KERNELTYPE.
>>
>> Signed-off-by: Bruce Ashfield<bruce.ashfield@windriver.com>
>> ---
>> =A0meta/recipes-kernel/linux/linux-wrs_git.bb | =A0 40
>> ++++++++++++++++++++++-----
>> =A01 files changed, 32 insertions(+), 8 deletions(-)
>>
>> diff --git a/meta/recipes-kernel/linux/linux-wrs_git.bb
>> b/meta/recipes-kernel/linux/linux-wrs_git.bb
>> index 1f2b11e..209648b 100644
>> --- a/meta/recipes-kernel/linux/linux-wrs_git.bb
>> +++ b/meta/recipes-kernel/linux/linux-wrs_git.bb
>> @@ -10,10 +10,10 @@ PV =3D "2.6.34+git${SRCPV}"
>> =A0# To use a staged, on-disk bare clone of a Wind River Kernel, use a
>> =A0# variant of the below
>> =A0# SRC_URI =3D "git://///path/to/kernel/default_kernel.git;fullclone=
=3D1"
>> -SRC_URI =3D
>> "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=3Dgit;fullclon=
e=3D1;branch=3D${WRMACHINE}-${LINUX_KERNEL_TYPE};name=3Dmachine
>> \
>> +SRC_URI =3D
>> "git://git.pokylinux.org/linux-2.6-windriver.git;protocol=3Dgit;fullclon=
e=3D1;branch=3D${KBRANCH};name=3Dmachine
>> \
>>
>> git://git.pokylinux.org/linux-2.6-windriver.git;protocol=3Dgit;noclone=
=3D1;branch=3Dwrs_meta;name=3Dmeta"
>>
>> -WRMACHINE =3D "${MACHINE}"
>> +WRMACHINE =3D "UNDEFINED"
>
> Not a critique, just a question - why "UNDEFINED" instead of just not set=
?

It was easier for me to test :) and let me make it more explicit in the
python chunk if someone was grepping around .. but outside of that,
nothing particularly deep.

Cheers,

Bruce

>
> --
> Darren Hart
> Yocto Linux Kernel
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

