Return-Path: <olivier.dufour@qarnot-computing.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10BD0E0084E; Wed, 16 May 2018 03:17:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1744E00791
	for <poky@yoctoproject.org>; Wed, 16 May 2018 03:17:30 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id f6-v6so309411wmc.4
	for <poky@yoctoproject.org>; Wed, 16 May 2018 03:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=qarnot-computing-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=3cN+b5vvAruJrqrTzJPXlgnVZfzOzdAm7CIMabHt+TE=;
	b=NJaBtrh5aavC4F7zfugtx0g2uLqevQKH4LKX72Rw6iF+FVVpNJ7iBN7vVxsaQlQy6e
	BnfuWwF7BySrl6MMnosqT5RqHpNctIPwzCUK4OYgVniEMXLYPTNRsw8/7Phrnku5bjnw
	Mcze4woYTtXRyhePkEr/kJ/SPT8ZoaBtCQAAYKv5Vsn54g6xiuAwgxMUtlOB5ulUw46h
	hJzXsRNoAiUHzcJRI12OXnZyMl/GQhjj4DKzW9UF48Shv/G8DkgHH2Krr/0fmiTYopJg
	+96fELipwg/unrv97f1m56+wIKemzkL0NpegDDDGlUYp7PZzWkwUm59NIwigy+jJuu1l
	2mGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3cN+b5vvAruJrqrTzJPXlgnVZfzOzdAm7CIMabHt+TE=;
	b=GeA7hV9DS8UiebWcEflPOAgqqLklgfDZx2UneT48mCcvU3gQqH3OK+tabUssMbo4uW
	G88gSfiRelpj+oXuO2cvgAwZtQYdfcMUK0miSF8zlwcEXxgEdqAtYYZQBZwyH6HyLfRe
	bMVnPyx+0rApVvg9R90unQKPHkoQrW4o1lJz/y+AY1qNrGczsIoO6TFZ0oLQxKyhd7Ag
	yC6QE/wiNTskbcyZHsTLtR6gkNuqyCkYjW7Ujx5EgwgBNoRN0R6Q+2+sPKGCp1OpX2/k
	ziuui0dqCTTmn9uZ7faBJ+6ROF3VIEjOPUnjGr2bk6OD81LSpm3vYYKlFnXgn/GcD8Da
	Ps7Q==
X-Gm-Message-State: ALKqPwee7JCw+mmyod+Xnhu6fnKE0eXCCkAbJ4pn5zNITLLQ0wMZ4IV6
	/y9lHlOYiYF3CURBxr1twwlD6/NtOJOJc5j5vncw7y7dopo=
X-Google-Smtp-Source: AB8JxZo7alk1YUEtqsGk+V6butsx2c3BCmnaT5xJvqNXB2JYuRd9iW/3/mJb/mvkfSyc27VrpW01GXy9wXDG2/pS0Tg=
X-Received: by 2002:a50:d311:: with SMTP id
	g17-v6mr371050edh.160.1526465849520; 
	Wed, 16 May 2018 03:17:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.252.147 with HTTP; Wed, 16 May 2018 03:17:29 -0700 (PDT)
X-Originating-IP: [176.175.104.214]
From: Olivier Dufour <olivier.dufour@qarnot-computing.com>
Date: Wed, 16 May 2018 12:17:29 +0200
Message-ID: <CADGCjzwkN9pAbc=GmAAtK_VmKYoiUMZh8ntaZyJuDOhtJbpznw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Dependency loop with kernel-fitimage class
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 May 2018 10:17:33 -0000
Content-Type: multipart/alternative; boundary="000000000000b905b0056c500696"

--000000000000b905b0056c500696
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to build a trusted boot image on ARM64 platform using u-boot.
I've added kernel-fitimage to KERNEL_CLASSES, and set UBOOT_SIGN_ENABLE to
"1".

I get the following dependency loop:

