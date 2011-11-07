Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-ww0-f51.google.com (mail-ww0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05EA9E01356
	for <poky@pokylinux.org>; Mon,  7 Nov 2011 06:39:31 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwf27 with SMTP id 27so6100271wwf.8
	for <poky@pokylinux.org>; Mon, 07 Nov 2011 06:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=7zNi/8SLlPUBhLQQvesV7Y2wSryI/kPvDaCbtkbEAXs=;
	b=vkwvsgRI6cSo6pGwpLBF2Re8Me65rXPOJtFybKDbsCW3HMtdHNKbaM4wk9xorgw4Gz
	Hy5TAImlndnGnEYutjf9aXcmgXOWHfOCQMOkPxDCt/10YgVveGX7dEZhYW4WXJ0v8irg
	HcByfFfJu9NIpAgJpd9PmAqNZ7jChKktG13UU=
MIME-Version: 1.0
Received: by 10.216.71.14 with SMTP id q14mr2154143wed.3.1320676770516; Mon,
	07 Nov 2011 06:39:30 -0800 (PST)
Received: by 10.216.179.142 with HTTP; Mon, 7 Nov 2011 06:39:30 -0800 (PST)
In-Reply-To: <j92ldh$6tg$1@dough.gmane.org>
References: <j9172o$j0s$1@dough.gmane.org>
	<CADkTA4N=My0k31D2moYzK6gi70r2B9hL_-Bqw5T320pLqGGZ1g@mail.gmail.com>
	<j92ldh$6tg$1@dough.gmane.org>
Date: Mon, 7 Nov 2011 09:39:30 -0500
Message-ID: <CADkTA4Ph-Dpjm5gHpZcip79CG4UD0c5cFuoMTECK23pi2iwHQA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: gmane@reliableembeddedsystems.com
Cc: poky@pokylinux.org
Subject: Re: workflow - kernel config
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
X-List-Received-Date: Mon, 07 Nov 2011 14:39:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 5, 2011 at 2:34 AM, Robert Berger
<gmane@reliableembeddedsystems.com> wrote:
> Hi Bruce,
>
> On 11/04/2011 09:15 PM, Bruce Ashfield wrote:
>>
>> This is one flow that will work to make changes to the default kernel, a=
nd
>> test them on a board. I use something like:
>>
>> =A0bitbake -f -c configure linux-yocto
>> =A0bitbake -f -c menuconfig
>> =A0bitbake -c linux-yocto
>>
>> after I've done an initial build/configure phase if I'm updating options=
.
>> But that's likely not the most efficient workflow either (I've got liber=
al
>> use of -f in there, since I'm a bit paranoid).
>>
>
> This does not seem to work either - menuconfig is not being invoked:
>
> rber@yocto-1:~/projects/yocto/yocto_for_trainer/sandbox_work$
> ./03.05-configure-build-poky-kernel.sh
>
> ### Shell environment set up for builds. ###
>
> You can now run 'bitbake <target>'
>
> Common targets are:
> =A0 =A0core-image-minimal
> =A0 =A0core-image-sato
> =A0 =A0meta-toolchain
> =A0 =A0meta-toolchain-sdk
> =A0 =A0adt-installer
> =A0 =A0meta-ide-support
>
> You can also run generated qemu images with a command like 'runqemu qemux=
86'
>
> ----->
> make sure INHERIT +=3D "rm_work" is commented out
> kernel fiddling will not work with it
> press <ENTER> to go on
> <-----
>
> Loading cache: 100%
> |########################################################################=
################|
> ETA: =A000:00:00
> Loaded 1036 entries from dependency cache.
>
> OE Build Configuration:
> BB_VERSION =A0 =A0 =A0 =A0=3D "1.13.3"
> TARGET_ARCH =A0 =A0 =A0 =3D "arm"
> TARGET_OS =A0 =A0 =A0 =A0 =3D "linux-gnueabi"
> MACHINE =A0 =A0 =A0 =A0 =A0 =3D "beagleboard"
> DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D "poky"
> DISTRO_VERSION =A0 =A0=3D "1.1"
> TUNE_FEATURES =A0 =A0 =3D "armv7a vfp neon cortexa8"
> TARGET_FPU =A0 =A0 =A0 =A0=3D "vfp-neon"
> meta
> meta-yocto =A0 =A0 =A0 =A0=3D
> "edison-6.0_LOCAL:1924f52cc894d4dd6b9d9c1a2248b32fc0a24c8c"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 299 of 299 (ID: 6,
> /work/rber/poky/meta/recipes-kernel/linux/linux-yocto_2.6.37.bb,
> do_configure)
> NOTE: package
> linux-yocto-2.6.37+git1+aeea99683c7283f1f3320bf2ee7085ee252d4e7e_1+3ddb22=
772862a8223640fa97580569924f51bddc-r21:
> task do_configure: Started
> NOTE: package
> linux-yocto-2.6.37+git1+aeea99683c7283f1f3320bf2ee7085ee252d4e7e_1+3ddb22=
772862a8223640fa97580569924f51bddc-r21:
> task do_configure: Succeeded
> NOTE: Tasks Summary: Attempted 299 tasks of which 298 didn't need to be
> rerun and 0 failed.
> Nothing to do. =A0Use 'bitbake world' to build everything, or run 'bitbak=
e
> --help' for usage information.
> Nothing to do. =A0Use 'bitbake world' to build everything, or run 'bitbak=
e
> --help' for usage information.
> rber@yocto-1:~/projects/yocto/yocto_for_trainer/sandbox_work$

That'll teach me to write off the top of my head when I'm not near my
primary development box :) I'm back in the office now and will send a follo=
w
up to this shortly.

Bruce

>
>
> Regards,
>
> Robert..."The wonderful thing about standards is that there are so many
> of them to choose from." - (Amazing) Grace Murray Hopper, as quoted in
> the Unix Haters Handbook, p.10
>
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=3Dget&search=3D0x90320BF1
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

