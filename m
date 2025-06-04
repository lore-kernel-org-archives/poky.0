Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D266C5B552
	for <webhook@archiver.kernel.org>; Wed,  4 Jun 2025 08:48:40 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.11715.1749026918004663921
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Jun 2025 01:48:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Up1JGc7s;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-451e2f0d9c2so5607015e9.1
        for <poky@lists.yoctoproject.org>; Wed, 04 Jun 2025 01:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1749026916; x=1749631716; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Lbi20xM4jISduAJW2ZXZ0sqcOfr+BfBAKSfapEfQD7E=;
        b=Up1JGc7sg34remCFuQbOkkkkTFsQng0Ljpx4EFgzCoJo7KRXcie9jkoMcRJX8BDjE2
         zEuwkXZvcv4ZtNFb0j+vMdcdAoSwknX7vkm6L/A+1AA/SeTE6by/4yI1PWoDHm1EO/7Q
         JQaw7YdHmvGeAP49LOVBOlTIQuJjJTUXOiFEA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749026916; x=1749631716;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lbi20xM4jISduAJW2ZXZ0sqcOfr+BfBAKSfapEfQD7E=;
        b=UGAKEKEi+8ke2FoVoAkm/Nyw5FvBfA9MrG3kgvKLTVefBeIqZMJPHnikpjy4DDSqDB
         opNjCNVcF0M7ERK1Qr4Vk4/8Ma0QteIkEsDQU2D77tGRQGsLfO71/7zPbp+X3MJAlpDP
         2jXxkCCkak8mMuQyNoadHaTlXUDrD05+RttAsbcBr9j4eR4876aRrEQ4b4b21yYsWfUY
         ryrS34TO1cMeD6maNeG5hFW8LsVsfF9WpXUruKvmpwWVsOezXz/FDLSQQeTbo1Spdi+2
         9xtZXSo0c0gADq1z8ydqUKs+mxelblBiOIXFilcOJbaAkN/b890IgVz+2GzBpBQSsM7b
         hOug==
X-Gm-Message-State: AOJu0YzRlSIImIRSHDT7fp1fGbbrxCe2ARMrojv/RFACyBUe7bORMpx0
	Ll5F8bzQohtdZ9MsHyWIjJL80HKz/TKM1uSx6l8z2xbvJSSVDpx1kPXbbbzUb0mhwes=
X-Gm-Gg: ASbGnctG2S+D3HkiBvH2V+XMDOjQ3x30IK/msZFvU7MfmAqfL12ysGW02wtBdO/dTJn
	UQpNqdd1FIJZF/lzqdZ0FGQHteu2nJLjGZBDE8L3539jp5YpEkdyE8QBmrFonnxxtBA2ZHsWv7g
	NllI+7h+t7zRjdk+HHlzb6k/AFG6wsz/fMH3/aq30pPnjxEHnSahS2BBl1bqeG7gPvbNWiFEvBL
	9B6C8wF9tI7rEV/+g5poGDMF5XhE1oVqOJk6ZTfKCqP+4b0pkyalfWor8Y8wy8G+MthTFADLvhg
	yER4796Rw1mmkfVkr7P3MoU8CzzaCk+p8O18fj4y4d20DVa0YqWHeuqbeSJfCsqpnOaAvcDp7Z9
	vGlhzCyznrerx85/ekX9WREbK88wZtNhoaJ8qkCLs
X-Google-Smtp-Source: AGHT+IEy6fz2ITsfAoBgUhI6fgFLTub/5iEXlJeSH3hVtXtDi3zslHvDv0iJD9awxFytm7yuehiEzw==
X-Received: by 2002:a05:600c:35c3:b0:43c:f509:2bbf with SMTP id 5b1f17b1804b1-451e6122304mr59484355e9.15.1749026916346;
        Wed, 04 Jun 2025 01:48:36 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:204c:fb2e:c462:29df? ([2001:8b0:aba:5f3c:204c:fb2e:c462:29df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450d8012af3sm188652315e9.35.2025.06.04.01.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 01:48:35 -0700 (PDT)
Message-ID: <e94887f831142516ccf60e3f477155b5b6e5f92d.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH 2/4] conf/fragments: add fragments for qemux86-64
 and qemuarm64
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>
Date: Wed, 04 Jun 2025 09:48:34 +0100
In-Reply-To: <CANNYZj9wRaL3Biwhdjn7B0wW3v61ieoEMCO6MFH15n_aLvtDAg@mail.gmail.com>
References: <20250603113558.3104618-1-alex.kanavin@gmail.com>
	 <20250603113558.3104618-2-alex.kanavin@gmail.com>
	 <b8f9ba8524090623e0e13ef36724839c140f99a6.camel@linuxfoundation.org>
	 <CANNYZj9wRaL3Biwhdjn7B0wW3v61ieoEMCO6MFH15n_aLvtDAg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 04 Jun 2025 08:48:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13644

On Wed, 2025-06-04 at 09:46 +0200, Alexander Kanavin wrote:
> On Tue, 3 Jun 2025 at 21:48, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>=20
> > What bothers me about this is that we have multiple files, each
> > with a
> > single similar config line in them. It implies we need to create a
> > new
> > machine config fragment for every machine, which to be honest, is
> > madness.
> >=20
> > Would it be better if the config/setup code understood what
> > something
> > like "machine/qemux86-64" or "distro/poky" meant and did something
> > magic with that?
>=20
> Haha, yes. I've been stuck in the subject so long that I no longer
> see the forest for the trees.

It is hard when you're deeply into something like this! Something has
bothered me about these for a while but it has taken me far too long to
be able to succinctly explain it.

> I think bitbake-config-build should be extended to have
> 'list-machines/set-machine/list-distros/set-distro', and then
> bitbake-setup would call out to that, like it already does for
> fragments. There's already 'show-machines' in bitbake-layers, which
> should be renamed and moved, so that bitbake-layers is less
> over-stuffed with sub-commands.

Maybe. I do like the idea of being able to express a configuration with
just a list of fragments so a magic mapping of machine/XXX and
distro/XXX does still have some appeal. We could code something:

BBCONFIG_FRAGMENT_VARIABLE_MAPS =3D "machine/:MACHINE and distro/:DISTRO"

to make the code generic?

Cheers,

Richard