> Dependency loop #1 found:
>   Task
> /build/firmware/v3/build/../meta-marvell/recipes-bsp/u-boot/u-boot-marvell_2017.03.bb:do_concat_dtb
> (dependent Tasks ['linux-marvell_4.4.52.bb:do_assemble_fitimage'])
>   Task
> /build/firmware/v3/build/../meta-marvell/recipes-bsp/u-boot/u-boot-marvell_2017.03.bb:do_install
> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
> 'u-boot-marvell_2017.03.bb:do_compile', 'u-boot-marvell_2017.03.bb:
> do_concat_dtb'])
>   Task
> /build/firmware/v3/build/../meta-marvell/recipes-bsp/u-boot/u-boot-marvell_2017.03.bb:do_deploy
> (dependent Tasks ['u-boot-marvell_2017.03.bb:do_install',
> 'u-boot-marvell_2017.03.bb:do_deploy_dtb'])
>   Task
> /build/firmware/v3/build/../meta-marvell/recipes-kernel/linux/linux-marvell_4.4.52.bb:do_assemble_fitimage
> (dependent Tasks ['u-boot-marvell_2017.03.bb:do_deploy',
> 'linux-marvell_4.4.52.bb:do_compile'])


From my understanding, do_assemble_fitimage should only depend on
do_deploy_dtb, since it doesn't require the whole u-boot binary, but only
the dtb.

I did a few patches to get it work eventually, but I wonder if that's the
right way to go. Maybe I'm missing a step in my configuration ?

Regards,

-- 
Olivier Dufour

--000000000000b905b0056c500696
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m trying to build a trusted b=
oot image on ARM64 platform using u-boot.</div><div>I&#39;ve added kernel-f=
itimage to KERNEL_CLASSES, and set UBOOT_SIGN_ENABLE to &quot;1&quot;.</div=
><div><br></div><div>I get the following dependency loop:</div><div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">Dependency loop #1 found:<br>=C2=
=A0 Task /build/firmware/v3/build/../meta-marvell/recipes-bsp/u-boot/u-boot=
-marvell_2017.03.bb:do_concat_dtb (dependent Tasks [&#39;linux-marvell_4.4.=
52.bb:do_assemble_fitimage&#39;])<br>=C2=A0 Task /build/firmware/v3/build/.=
./meta-marvell/recipes-bsp/u-boot/u-boot-marvell_2017.03.bb:do_install (dep=
endent Tasks [&#39;pseudo_1.8.2.bb:do_populate_sysroot&#39;, &#39;u-boot-ma=
rvell_2017.03.bb:do_compile&#39;, &#39;u-boot-marvell_2017.03.bb:do_concat_=
dtb&#39;])<br>=C2=A0 Task /build/firmware/v3/build/../meta-marvell/recipes-=
bsp/u-boot/u-boot-marvell_2017.03.bb:do_deploy (dependent Tasks [&#39;u-boo=
t-marvell_2017.03.bb:do_install&#39;, &#39;u-boot-marvell_2017.03.bb:do_dep=
loy_dtb&#39;])<br>=C2=A0 Task /build/firmware/v3/build/../meta-marvell/reci=
pes-kernel/linux/linux-marvell_4.4.52.bb:do_assemble_fitimage (dependent Ta=
sks [&#39;u-boot-marvell_2017.03.bb:do_deploy&#39;, &#39;linux-marvell_4.4.=
52.bb:do_compile&#39;])</blockquote></div><div><br></div><div><div>From my =
understanding, do_assemble_fitimage should only depend on do_deploy_dtb, si=
nce it doesn&#39;t require the whole u-boot binary, but only the dtb.</div>=
<div><br></div><div>I did a few patches to get it work eventually, but I wo=
nder if that&#39;s the right way to go. Maybe I&#39;m missing a step in my =
configuration ?</div><div><br></div><div>Regards,</div><div><br></div>-- <b=
r><div class=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><span style=3D"font-size:12.8px">Olivier Dufour</span></div></div>=
</div></div>
</div></div>

--000000000000b905b0056c500696--
