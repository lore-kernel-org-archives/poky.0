Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2A98F44858
	for <webhook@archiver.kernel.org>; Fri, 10 Apr 2026 12:58:52 +0000 (UTC)
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.155858.1775825926109493520
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Apr 2026 05:58:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=z6GQUNFQ;
 spf=pass (domain: bootlin.com, ip: 185.246.84.56, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id F2E7B1A320E;
	Fri, 10 Apr 2026 12:58:43 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C898E603F0;
	Fri, 10 Apr 2026 12:58:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id DB11710450021;
	Fri, 10 Apr 2026 14:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775825923; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=/WCkWz0hX67Te2VdxC4xdHJD0dCglXr0fnqZucbhVCQ=;
	b=z6GQUNFQUcqO58knfWIJ33lej1lti2Ft1IuJMIFf2BFjJspmXJQUEG0AhhJG/0CWhJhNaM
	rvZKdZIjS5nIKlHE67zUIyJrDNzhO6OtKonBkluSwwXClrrHZfuIvXtvyeniI8mAIBHq+D
	B4la8NKbIoj0Ez5cqJxbLK/9ykqBcAyAMyUl9XncmD++iwuaT25DA2JtaDR7EqHxX3eVhp
	x/xz13Dkp+iMC45deeHIyj3RM63A8d7/xHiFBJp/s8PQZDTv1lx3nAgy5YOwLG414A+Y10
	y9rnRdIjdC/FCdbGXIaRJfxmC7eDM52++PJspxDWbEazmCv+B3YMwYseIeuiGA==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 10 Apr 2026 14:58:41 +0200
Message-Id: <DHPHR1Z795KY.2HNJUFOM6XWQX@bootlin.com>
Subject: Re: [poky] [PATCH v2] meta-poky: remove the default template
Cc: "Ernst Persson" <ernstp@gmail.com>, <poky@lists.yoctoproject.org>
From: "Antonin Godard" <antonin.godard@bootlin.com>
To: "Alexander Kanavin" <alex.kanavin@gmail.com>
References: <20260303172109.2081848-1-alex@linutronix.de>
 <275547.1775745237087663847@lists.yoctoproject.org>
 <DHOP88O48DYH.374EOELZ42STB@bootlin.com>
 <CAD=4a=UpC8BH9P5tF0pK-Gf+og+oOoEe-nw8MpQGSme1HxRTkQ@mail.gmail.com>
 <DHPAEJTIJMYA.1IY4JQ5ETSU4M@bootlin.com>
 <CANNYZj9QSPRz7QVA_6G-Zijd9S5v1PVaBZHDzUueoLoHTo+85A@mail.gmail.com>
In-Reply-To: <CANNYZj9QSPRz7QVA_6G-Zijd9S5v1PVaBZHDzUueoLoHTo+85A@mail.gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Apr 2026 12:58:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13897

Hi,

On Fri Apr 10, 2026 at 2:36 PM CEST, Alexander Kanavin wrote:
> I'd also note that poky template is mentioned in multiple places and
> they all need to be fixed:
>
> alex@alex-lx-laptop:~/development/yocto-docs$ grep -ilr
> meta-poky/conf/templates *
> documentation/migration-guides/release-notes-5.3.rst
> documentation/dev-manual/licenses.rst
> documentation/dev-manual/poky-manual-setup.rst
> documentation/dev-manual/custom-template-configuration-directory.rst
> documentation/overview-manual/concepts.rst
> documentation/ref-manual/faq.rst
> documentation/ref-manual/structure.rst
> documentation/ref-manual/variables.rst
>
> And this should be in migration guide too.

Yes I took care of that this morning, and I'll send patches shortly. Thanks=
.

Ernst, no need to send a patch for the poky-manual-setup document, it will =
be
part of mine that replaces all occurrences.

Antonin

