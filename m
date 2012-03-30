Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B085DE013D6
	for <poky@yoctoproject.org>; Thu, 29 Mar 2012 23:22:57 -0700 (PDT)
Received: by lagu2 with SMTP id u2so517856lag.35
	for <poky@yoctoproject.org>; Thu, 29 Mar 2012 23:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=Fbj9NwZ6/3Saa/zfgT5JSt603c4Tgb+iZwgntgugqHU=;
	b=i7ddriEIoUTIm9kUUGFxJ+rsp4LG2/ggUidmoAhNVTqfvtQztF/lokUL5NPNzXyjVj
	1W4BckzN6li/CjgTK4IlkEArDva+LJicd65K3k8cqCvubZ1EYaykPMrPoE85bdvLNJLg
	QOBnGAD0AdJjNPX2HVmfAQ/64/BweJITLDt1ZbEsyMMIjHaT0aDaMRHhohNvZXnLpXJ7
	dSeubgjCje8VC/PTo0L/ZHLpDm+q4pdtZp3QodAT+emExTEF3CHZgeCUaKSQ3F0Gh/0z
	BnzWebdGO1qWLEG3STX826kWqYH98+QGwDaXGrEbvOCw0/sI8Y2o49VYBKSivm49jEXw
	SRtQ==
Received: by 10.152.130.105 with SMTP id od9mr1238609lab.17.1333088576128;
	Thu, 29 Mar 2012 23:22:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.3.161 with HTTP; Thu, 29 Mar 2012 23:22:25 -0700 (PDT)
In-Reply-To: <CAJKYVfs6tUMF5=PdzbBTb5=ifbsWXBQLGJOgFM7f-2MGAQYZag@mail.gmail.com>
References: <CAJKYVfs6tUMF5=PdzbBTb5=ifbsWXBQLGJOgFM7f-2MGAQYZag@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 29 Mar 2012 23:22:25 -0700
Message-ID: <CAMKF1sp9_JeZxVay3UATzNBKe8_QDrfcSgH-EcV1abNxEp2xGA@mail.gmail.com>
To: Zhouheng Zhuang <zz245@cornell.edu>
Cc: poky@yoctoproject.org
Subject: Re: Problem building MIPS image (core-image-minimal)
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
X-List-Received-Date: Fri, 30 Mar 2012 06:22:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 29, 2012 at 1:51 PM, Zhouheng Zhuang <zz245@cornell.edu> wrote:
> Hi all,
> I am a student, and I just started using Yocto Project, and tried to buil=
d a
> MIPS image (core-image-minimal) myself, but failed. Can anyone help me on
> this issue?
>
> I downloaded Yocto 1.1. After
> % source oe-init-build-env
> I set configurations in ./build/conf/local.conf with (the file is attache=
d)
> ------
> BB_NUMBER_THREADS =3D "4"
> PARALLEL_MAKE =3D "-j 3"
> MACHINE ??=3D "qemumips"
> DISTRO ?=3D "poky"
> PACKAGE_CLASSES =3D "package_deb"

what happens when you use package_ipk or package_rpm and rebuild?
just want to make sure if its related to package backend

> EXTRA_IMAGE_FEATURES =3D "debug-tweaks"
> USER_CLASSES ?=3D "image-mklibs image-prelink"
> PATCHRESOLVE =3D "noop"
> CONF_VERSION =3D "1"
> INHERIT +=3D rm_work
> ------
>
> Then, I ran
> % bitbake -k core-image-minimal
> and got errors:
> ------
> Errors were encountered while processing:
> =C2=A0/home/zhouheng/poky/build/tmp/deploy/deb/mips/./base-passwd_3.5.22-=
r9_mips.deb
> W: Ignoring Provides line with DepCompareOp for package rtld
> W: You may want to run apt-get update to correct these problems
> E: Sub-process dpkg returned an error code (1)
> ERROR: Function 'do_rootfs' failed (see
> /home/zhouheng/poky/build/tmp/work/qemumips-poky-linux/core-image-minimal=
-1.0-r0/temp/log.do_rootfs.2097
> for further information)
> -------
> I have attached the errorlog with the email, too.
> I have tried searching the error, but I haven't figured out why it happen=
s.
> Can anyone answer my questions?
> I would appreciate it very much if anyone can share their configuration t=
o
> successfully build the image.
> Thank you very much!
>
> Zhouheng (Philip) Zhuang
>
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

