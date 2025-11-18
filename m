Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C1D4CED639
	for <webhook@archiver.kernel.org>; Tue, 18 Nov 2025 12:18:10 +0000 (UTC)
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.11165.1763468287118626041
 for <poky@lists.yoctoproject.org>;
 Tue, 18 Nov 2025 04:18:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=pAspLr6C;
 spf=pass (domain: bootlin.com, ip: 185.246.85.4, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id CA5C64E4175B;
	Tue, 18 Nov 2025 12:18:04 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A0DAE606FE;
	Tue, 18 Nov 2025 12:18:04 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BEEC310371CF9;
	Tue, 18 Nov 2025 13:18:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1763468283; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=HzdV5thqkfUxoL2vu35mxKk6pjIo/m8J9T3YBt88xIQ=;
	b=pAspLr6CGMnVHdCb5C74pCKRhU4kfDllTZwLswRDtErXj9zy0PH8E97YckTuNoPTy6/j+8
	iGB1a2Cvzd6y0D4JdoQRNRa+4NApNVqzS7wJ6zaDfhK3F7PHutd41KJ51gOsQVq7xWYls8
	wCVkC2xXIglBlxYASUOft9BLCsPHEj/xTP8ZoNCSb2XtD7xdmAUPi/r5OtKncU8SV1mQxJ
	CKx3oZAxFBGtjjBAA55cOF51wuuZtnq0JDMDlNMzdhZsGKc8FtPV+uGZgQUXXqCwoKjasI
	F2nJJyJM0uGtIswwnfl0CygxmTpvZxj5qUGoDmYIW+MP0tuRMPQDqM0eO5gx4Q==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 18 Nov 2025 13:18:01 +0100
Message-Id: <DEBTC0TIPC08.3HR8NAVZRT6K8@bootlin.com>
Subject: Re: [poky] [PATCH] meta-poky/conf: bblayers.conf.sample: move
 meta-yocto repos out of oe-core
Cc: "Mathieu Dubois-Briand" <mathieu.dubois-briand@bootlin.com>,
 <poky@lists.yoctoproject.org>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>
From: "Antonin Godard" <antonin.godard@bootlin.com>
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, "Richard Purdie"
 <richard.purdie@linuxfoundation.org>
References: <20251028-update-bblayers-sample-v1-1-97ec54cda94e@bootlin.com>
 <CANNYZj_2V2qu0BWBY_mCkZoC6+brOkfLu1FvYX=EOpbJk0sj_w@mail.gmail.com>
 <0cb2ae0748ee16aaa8aa31edc36c09cac4e24842.camel@linuxfoundation.org>
 <CANNYZj_FuQSGPzNE_PW8TxZH32fT_N8=-kLb00Wb7qismgYWEw@mail.gmail.com>
In-Reply-To: <CANNYZj_FuQSGPzNE_PW8TxZH32fT_N8=-kLb00Wb7qismgYWEw@mail.gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 18 Nov 2025 12:18:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13798

Hi,

On Tue Nov 18, 2025 at 12:54 PM CET, Alexander Kanavin wrote:
> On Tue, 18 Nov 2025 at 12:48, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>> I can merge this but it feels a little wrong.
>>
>> Perhaps we just delete the template data out of meta-yocto and update
>> the docs to tell users to use add-layer and then change the DISTRO?

No problem updating the docs to this on my side!

> Yes! oe-core and poky templates are basically duplicating each other
> (needs to be confirmed nothing would be lost though), so that would be
> nicely addressed.

I quickly checked, this is the current diff between the two templates:
https://0x0.st/Kffy.diff

Other than the obvious consequences shown in the diff, I could also identif=
y
that PACKAGE_CLASSES becomes IPK as local.conf takes precedence over poky.c=
onf.
Maybe oecore's template should not set this variable (IPK would be taken fr=
om
defaultsetup.conf).

Oecore's conf-summary.txt would also be sort of wrong even though that's ok=
 I
guess.

Maybe there's more consequences, I haven't checked thoroughly/tried to buil=
d.

Antonin

--=20
Antonin Godard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


