Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17919CCFA05
	for <webhook@archiver.kernel.org>; Fri,  7 Nov 2025 15:46:54 +0000 (UTC)
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.1891.1762530406981520455
 for <poky@lists.yoctoproject.org>;
 Fri, 07 Nov 2025 07:46:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=iu2xghUl;
 spf=pass (domain: bootlin.com, ip: 185.246.85.4, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 1EC524E4159E;
	Fri,  7 Nov 2025 15:46:45 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E9EF9606A6;
	Fri,  7 Nov 2025 15:46:44 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8294911852498;
	Fri,  7 Nov 2025 16:46:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1762530404; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=88ppCS+anwAslm6FkZyKLRE7uO/4pPCPJw1sKfBxPEg=;
	b=iu2xghUlo0ZoVIqrmbcAE6DoESamYg40tuN1RFssQSRTyI+IJvqVQn9G0YPWRcqmZZYy9P
	WPBFEiOV1bcfghiiQ/JwsIZK9k1KdIC61V1BYTzTt5vtme+UpfcXX2Fx/qrR4X9clWeTPb
	swcn3icn1+APGK9oWMehyjSzxdfre6d7gMLSAwAIxnrMQeUFPmloKQFzienhf5n4e7GOX7
	7a8SADUg4k8cctMau1EVahuF/DMAv6fJGu5f9z+EK1rhYeSMgnm1baCkUtCNfha+XdukZe
	MEOX12ovfzy9sXTV3cjHvU3J7lZfbfLJpbJR86EC8Gw51eL0a7juKf3VwC5eNg==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 07 Nov 2025 16:46:42 +0100
Message-Id: <DE2KVT4Y3PZ6.322SIT5UH6JJ7@bootlin.com>
From: "Antonin Godard" <antonin.godard@bootlin.com>
To: <richard.purdie@linuxfoundation.org>, <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] The poky repository master branch is no longer
 being updated.
References: <20251107133459.1667071-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20251107133459.1667071-1-richard.purdie@linuxfoundation.org>
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 07 Nov 2025 15:46:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13784

I'll put direct documentation links below to help find the documents.

On Fri Nov 7, 2025 at 2:34 PM CET, Richard Purdie via lists.yoctoproject.or=
g wrote:
> You can either:
>
> a) switch to individual clones of bitbake, openembedded-core, meta-yocto =
and yocto-docs

  https://docs.yoctoproject.org/dev/dev-manual/poky-manual-setup.html

> b) use the new bitbake-setup

  https://docs.yoctoproject.org/bitbake/dev/bitbake-user-manual/bitbake-use=
r-manual-environment-setup.html

Cheers,
Antonin

--=20
Antonin Godard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


