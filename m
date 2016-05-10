Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44DCFE00D6D; Tue, 10 May 2016 08:22:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BD86E00D5B
	for <poky@yoctoproject.org>; Tue, 10 May 2016 08:22:26 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id i75so14659143ioa.3
	for <poky@yoctoproject.org>; Tue, 10 May 2016 08:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7HsmUMSVDJ6FnEx2qeyUAhHDDy+VaaX5d8jytFf0ktU=;
	b=Yf1+81fraM3Uw+0DLSvySbMDVgHpi2kihRVwUHOJyeLou+s2vPNbrlP9wT4BxEw8tU
	Zszd8vWekvhabEtCagevKZ7s2OMNmCu8nZlHZkHAShFU8IhoRmnzvT3BXLRGKg+vIxmk
	jl0zNRDdZs9djgcEktgKdSKfyA6OjnTDDz+8OTGuCWZ8ZBWmwD04HA3+IOnwObn4FFPp
	ig2zjKA1CKtq9RBYDXmN0cd+3xQKtJ0Zmo93o1dZraUZ29tFOzPlPSaO/6UpTPWmORY/
	RfDZTc3khWVaNHxSwMd+jiNh3hMAkIxsNRej0cPogd/DXAMjL8euLygNWcGYZbcTESpR
	pyhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7HsmUMSVDJ6FnEx2qeyUAhHDDy+VaaX5d8jytFf0ktU=;
	b=mJUmxn/5Qetqu3XzdvW6CUo/vKPVIT0+4QxtGJmIizHO+902Kn94Df6tMfhzr8IRro
	Tk9EuynI6RaRmjhw2n66Fqn++i7o4wlIc/12f4Ks+HUt73weSt5AD58AcWtItFtXVO+m
	/RDJjQThAHlqEaa+u/zNZi+3H5MFH8REDsegM3ZzHywHccMQ1v3GaYvekYuvi5RcRvy+
	iA8hPr0nrVCd/Yr1a0JFKNp+qNmlcph2f7JGqow+GueMOZRZ7/N3ff7JjnU8B+y/Vjg1
	tI7yTKQVEcBHHl3B15c0ojhef0+MFtIt2x4tnpGa2zDUrmoyhJ5YubUSSqZl2sUGFGEX
	TN7w==
X-Gm-Message-State: AOPr4FUooPQZpleGBVucfU7uBKLhyCiJ8is0FrSyYFvf9hl2p08zpDBzbipA3hZsYbr3otVU69bRAnGI9JPi/GbR
X-Received: by 10.107.51.213 with SMTP id z204mr40988257ioz.148.1462893745777; 
	Tue, 10 May 2016 08:22:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Tue, 10 May 2016 08:22:06 -0700 (PDT)
In-Reply-To: <1462817910-15459-1-git-send-email-edwin.plauchu.camacho@linux.intel.com>
References: <1462817910-15459-1-git-send-email-edwin.plauchu.camacho@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 10 May 2016 16:22:06 +0100
Message-ID: <CAJTo0Lb3Ua9OtsT=XbCHhY4mS6_b2q0BiNp--4rMKXQcRnYQVw@mail.gmail.com>
To: edwin.plauchu.camacho@linux.intel.com
Cc: Poky Project <poky@yoctoproject.org>,
	Edwin Plauchu <edwin.plauchu.camacho@intel.com>
Subject: Re: [PATCH] meta-yocto-bsp: Enable xf86 modeset for beaglebone
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
X-List-Received-Date: Tue, 10 May 2016 15:22:30 -0000
Content-Type: multipart/alternative; boundary=001a11440cd00fccdc05327e7e96

--001a11440cd00fccdc05327e7e96
Content-Type: text/plain; charset=UTF-8

On 9 May 2016 at 19:18, <edwin.plauchu.camacho@linux.intel.com> wrote:

> The modesetting driver is better than fbdev driver. This patch is enabling
> so for beaglebone BSP (Without 3D accelaration).
>

Can you confirm that you've tested this on real hardware, and what boards
in particular you tested it on?

Also presumably this depends on the kernel patch?

Cheers,
Ross

--001a11440cd00fccdc05327e7e96
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 May 2016 at 19:18,  <span dir=3D"ltr">&lt;<a href=3D"mailto:edwin.plau=
chu.camacho@linux.intel.com" target=3D"_blank">edwin.plauchu.camacho@linux.=
intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":3o" class=3D"a3s aXjCH">The modesetting driver is better than fbdev dr=
iver. This patch is enabling so for beaglebone BSP (Without 3D accelaration=
).<br></div></blockquote></div><br>Can you confirm that you&#39;ve tested t=
his on real hardware, and what boards in particular you tested it on?</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Also presum=
ably this depends on the kernel patch?</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">Cheers,</div><div class=3D"gmail_extra">Ro=
ss</div></div>

--001a11440cd00fccdc05327e7e96--
