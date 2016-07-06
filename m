Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95A5BE00DE0; Wed,  6 Jul 2016 03:13:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28C70E00DDA
	for <poky@yoctoproject.org>; Wed,  6 Jul 2016 03:13:28 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id j185so71275505ith.0
	for <poky@yoctoproject.org>; Wed, 06 Jul 2016 03:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ypHVQj7KkjQvYUbU6w2DIIm0Op3TFCtgE/pFkfcEE10=;
	b=GIWf+PiRNM+nSvWS1T6qKCGpuL7jYOlZlQa3Fuolzrlf7KhDx4NdYUVVWSC/OyblGx
	7xXAesbArp2yXKdRxc229rMZiJWpf3/PP7Pj6J7Lfl101m1DrXiCOJ0ef2Ri48dACmMo
	o2Hq7jdRCMykyAgTwZgRZMllNvrBkShE+dzHK9PnxeTwY4m0xIy5kv4UUqpbQmrVGGaB
	2cFtssxKqEBatR7WZ1NAJ5o3x24VKZmcrLGLwibsF97QWDWBuqNpp9ytl8C/8wPejo75
	9bHTAYgEjFvzmfejmdL/mtcgOY50Uolb7OOElY3HZdpVr4c41cioQxZrkJeURVSSqKCY
	gepg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ypHVQj7KkjQvYUbU6w2DIIm0Op3TFCtgE/pFkfcEE10=;
	b=Ws3qrD93JThxceETc/1k5AMaciUKir+ip5hHOFxELv//xSbxQ4abbh4Q0+6u3aa8/y
	hnR5srMrcTUzX1r1ym/8u8xtokho+5PSAN/aNP+adAbRWq1/kfa30XR3HOdUjAwrjzod
	GsZUPN9qJmgBgZDTaTOpE4miJhxJizvyRQ6XuupelvoO27sn9jBA9bPemjRbPriCDIWB
	1N6c/ifZjWBSfNnCIRqEROzSvAKG73MGskUG0fLWJQFJL1I1Tpjzw4+uH33Xc6fz9fHQ
	ELhff+pHDceAaWm1Pueir+ewNcDy0SyymmOlbeh9FIlJh3m8GuYUd/Ak55f9Y+iK4ufI
	KHXQ==
X-Gm-Message-State: ALyK8tJDvqc5+PCGpOmgaksHb0huZloRkrWBvmPaiaAHesTvyNW14/+VKC+MtkQmNQJ1lmoKFk5FD+gwn8FOX49z
X-Received: by 10.36.2.71 with SMTP id 68mr19137181itu.38.1467800008045; Wed,
	06 Jul 2016 03:13:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Wed, 6 Jul 2016 03:13:08 -0700 (PDT)
In-Reply-To: <1464718260-8333-1-git-send-email-anders@chargestorm.se>
References: <1464718260-8333-1-git-send-email-anders@chargestorm.se>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Jul 2016 11:13:08 +0100
Message-ID: <CAJTo0LZiqq2kqrzGs-9_9d5Oi0D9q4FAmOCV7=YA9YWCzPeNQA@mail.gmail.com>
To: Anders Darander <anders@chargestorm.se>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] yocto-bsp: add BBG dtb
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
X-List-Received-Date: Wed, 06 Jul 2016 10:13:30 -0000
Content-Type: multipart/alternative; boundary=001a1144b1d014d0780536f4d21e

--001a1144b1d014d0780536f4d21e
Content-Type: text/plain; charset=UTF-8

On 31 May 2016 at 19:11, Anders Darander <anders@chargestorm.se> wrote:

> As 4.4 is the default kernel version, we can add the dtb for the beaglebon
> green
> to the list of dtb's to generate.
>

Default but not only: this breaks builds with the 4.1 kernel:

| make[3]: *** No rule to make target
`arch/arm/boot/dts/am335x-bonegreen.dtb'.  Stop.

(
https://autobuilder.yoctoproject.org/main/builders/nightly-arm-lsb/builds/812/steps/BuildImages_1/logs/stdio
)

Ross

--001a1144b1d014d0780536f4d21e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 31 May 2016 at 19:11, Anders Darander <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:anders@chargestorm.se" target=3D"_blank">anders@chargestorm.se</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border=
-left-style:solid;padding-left:1ex"><div id=3D":2gj" class=3D"">As 4.4 is t=
he default kernel version, we can add the dtb for the beaglebon green<br>
to the list of dtb&#39;s to generate.<br></div></blockquote></div><div clas=
s=3D"gmail_extra"><br></div>Default but not only: this breaks builds with t=
he 4.1 kernel:<br><br>| make[3]: *** No rule to make target `arch/arm/boot/=
dts/am335x-bonegreen.dtb&#39;.=C2=A0 Stop.<br></div><div class=3D"gmail_ext=
ra"><br></div><div class=3D"gmail_extra">(<a href=3D"https://autobuilder.yo=
ctoproject.org/main/builders/nightly-arm-lsb/builds/812/steps/BuildImages_1=
/logs/stdio">https://autobuilder.yoctoproject.org/main/builders/nightly-arm=
-lsb/builds/812/steps/BuildImages_1/logs/stdio</a>)</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1144b1d014d0780536f4d21e--
