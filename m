Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73887CA0FF0
	for <webhook@archiver.kernel.org>; Fri, 29 Aug 2025 12:45:51 +0000 (UTC)
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by mx.groups.io with SMTP id smtpd.web10.12724.1756471546584648869
 for <poky@lists.yoctoproject.org>;
 Fri, 29 Aug 2025 05:45:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=oNu9o7lv;
 spf=pass (domain: bootlin.com, ip: 185.171.202.116, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (unknown [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 02B23C6B390;
	Fri, 29 Aug 2025 12:45:30 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 74B5E606B9;
	Fri, 29 Aug 2025 12:45:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D2EF21C22DCA0;
	Fri, 29 Aug 2025 14:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1756471534; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=iblMyHJpkTneWaVXe7oaqLRCRc4LMbbalPomf/kW8LU=;
	b=oNu9o7lvoguDKTSDjkFvnat16LrftrrWVOKF2pbKp/Lhz+hN5cxrPJOHPYcBTHK4pb0RGM
	8qKQFdY4AATI0g/WLMYI84SahuBARlR4j4IM3fvvxmyoq6yZB2QKgz9H/CBIQKKiUpB4fS
	OO6D+eS6oCAHYMFEn5Uz1K1hoxNin7ukkwzi4wfspqfSL9BAGc2nIYeQX3bJqLR6JPgRr8
	wmypJW/cg7sDy9HqWAMmS6AUjeX6XBaV3dxnULYaoFE0Q1zRFoXmUVASqy+L4ZrNiFLH2+
	Ba6BiC3WwJFzdEc+1pNkZT8pHpBasDeQd8x5fuD+YtqGMHLyisayXRitvV7Iug==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 29 Aug 2025 14:45:22 +0200
Message-Id: <DCEX6TVTI931.30FYANZVK020H@bootlin.com>
Subject: Re: [poky] [PATCH] fix: use pkgconf instead of pkg-config
From: "Antonin Godard" <antonin.godard@bootlin.com>
To: <frederikbraendstrup@gmail.com>, <poky@lists.yoctoproject.org>
References: <20250829114713.1577609-2-frederikbraendstrup@gmail.com>
In-Reply-To: <20250829114713.1577609-2-frederikbraendstrup@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 29 Aug 2025 12:45:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13737

Hi,

To get reviewed this patch should be sent to the openembedded-core mailing =
list
and should apply to the openembedded-core repository, not Poky.

Please see https://docs.yoctoproject.org/contributor-guide/identify-compone=
nt.html.

Thanks,
Antonin

--=20
Antonin Godard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


