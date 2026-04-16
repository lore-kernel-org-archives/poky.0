Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 866CAFA0C4E
	for <webhook@archiver.kernel.org>; Thu, 16 Apr 2026 07:39:26 +0000 (UTC)
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.8215.1776325160931154554
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Apr 2026 00:39:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=GVokH6T+;
 spf=pass (domain: bootlin.com, ip: 185.246.85.4, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id C8FCD4E42A13;
	Thu, 16 Apr 2026 07:39:18 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 8A33C5FDEB;
	Thu, 16 Apr 2026 07:39:18 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7B9D91045A122;
	Thu, 16 Apr 2026 09:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1776325157; h=from:subject:date:message-id:to:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=A079wZwk4ih2O8ay8mbhrEffLMD2zfMGaOmuzTd1pbY=;
	b=GVokH6T+IMoLmgS00G6e4xTP0NguIwknSBMlBEvmb+ngbq2NO6uI2BKruIMlk0u8ciwdAi
	EBVNJa6Q4iFKO1QcVQrIBkc0hbXThmKqFCyUTT6VSPTZ5qQGaafDLAUw0iquSv0QsaSEkT
	61Vj9PPgptQsQdDuKiiVmCm5aAMfrShyDXGC+zMoBQrnqPPIUHN6iCbgm+I5V+P6QKKeZN
	+OvzoBi4W2BRq9mrsug1nE8xpp16b2wx+bW6Rl5+jGlGvrmJ68WWXGrcfUQ4EBhR09fDGE
	IIPCCo6CPOAby2fDQBUIX0we4+ONrIRkH52wBO/c2TSLavaAy/jlv72P/copfA==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 16 Apr 2026 09:39:15 +0200
Message-Id: <DHUEPR3MDZYV.95LN79ECB3XX@bootlin.com>
From: "Antonin Godard" <antonin.godard@bootlin.com>
To: <yoann.congal@smile.fr>, <poky@lists.yoctoproject.org>
Subject: Re: [poky] [meta-yocto][whinlatter 1/1] poky: Fix CentOS Stream 9
 distro name
References: <cover.1776322970.git.yoann.congal@smile.fr>
 <612d2774ce53cedf828db4bfd35bd5772e520dd0.1776322970.git.yoann.congal@smile.fr>
In-Reply-To: <612d2774ce53cedf828db4bfd35bd5772e520dd0.1776322970.git.yoann.congal@smile.fr>
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 16 Apr 2026 07:39:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13902

Hi,

On Thu Apr 16, 2026 at 9:03 AM CEST, Yoann Congal via lists.yoctoproject.or=
g wrote:
> From: Paul Barker <paul@pbarker.dev>
>
> CentOS Stream 9 reports as `centos-9`, not `centosstream-9`.
>
> On our stream9-vk-1 autobuilder worker:
>
>     $ ( source /etc/os-release && echo $ID-$VERSION_ID )
>     centos-9
>
> (cherry picked from commit 2ed5aa3ac9eb7082b2534f12fb6b2f7fc3dc4bee)

Note I already sent this earlier as well as a similar patch for scarthgap:
https://lore.kernel.org/r/20260408114639.453987-1-antonin.godard@bootlin.co=
m

Antonin

