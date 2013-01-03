Return-Path: <anna.dushistova@gmail.com>
Received: from mail-pb0-f45.google.com (mail-pb0-f45.google.com
	[209.85.160.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D28CE002AB
	for <poky@yoctoproject.org>; Thu,  3 Jan 2013 08:20:05 -0800 (PST)
Received: by mail-pb0-f45.google.com with SMTP id mc8so8579812pbc.18
	for <poky@yoctoproject.org>; Thu, 03 Jan 2013 08:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kZElpx/v9TFzyylCD2YWWvNPJwfbvw/ueUMG4LoeChI=;
	b=tHxkH61syxtXhcKKwmsbgEgaNsGWfKPC5jO2jK3mfEWnazpVHfjLpCc3r73sNPiLgH
	epxwtW+4enVbta4yf+Ua/I05r3ohNdPBUhIhuBJAcTWK+b/pIMLYC8gTlXcVOUIMEO9Y
	9AcLTwszW2shdPU+SvdWY1IZWDwoQKvpk3PJI9XtMDQodEZmLv66eaDO1vGTNpbggKnD
	Xm1Ydxm8oeYjJe8D8YIV/nbdhf+4TOfWZkzrVw8qpcZb5p4L9sC16AzAtKrb5Zc4AcS7
	tITazN3297bAPlawgmWDFNqUsH89he2uFZahjjVS0EatYiSRjrd2HAe8cdFAxofAEpEE
	GAuw==
MIME-Version: 1.0
Received: by 10.68.247.134 with SMTP id ye6mr154255798pbc.69.1357230005175;
	Thu, 03 Jan 2013 08:20:05 -0800 (PST)
Received: by 10.68.42.230 with HTTP; Thu, 3 Jan 2013 08:20:05 -0800 (PST)
In-Reply-To: <53B11A2698485743AAA262E995E2C3F1915F0C3C@EU-MBX-01.mgc.mentorg.com>
References: <53B11A2698485743AAA262E995E2C3F1915F0C3C@EU-MBX-01.mgc.mentorg.com>
Date: Thu, 3 Jan 2013 19:20:05 +0300
Message-ID: <CAKL3bWXCnY63a0n5uqwpqrLgBwAwa-jSpHC2WxwdfRvrQc6yBA@mail.gmail.com>
From: Anna Dushistova <anna.dushistova@gmail.com>
To: "Ali, Nasir" <Nasir_Ali@mentor.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Pandaboard booting with Yocto with LTTng support
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
X-List-Received-Date: Thu, 03 Jan 2013 16:20:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello,

Does your kernel image have tracing enabled?

Anna.

On Thu, Jan 3, 2013 at 4:06 PM, Ali, Nasir <Nasir_Ali@mentor.com> wrote:
> Hi,
>
> I need to have LTTng kernel tracer support in Panda-board. I have
> successfully built Yocto with LTTng support for Pandaboard and also
> successfully booted with these images but LTTng kernel tracer doesn't work
> for me. I have built with the following steps:
>
> Pull the Yocto sources from git: git clone --branch <release_name>
> git://git.yoctoproject.org/poky
> Pull meta-ti layer from git:git clone --branch <release_name>
> git://git.yoctoproject.org/meta-ti
> Run the environment setup script (oe-init-build-env)
> Add the machine name (MACHINE ?= "pandaboard") in local.conf file
> Add a line (BBMASK = "meta-ti/recipes-misc") at the end in local.conf file
> for resolving meta-ti dependencies
> Add a line (IMAGE_INSTALL_append = " dropbear") at the end in local.conf
> file for 'ssh' support if it required.
> Add a line (CORE_IMAGE_EXTRA_INSTALL = "lttng2-ust lttng-modules
> lttng-tools") at the end in local.conf file for LTTng2.
> Add meta-ti layer path in 'bblayers.conf' file
> Start building with bitbake core-image-minimal
>
>
> Then booted successfully but LTTng kernel tracer doesn't work.
>
>
> root@pandaboard:~# lttng list -k
> Spawning a session daemon
> FATAL: Module lttng-tracer not found.
> Error: Unable to load module lttng-tracer
> Error: Unable to remove module lttng-tracer
> Warning: No kernel tracer available
> FATAL: Module lttng-tracer not found.
> Error: Unable to load module lttng-tracer
> Error: Unable to remove module lttng-tracer
> Warning: No kernel tracer available
> Error: Unable to list kernel events
>
> Could you please anybody guide me about this issue.
>
> Best Regards,
> Nasir
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

