Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 744B3CCD1BF
	for <webhook@archiver.kernel.org>; Tue, 28 Oct 2025 12:20:08 +0000 (UTC)
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
 by mx.groups.io with SMTP id smtpd.web11.7020.1761653998094196502
 for <poky@lists.yoctoproject.org>;
 Tue, 28 Oct 2025 05:19:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=dkim header.b=pJweRUPT;
 spf=pass (domain: bootlin.com, ip: 185.171.202.116, mailfrom: antonin.godard@bootlin.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id C4FCDC0C437
	for <poky@lists.yoctoproject.org>; Tue, 28 Oct 2025 12:19:35 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id DB8A1606AB;
	Tue, 28 Oct 2025 12:19:55 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 97D54117A1F1F;
	Tue, 28 Oct 2025 13:19:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761653995; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=8whmRK3x+sbTVg2jmNLJKqLUE1f9t4om1RG4WkVMiGM=;
	b=pJweRUPTUDz2B97iUv6t6NR4q6D3L4PEmTsSZkjHVytEb5iJV7lUDG1CuGJH1SafoCAhGf
	KHAhXD3ffW2rlZ5cA72DP2dWZsEg9iZyTmRk/fv67px3gOOY0PmjKfY7azKnbauxe49Ch4
	GhKU9SRFQleD5WAP4/1BMWXEE431+STSImXw0ly7YiIuJUFxDfz4FombDNrUn8gA3E6wFR
	WA5NvlY1Dqyr4NsmUaDtVtuAZHdSS9h8IoupIpjDnbhJLW3hPGLhd5ye5tHQUyYJf2s989
	xPPvYp/eYIbTAlek9jl0KXrfTJCw1/CyXP8bEsCH5DY0sZDKIqu2yvTbe5kyQg==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 28 Oct 2025 13:19:54 +0100
Message-Id: <DDTY80FV2DL6.3RTKQPRRRTRMK@bootlin.com>
From: "Antonin Godard" <antonin.godard@bootlin.com>
To: <alex.kanavin@gmail.com>
Subject: Re: [poky] [PATCH] meta-poky/conf: bblayers.conf.sample: move
 meta-yocto repos out of oe-core
Cc: <poky@lists.yoctoproject.org>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>
References: <20251028-update-bblayers-sample-v1-1-97ec54cda94e@bootlin.com>
 <CANNYZj-oJqZm5AE+DCAw7Am462LPhn3y7iJFgEpXK=HuZre8GA@mail.gmail.com>
In-Reply-To: <CANNYZj-oJqZm5AE+DCAw7Am462LPhn3y7iJFgEpXK=HuZre8GA@mail.gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 28 Oct 2025 12:20:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13776

On Tue Oct 28, 2025 at 12:49 PM CET, Alexander Kanavin via lists.yoctoproje=
ct.org wrote:
> On Tue, 28 Oct 2025 at 11:50, Antonin Godard via
> lists.yoctoproject.org
> <antonin.godard=3Dbootlin.com@lists.yoctoproject.org> wrote:
>> I'm also in the process of creating a document in yocto-docs that
>> describes how to build the Poky reference distro without bitbake-setup,
>> and that uses this file to setup layers. So this layout will also be
>> reflected in the documentation.
>
> I assume this will be presented as the 'backup/historical option',
> after the bitbake-setup flow, which will be the primary choice?

Yes

>>  BBLAYERS ?=3D " \
>>    ##OEROOT##/meta \
>> -  ##OEROOT##/meta-poky \
>> -  ##OEROOT##/meta-yocto-bsp \
>> +  ##OEROOT##/../meta-yocto/meta-poky \
>> +  ##OEROOT##/../meta-yocto/meta-yocto-bsp \
>
> There is a complication here. Integrated poky repository is not
> deprecated (yet), a lot of people are using it (still), and when it's
> assembled with combo-layer, then this file needs to be reverted to how
> it was. I'm not sure if this is easily doable, but without that tweak,
> this patch cannot go in, until integrated poky repo is truly obsoleted
> and is no longer receiving new commits.
>
> I suspect everything would have to be done in lockstep, and at the same t=
ime:
> - obsolete poky repo
> - merge this tweak
> - merge documentation changes that explain how to assemble poky
> without cloning the poky repo.

Thanks for the feedback.

I haven't tested this, but maybe in the meantime we can have a temporary
template to set this up? Something like:

templates
=E2=94=9C=E2=94=80=E2=94=80 default
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 bblayers.conf.sample
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 conf-notes.txt
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 conf-summary.txt
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 local.conf.sample
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 local.conf.sample.extende=
d
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 site.conf.sample
=E2=94=94=E2=94=80=E2=94=80 no-poky-repo
    =E2=94=9C=E2=94=80=E2=94=80 bblayers.conf.sample
    =E2=94=9C=E2=94=80=E2=94=80 conf-notes.txt -> ../default/conf-notes.txt
    =E2=94=9C=E2=94=80=E2=94=80 conf-summary.txt -> ../default/conf-summary=
.txt
    =E2=94=9C=E2=94=80=E2=94=80 local.conf.sample -> ../default/local.conf.=
sample
    =E2=94=9C=E2=94=80=E2=94=80 local.conf.sample.extended -> ../default/lo=
cal.conf.sample.extended
    =E2=94=94=E2=94=80=E2=94=80 site.conf.sample -> ../default/site.conf.sa=
mple

With the only difference in no-poky-repo being the layers layout, compared =
to
the default one.

Then later we remove this, and the docs can be updated easily.

The point is that the sooner we have the documentation for either bitbake-s=
etup
or manual poky setup, the sooner we can send a docs link to people asking h=
ow to
switch to the new setup (one way or the other).

Antonin

--=20
Antonin Godard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


