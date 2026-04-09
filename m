Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1D88F31E3E
	for <webhook@archiver.kernel.org>; Thu,  9 Apr 2026 15:37:47 +0000 (UTC)
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.133754.1775745459564483315
 for <poky@lists.yoctoproject.org>;
 Thu, 09 Apr 2026 07:37:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=gWOV2slE;
 spf=pass (domain: bootlin.com, ip: 185.171.202.116, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 3A008C5C187;
	Thu,  9 Apr 2026 14:38:12 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7E8B35FDEB;
	Thu,  9 Apr 2026 14:37:37 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7DC8B104500A3;
	Thu,  9 Apr 2026 16:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775745457; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=b7nKPkNC96OSnqx5CaWirlZbZngm2pi0UY6qGUoLqhY=;
	b=gWOV2slEO9XYcZUU0pbp1dVyBDA2Gc4m3MnC1aneiKFL281l4sjTijEJt3DPzbqMD0jiL8
	dHZtGcDE7vXvCUvx6CsUe7zEe8B3F5HqX3AKv590UUZGITlxv4vwMJIoQhZkbaJyvG9heV
	GwtD31gG0QRNQ3f1VLiRjTwLkqgiJfLZeFSwi8bIuJQniKhoBLRy56cr57kaz+/ChtoX+n
	nC9sPLlw8mOZJwXxp2cusK1wvFpvllaF9gnrFbfNVTDngoLk6G7LaSfJJH8U25TEo3ppAn
	U4UCkDrI/5966rKOL4w+b5A5Sf6h7qBxe2MJ46UBXosAPEAG1wyjDsvPvN77xw==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 09 Apr 2026 16:37:35 +0200
Message-Id: <DHOP88O48DYH.374EOELZ42STB@bootlin.com>
From: "Antonin Godard" <antonin.godard@bootlin.com>
To: <ernstp@gmail.com>, <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH v2] meta-poky: remove the default template
References: <20260303172109.2081848-1-alex@linutronix.de>
 <275547.1775745237087663847@lists.yoctoproject.org>
In-Reply-To: <275547.1775745237087663847@lists.yoctoproject.org>
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 09 Apr 2026 15:37:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13888

Hi,

On Thu Apr 9, 2026 at 4:33 PM CEST, Ernst Persson via lists.yoctoproject.or=
g wrote:
> https://git.yoctoproject.org/yocto-docs/tree/documentation/dev-manual/pok=
y-manual-setup.rst?h=3Dmaster-next#n97
>
> This TEMPLATECONF path is now wrong in the docs for manual-setup:
>
> $TEMPLATECONF=3D$PWD/layers/meta-yocto/meta-poky/conf/templates/default s=
ource ./layers/openembedded-core/oe-init-build-env

Good catch thanks. Can you send a patch to docs@lists.yoctoproject.org fix =
it?

Antonin

