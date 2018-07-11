Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9729EE00C82; Wed, 11 Jul 2018 06:02:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EADD1E0044F
	for <poky@yoctoproject.org>; Wed, 11 Jul 2018 06:02:37 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id y207-v6so49052042oie.13
	for <poky@yoctoproject.org>; Wed, 11 Jul 2018 06:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iKAncrUHbkCskevxKcb4TciTPfQh+wsayu7/+XRNbNc=;
	b=0WTuLGocbzjjS31yM6fE7zeULt4t6CyH9SiG1zwkZ35Q/x/Vygv/fhcTr2ltX8EmCj
	NUqEe+7TktYhGfa91Xm9M8mjzkn+NdUntM3StJxwYT3JjpOz7rXWdDBu5M5eZB4ZUImO
	LpHJHoaoRWXGhAemfd5y2dUK42d6jm4ao6iUAuI70b8QkwqM2kP4tF4MTZLmcgFLcBDS
	3VcTrRTV27u7YIND+JdUZ9316FtqHypvur+1ZRJqlV+AXrILjUAB/begAnRn6jm/nlVX
	kYirDtIopHhJoAI2uuAsQ3+usYjbyiX4VvpN+iuLzkhX6LB/1oMGyjqshNAjZ7SC7l8b
	p6jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=iKAncrUHbkCskevxKcb4TciTPfQh+wsayu7/+XRNbNc=;
	b=iJkBaz/yB19cto9F2kZ+3CCIhPOhtC1rkNqZgCmgdE1HpvTZe+hJ+GXk/LebCtyYfr
	hhMl+1KKDzqMhNrw5IpFw+tVm/d7XJ4Ndb+T4EAbrK48r1ojsGuiq5FKk1Jex/UWGxcn
	bG/z8M6mmD4daEEQRKShltRpJz67OsgkMPfoBQdsaQJpCE7d5IqcuJxaWtCvYuFwsWGi
	4j3dOw887h0UVZ7LYtvtRt2820kzSSBufaSrARNh8kZ82EXHN2L3GAsms7NPgev7Pjw2
	snzYHIoyNPWD1E7qG/S2Wy6wCmhzFeuLGtBslL0Lf8JU9bDpFht2BIYTw6Rk7Aq5wlOX
	jW6g==
X-Gm-Message-State: AOUpUlFAyM243rKySh6IGqHIHkS6DgH8cNAViUxC4U4GA1y/RdZ+MMyp
	5MF8DGBl+CtQqZ93YGGmgM6GWk8yKizHBF3/UCbDCA==
X-Google-Smtp-Source: AAOMgpctltj4sVBPw7I5ed3xkUGev/UWXpH6/hPnY3XNqxMBfJjyretPzfDf4xDcGbPxdBf/Ed/HejmbEJHsDkrhutA=
X-Received: by 2002:aca:3f41:: with SMTP id
	m62-v6mr7130261oia.18.1531314157384; 
	Wed, 11 Jul 2018 06:02:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Wed, 11 Jul 2018 06:02:16
	-0700 (PDT)
In-Reply-To: <MAXPR01MB03480862C61EEC86A4B64980915A0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB03480862C61EEC86A4B64980915A0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 11 Jul 2018 14:02:16 +0100
Message-ID: <CAJTo0LbbiTuYP2wEtAn7dutVb6K5Y8YZM_YMua1xtScK3mM9Lw@mail.gmail.com>
To: Aditya Tayade <Aditya.Tayade@kpit.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [do_package_qa] QA Issue: -dev package contains non-symlink .so
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
X-List-Received-Date: Wed, 11 Jul 2018 13:02:38 -0000
Content-Type: text/plain; charset="UTF-8"

On 11 July 2018 at 13:00, Aditya Tayade <Aditya.Tayade@kpit.com> wrote:
> I am getting do_package_qa: QA Issue while compiling mediasdk.bb.
>
>
> Configuration set up in mediasdk.bb file are as follows:
> INSANE_SKIP_${PN} += " already-stripped dev-so dev-deps ldflags"
> INHIBIT_SYSROOT_STRIP = "1"
>
> RDEPENDS_${PN} += "wayland libdrm-3rdparty media-libva libpciaccess libdrm
> mediasdk-dev"
> DEPENDS += "libva"
>
> FILES_${PN}             += "/opt/3rdparty/mediasdk/lib64/libmfxhw64.so"
> FILES_${PN}-dbg         +=
> "/opt/3rdparty/mediasdk/lib64/.debug/i965_drv_video.so"
> FILES_${PN}-dev         += "/opt/3rdparty/mediasdk/include"
> FILES_${PN}-samples     += "/opt/3rdparty/mediasdk/samples"
> FILES_${PN}-staticdev   += "/opt/3rdparty/mediasdk/lib/lin_x64/libmfx.a"
> FILES_${PN}-doc         += "/opt/3rdparty/mediasdk/doc"
>
>
> ERROR: mediasdk-16.7-772-r0 do_package_qa: QA Issue: -dev package contains
> non-symlink .so: mediasdk-samples-dev path
> '/work/corei7-64-work-linux/mediasdk/16.7-772-r0/packages-split/mediasdk-samples-dev/usr/share/3rdparty/mediasdk/samples/_bin/x64/libsample_rotate_plugin.so'
> -dev package contains non-symlink .so: mediasdk-samples-dev path
> '/work/corei7-64-work-linux/mediasdk/16.7-772-r0/packages-split/mediasdk-samples-dev/usr/share/3rdparty/mediasdk/samples/_bin/x64/libmfx_wayland.so'
> [dev-elf]

The error message refers to mediasdk-samples-dev, which is a package
your recipe fragment doesn't cover.

Basically that .so is a plugin not a development link, so shouldn't be
in the dev package.  Change your FILES so its in the samples package,
not samples-dev.

Ross

