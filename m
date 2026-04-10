Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B94BE9904A
	for <webhook@archiver.kernel.org>; Fri, 10 Apr 2026 07:13:25 +0000 (UTC)
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.150715.1775805198592103975
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Apr 2026 00:13:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=nled2hGC;
 spf=pass (domain: bootlin.com, ip: 185.246.84.56, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 7EC681A3254;
	Fri, 10 Apr 2026 07:13:16 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 55895603F0;
	Fri, 10 Apr 2026 07:13:16 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 001F7104500F2;
	Fri, 10 Apr 2026 09:13:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775805195; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Ij9kqo1pVUzhmPJ3mEMr4r5iYYGRsRhKfleL5zeK5fk=;
	b=nled2hGCXwR1r8zl2h3VC2zb4dUa2Pdx0CeFEcptcImLnWUNm0claRc53DQyzc5sIvi2Gb
	R0pd4VdD9ZmWdz4fB8JXLK8JTCogVcemaM9mUN1q3ID0D6SxorWWr/uv7G8RbvXoYUULsL
	CwXA5M/Oz4K5GI6DaHYnFauHxvMx4n+vwdne8hP9KqmaD4r9W4wlwfkUiVHHdEoBT4IPKQ
	GdOS5Z/9JSSo/2SvemfZrevtAtmoTSJjULMV0vtkTcqpSA+CMxjyHKJfFurRVMLKlVpAOT
	BHx5X2OgRrh9AVjILHs1hLSbt+lHjAxLUIAKbWHdk+Wnb84I47u+nw2O2BIFuA==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 10 Apr 2026 09:13:13 +0200
Message-Id: <DHPAEJTIJMYA.1IY4JQ5ETSU4M@bootlin.com>
Subject: Re: [poky] [PATCH v2] meta-poky: remove the default template
Cc: <poky@lists.yoctoproject.org>
From: "Antonin Godard" <antonin.godard@bootlin.com>
To: "Ernst Persson" <ernstp@gmail.com>
References: <20260303172109.2081848-1-alex@linutronix.de>
 <275547.1775745237087663847@lists.yoctoproject.org>
 <DHOP88O48DYH.374EOELZ42STB@bootlin.com>
 <CAD=4a=UpC8BH9P5tF0pK-Gf+og+oOoEe-nw8MpQGSme1HxRTkQ@mail.gmail.com>
In-Reply-To: <CAD=4a=UpC8BH9P5tF0pK-Gf+og+oOoEe-nw8MpQGSme1HxRTkQ@mail.gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Apr 2026 07:13:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13891

On Thu Apr 9, 2026 at 7:30 PM CEST, Ernst Persson wrote:
> Hmm I'm not sure what it should be. Simply
>
> source ./layers/openembedded-core/oe-init-build-env

No, the openembedded-core also has templates in
openembedded-core/meta/conf/templates/default, we just want to replace it w=
ith
this one.

Thanks,
Antonin

