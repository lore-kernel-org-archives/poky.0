Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-yw0-f43.google.com (mail-yw0-f43.google.com
	[209.85.213.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 55FC84C80FE9
	for <poky@pokylinux.org>; Wed, 18 May 2011 19:15:32 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywa6 with SMTP id 6so973562ywa.2
	for <poky@pokylinux.org>; Wed, 18 May 2011 17:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=2wao9lzPbSHUVlO49EIAy9C+5AcDokVKExA0U5AnMDU=;
	b=P4I140TGB3eAXWlbe+JPKgzIBe6oMK23bzNKE3CdO70vhPBDhmNEaSB+j0Wie69xg3
	9p1gUO2FDJ9rrRBZu0/pNoK07GEd5uyZJ7flYc145i4pF/5IB2DdKB7YFl61ANlTuJgB
	bxjBADSG9QkK0rdWRhoTkwX5Fe23gc5U5uYaE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=FVlrbeoOEyC4UUFKIghnWMzm4PLPhjf6nl0EiUnW1vAdF+kcJkr5AnfZ0wGVOIpaJB
	GzfbUupCaxgmSMzskmMV1mAdnhwPtV2/iJ+hqrY2ekNqgb14zBFDRvw57O10AlQe79xA
	5I77t+3hu9LQ+Y54OsrrchUQMzjSoq7etwRPk=
MIME-Version: 1.0
Received: by 10.91.198.11 with SMTP id a11mr1986223agq.184.1305764131252; Wed,
	18 May 2011 17:15:31 -0700 (PDT)
Received: by 10.90.7.20 with HTTP; Wed, 18 May 2011 17:15:31 -0700 (PDT)
In-Reply-To: <4DD40649.3070906@eml.cc>
References: <4DD3EC1E.7090603@eml.cc>
	<BANLkTintAKomO8L+tJvSO7MBB7zYAWSG+w@mail.gmail.com>
	<4DD40649.3070906@eml.cc>
Date: Wed, 18 May 2011 20:15:31 -0400
Message-ID: <BANLkTi=FrgmjqwTxT+aM9xnqsXdV7mUL6A@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tim Cussins <timcussins@eml.cc>
Cc: poky@pokylinux.org
Subject: Re: Problems creating a new BSP
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
X-List-Received-Date: Thu, 19 May 2011 00:15:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, May 18, 2011 at 1:47 PM, Tim Cussins <timcussins@eml.cc> wrote:
> On 18/05/11 17:20, Bruce Ashfield wrote:
>>
>> On Wed, May 18, 2011 at 11:56 AM, Tim Cussins<timcussins@eml.cc> =A0wrot=
e:
>>>
>>> Hi all,
>>>
>>> I've been having trouble getting my own kernel built and it's time to g=
o
>>> to
>>> the list :)
>>>
>>> The problem: As part of my bsp I want a kernel that's based on the yoct=
o
>>> tree, but is built for my machine. Mu current setup fails to build it :=
(
>>
>> We can definitely get you up and running.
>>
>>>
>>> (1) I've been following the steps outlined here:
>>>
>>> =A0http://www.yoctoproject.org/docs/bsp-guide/bsp-guide.html
>>>
>>> (2) I'm tracking the bernard branch of poky.
>>>
>>> (3) My new meta directory (meta-tephra) is inside the top-level of my
>>> poky
>>> checkout. Here's what's in there (find):
>>>
>>> ./recipes-kernel
>>> ./recipes-kernel/linux
>>> ./recipes-kernel/linux/linux-yocto-stable_git.bbappend
>>> ./recipes-kernel/linux/linux-yocto-stable
>>> ./recipes-kernel/linux/linux-yocto-stable/defconfig
>>> ./conf
>>> ./conf/machine
>>> ./conf/machine/tephra.conf
>>> ./conf/layer.conf
>>> ./images
>>> ./images/poky-image-tephra-sdk.bb
>>>
>>> (4) Contents of tephra.conf
>>>
>>> TARGET_ARCH =3D "arm"
>>> MACHINE_FEATURES =3D "kernel26"
>>> IMAGE_FSTYPES ?=3D "tar.bz2 ext3"
>>> ROOT_FLASH_SIZE =3D "280"
>>> IMAGE_ROOTFS_SIZE_ext2 ?=3D "280000"
>>> IMAGE_ROOTFS_SIZE_ext3 ?=3D "280000"
>>> # Don't include kernels in standard images
>>> RDEPENDS_kernel-base =3D ""
>>> PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto-stable"
>>> #PREFERRED_PROVIDER_linux-libc-headers ?=3D "linux-libc-headers-yocto"
>>> EXTRA_IMAGEDEPENDS +=3D ""
>>> MACHINE_ESSENTIAL_EXTRA_RDEPENDS =3D ""
>>> require conf/machine/include/tune-arm1136jf-s.inc
>>> KERNEL_IMAGETYPE =3D "uImage"
>>> SERIAL_CONSOLE =3D "115200 ttyS0"
>>>
>>> (5) Contents of linux-yocto-stable_git.bbappend
>>>
>>> FILESEXTRAPATHS :=3D "${THISDIR}/${PN}"
>>> COMPATIBLE_MACHINE_tephra =3D "tephra"
>>> KMACHINE_tephra =3D "arm_versatile_926ejs"
>>> SRC_URI +=3D "file://defconfig"
>>
>> the recipe names will change slightly in the near future, the
>> linux-yocto_git is also "stable", so if you want something
>> newer than 2.6.34, you can use that as well.
>
> noted. i actually started with 2.6.37 until the wheels fell off :)

Aha. Same error ? Something different ? Either way, if you
get back to it, I can help if somethings lurking. If the steps
are wrong in the docs, that's also something that would be
good to know!

Cheers,

Bruce

>
>>>
>>> (6) Contents of defconfig
>>>
>>> Same as mx3_defconfig (for freescale iMX 3)
>>>
>>> (6b) for completeness here's layer.conf
>>>
>>> # We have a conf directory, add to BBPATH
>>> BBPATH :=3D "${BBPATH}:${LAYERDIR}"
>>>
>>> # We have a recipes directory containing .bb and .bbappend files, add t=
o
>>> BBFILES
>>> BBFILES :=3D "${BBFILES} \
>>> =A0 =A0 =A0 =A0 =A0 =A0${LAYERDIR}/recipes*/*/*.bb \
>>> =A0 =A0 =A0 =A0 =A0 =A0${LAYERDIR}/recipes*/*/*.bbappend \
>>> =A0 =A0 =A0 =A0 =A0 =A0${LAYERDIR}/images/*.bb"
>>>
>>> BBFILE_COLLECTIONS +=3D "tephra"
>>> BBFILE_PATTERN_tephra :=3D "^${LAYERDIR}/"
>>> BBFILE_PRIORITY_tephra =3D "5"
>>>
>>> (7) Minor confusion - When I invoke
>>>
>>> =A0bitbake virtual/kernel -DDDD -v
>>>
>>> The process warns during the start of kernel_do_compile() (from
>>> kernel.bbclass) that
>>>
>>> =A0"Warning: make dep is unnecessary now."
>>>
>>> It's trying to build deps - fair enough, as the value of
>>> KERNEL_MAJOR_VERSION is 'None' because that information is taken from t=
he
>>> kernel build output:
>>>
>>> =A0oe_runmake include/linux/version.h CC=3D"${KERNEL_CC}" LD=3D"${KERNE=
L_LD}"
>>>
>>> but this won't generate
>>>
>>> =A0include/generated/utsrelease.h
>>>
>>> which is where the kernel version now lives. Changing the line to
>>> generate
>>> this target ensures that utsrelease.h is built, but KERNEL_MAJOR_VERSIO=
N
>>> is
>>> still 'None'.
>>>
>>> I'm pretty confused by this and need help :)
>>
>> I'm not sure about this one at the moment, I've never had this happen,
>> or spent much time poking around in that particular code.
>>
>>>
>>> (8) Major problem - The copying of my defconfig into .config causes the
>>> kernel build to terminate with:
>>>
>>> =A0linux is not clean, please run 'make mrproper'
>>
>> I can help with this one. There was a change to the defconfig
>> processing late in the 1.0 cycle that missed being tested
>> against defconfig kernel builds against yocto (since the default
>> boards don't do this). It copies the defconfig into the source
>> directory, which isn't what we want since the src/build is split.
>>
>> I put a fix into master for this, and it should have also been
>> in bernard, but obviously, I'll need to check this.
>>
>> The fix you can manually do is by applying this chunk to
>> kernel-yocto.bbclass
>>
>> +# overrides the base kernel_do_configure, since we don't want all the
>> +# defconfig processing in there
>> +kernel_do_configure() {
>> + =A0 =A0 =A0 =A0yes '' | oe_runmake oldconfig
>> +}
>> +
>> +
>>
>> And then you'll be good to go.
>
> great - that's making progress now. fyi the kernel build itself is breaki=
ng
> now, but i reckon i can deal to that :)
>
> Thanks heaps!
> T
>
>> Bruce
>>
>>
>>>
>>> Commenting out the defconfig reference in my bbappend:
>>>
>>> =A0#SRC_URI +=3D "file://defconfig"
>>>
>>> allows the kernel build to complete, but obviously not with the
>>> configuration I was after :(
>>>
>>> Any insight into what I'm doing wrong (either philosophically or
>>> technically) would be awesome.
>>>
>>> Thanks in advance,
>>>
>>> Tim
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>>
>>
>>
>>
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

