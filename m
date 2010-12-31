Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id B58FE4C80BD4
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 00:15:15 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so13360676iwn.35
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 22:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=32W8a4Sdj5W6uHecPssxyeKkp0MFq8MA593rN2vTvJs=;
	b=KP6RKo/MRt4GTPKm/uJZ/z3dQPrswdrDUbZhBnxLSh5w1Jp1OOpTNY9fdleYmJmsTA
	5U9pElArAhxuByaKygBt0EaZ67L9wvxFWUeep7C0yqnumh6JvVRkIGdu6/B6SEfk9ZVS
	a429fwMOJuvnWvWTZgBliMSjjGCNKCLZFJ/f4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=QoSnfqQ7eoBr4BwFrzNRusTgtJyKZRfxr1Tx6OhevgrJhWR1TgAu8sP8fmYx/O4rGq
	zuZ5ereI8YJaLHyF4QbJ6Og6DLyQj1Mx+so9wEY5IQCOHLYjN3IRRnpeHftNKmfrK/4i
	arw5OWaWkN7p8W4VXjHhWqeOSJav3ZF2V9sK8=
MIME-Version: 1.0
Received: by 10.231.207.84 with SMTP id fx20mr16893831ibb.62.1293776115415;
	Thu, 30 Dec 2010 22:15:15 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Thu, 30 Dec 2010 22:15:15 -0800 (PST)
In-Reply-To: <cover.1293755504.git.dvhart@linux.intel.com>
References: <cover.1293755504.git.dvhart@linux.intel.com>
Date: Fri, 31 Dec 2010 01:15:15 -0500
Message-ID: <AANLkTim9yeaCcBCmQsdxEZC6Kh0MiVC59V+qjOKYdKUj@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/5] meta-rt: create a real-time layer
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
X-List-Received-Date: Fri, 31 Dec 2010 06:15:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 30, 2010 at 7:40 PM, Darren Hart <dvhart@linux.intel.com> wrote=
:
> Add a real-time layer to build the linux-yocto preempt_rt kernel type for
> specific machines. It also adds the rt-tests test suite. This series
> adds qemux86-64 support (build and boot tested) as well as atom-pc, which
> builds and creates the ext3 image, but the live image is missing the root=
fs
> for some reason.
>
> Rather than continue to sit on these, I thought I'd get them out there wh=
ile
> I continue to try and sort out the atom-pc issue.

Good plan. For my part, I've been factoring out more common parts
of the yocto kernel recipes, but we shouldn't be holding on those
at all. Once approved and in tree, I can actually test the factoring
on these before sending it for review, since there's nothing wrong with
having the duplication briefly.

That being said, I'm only ack'ing the series for now (and particularly
the kernel parts), since I won't be back to the office full time until
Tuesday next week to take a better look at these.

Cheers,

Bruce

>
> There has been much discussion surrounding where real-time support should=
 be
> in the repositories. Most recently we discussed including it as part of t=
he
> main poky repository. I think this makes the most sense as the rt kernels=
 are
> built from the same kernel repositories as the other linux-yocto kernels.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
> =A0Branch: dvhart/meta-rt
> =A0Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddvhart=
/meta-rt
>
> Thanks,
> =A0 =A0Darren Hart <dvhart@linux.intel.com>
> ---
>
>
> Darren Hart (5):
> =A0meta-rt: Initial PREEMPT_RT layer and kernel recipes
> =A0meta-rt/rt-tests: add the PREEMPT_RT rt-tests testsuite and
> =A0 =A0recipes-tests directory
> =A0meta-rt/poky-image-*rt: Add initial PREEMPT_RT image recipes
> =A0machine/qemu: Allow for users to override the preferred kernel
> =A0 =A0version
> =A0meta-rt: atom-pc support
>
> =A0meta-rt/conf/layer.conf =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0| =A0 23 +++++++++++
> =A0meta-rt/images/poky-image-minimal-rt-directdisk.bb | =A0 15 +++++++
> =A0meta-rt/images/poky-image-minimal-rt-live.bb =A0 =A0 =A0 | =A0 15 ++++=
+++
> =A0meta-rt/images/poky-image-minimal-rt.bb =A0 =A0 =A0 =A0 =A0 =A0| =A0 1=
2 ++++++
> =A0meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb | =A0 40 ++++++++++=
++++++++++
> =A0meta-rt/recipes-tests/rt-tests_git.bb =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 22 +++++++++++
> =A0meta/conf/machine/include/qemu.inc =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A02 +-
> =A07 files changed, 128 insertions(+), 1 deletions(-)
> =A0create mode 100644 meta-rt/conf/layer.conf
> =A0create mode 100644 meta-rt/images/poky-image-minimal-rt-directdisk.bb
> =A0create mode 100644 meta-rt/images/poky-image-minimal-rt-live.bb
> =A0create mode 100644 meta-rt/images/poky-image-minimal-rt.bb
> =A0create mode 100644 meta-rt/recipes-kernel/linux-yocto-rt_stablegit.bb
> =A0create mode 100644 meta-rt/recipes-tests/rt-tests_git.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

