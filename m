Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14D07EC142A
	for <webhook@archiver.kernel.org>; Tue,  3 Mar 2026 11:02:28 +0000 (UTC)
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.15707.1772535739578186280
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Mar 2026 03:02:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=JJo4MeKm;
 spf=pass (domain: bootlin.com, ip: 185.171.202.116, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 289A1C40FA3
	for <poky@lists.yoctoproject.org>; Tue,  3 Mar 2026 11:02:35 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 8560D5FF29;
	Tue,  3 Mar 2026 11:02:17 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8D48B10369699;
	Tue,  3 Mar 2026 12:02:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772535737; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=lEHIxCeupf44qqM7V5X18IJORG0JOctPeO2xEqWCZ44=;
	b=JJo4MeKm26uVhqEU7e/umiKCgaTw0XIZ3bBnaFz+QHG+vCncZedULIK0ThVgtutfQ8Kz7/
	Kmp6LE2M5PnUw5Kk670QRTGiDPJAh6fvnqkvb4vsLrRKlmJHhP+Fx4jo7oXLGRjc6pjgzm
	22NmOojsqzgIeeecKJo3QDzBwdV+7EUDRhWDSCxVzzDuZmK1MxJOAL6fbaOvItZXUY2N/R
	WPQb23TRHot13W1b+sKHkBTYbH1qWSVky8EoHxSAeYoP7/0gsyp7n7RSfC2OwuO+QBpfcv
	6ONj3ZO3VMGQuwJxHW/hryupzy28WtHE0mNAdKFgJS3hpPdbKoINq1Lf0W2UHQ==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 03 Mar 2026 12:02:16 +0100
Message-Id: <DGT3H7QZF54R.71RQMXNQDGXK@bootlin.com>
Subject: Re: [poky] [PATCH] templates: site.conf.sample: remove CVS proxy
 instructions
Cc: <poky@lists.yoctoproject.org>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>
From: "Antonin Godard" <antonin.godard@bootlin.com>
To: "Alexander Kanavin" <alex.kanavin@gmail.com>
References: <20260302-remove-cvs-note-v1-1-1e3f0ac1c069@bootlin.com>
 <CANNYZj8tmUHSi50ivEtkFQUf1fh+2iV34zQ3P-2Xt-59ZAVikA@mail.gmail.com>
In-Reply-To: <CANNYZj8tmUHSi50ivEtkFQUf1fh+2iV34zQ3P-2Xt-59ZAVikA@mail.gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 03 Mar 2026 11:02:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13846

On Tue Mar 3, 2026 at 11:34 AM CET, Alexander Kanavin wrote:
> On Mon, 2 Mar 2026 at 10:32, Antonin Godard via lists.yoctoproject.org
> <antonin.godard=3Dbootlin.com@lists.yoctoproject.org> wrote:
>> The CVS fetcher was disabled with 5427500e4f23 ("fetch: Drop CVS fetcher
>> module") in BitBake. Remove the CVS instructions from this file.
>>
>> --- a/meta-poky/conf/templates/default/site.conf.sample
>> +++ b/meta-poky/conf/templates/default/site.conf.sample
>> @@ -6,10 +6,6 @@
>>  # changes incompatibly
>>  SCONF_VERSION =3D "1"
>>
>> -# Uncomment to cause CVS to use the proxy host specified
>> -#CVS_PROXY_HOST =3D "proxy.example.com"
>> -#CVS_PROXY_PORT =3D "81"
>
> This needs to be fixed in oe-core first. I'm also pushing to remove
> the poky template, as it's nowadays just a needless duplicate of what
> is in core.

Correct, thanks for catching that. I'll send another patch.

Antonin

