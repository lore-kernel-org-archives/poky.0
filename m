Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 315AC106286E
	for <webhook@archiver.kernel.org>; Wed, 11 Mar 2026 11:53:33 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.19611.1773230009266442957
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Mar 2026 04:53:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GR8b+Z37;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48534237460so41136985e9.3
        for <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 04:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1773230008; x=1773834808; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LsBqwRlRO3hhg/61Dxctao33nQEn5OEE0BFO8oHeEEw=;
        b=GR8b+Z37Pz4E9G1HjpiUa+bu38GcdP4v1+wyUkg1bIT0wTcVU2LoLdV/D448oLRg3U
         up6npPe4uwuHAuPqCVdQoZ61URC+Em0prvaFDEJH3tZS9i+9SPsWDZQwqx5gYaEwTUwo
         NpejlSHgixn4qwU3HXujfZnHk+BXllX3CYr5E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230008; x=1773834808;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LsBqwRlRO3hhg/61Dxctao33nQEn5OEE0BFO8oHeEEw=;
        b=NpVHdlVcLIbi5B+GcdSwGjTeG9tHQ1PNm5yK/0s4uHup7ZVn+C1ls/xXawmOtG4YuE
         nZozBI7TqMGnDPPXBt1Cy6vTIAnLfBjyxSRL/aivXGV81xu34gILWxb6v3tzfqH0fXlD
         4c7iubHE9iqy08wx3Z8Y5SQ7lS8QIUZEq9Gf4hPyqhkMAYZjWpOIZKZrtgYx4SdynEuL
         LiXefbwVjcS7kz7uKw+1SZ6bMQI8z2NccptjHZS49ufHKCqjlz+z3kQCk+d0BhgPqYFr
         S+W7tuVMl2n2vTgw/5XtGaZfUdCsoZofvBWS+Op9XW+GAc2mqoMYsy2u7CXydTQB7b2m
         XKVA==
X-Forwarded-Encrypted: i=1; AJvYcCXklJU4esk0M80ur+MvfIGAu/YyAmRr/e9QHYxguFkkOKMxjby6dQ5bIMaYQTyJlXmvMed7@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwYUnSheSrpHKi9Mw+Q69jiatCUAc1SSBLy6ZoSp/chxOLXm/7p
	QAtCheLItfwVLbiCsiryhUzSCSA9UFYI1VjLYzo3N/FAOpOpOZzmAlRdpcc6NDS0EwM=
X-Gm-Gg: ATEYQzwxLxqmzCPHUcshZm0hNTyxiW8v6Tu25SqjgPh84dUlGzZPKtXNQkomATYcsP3
	alwsObOiHYPy5NitFL26roYiu5cMpVl6jONnqHZJoShHCDLBJSxxcDjN2RmZUxJu7FmRyiRkpwG
	IMdqLl/qPZtpK2oEGOTn1ka8UR2dhuqr0b7IY1V9RkGQ+U1zBlzthPgxD0bCxccKCgwxHLeiDf7
	PucubGzY0/2Rqla4GAdXy0F4KHqkaSe1QrmKH0t49FYcY8uceDfvK3H0dYdKZ0CV5xkxOrc3f+H
	umJAS1B7GPUHwC0XDxvaHivvd3UbfbKBjTmQCnRbgs7Jc77ZGFSmBkII3xE5WArKXQNm+ceOX5M
	WicSAAgTTyXoD6MJdWd+W+T1CPROGim9Y28xcRFkKTKcBQL1ItCLqrJoLE2B5b/LltGPPB30S7D
	fbF9c5rNGPjg8laeXLka0dF5uQGDpO6KnzlxdhEfWoKuzpIpjNwlfioxOWeNvrsA2rfEbxAu6x6
	+9nBhLhcadJSEloqcdn4JH7Qg==
X-Received: by 2002:a05:600c:8b0a:b0:485:3c05:24dc with SMTP id 5b1f17b1804b1-4854b123a85mr37339195e9.33.1773230007548;
        Wed, 11 Mar 2026 04:53:27 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:7fc5:b1af:c486:ad0b? ([2001:8b0:aba:5f3c:7fc5:b1af:c486:ad0b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439f81f13c3sm6970804f8f.25.2026.03.11.04.53.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:53:26 -0700 (PDT)
Message-ID: <f3f3d82f4f70370b4904d65467748210e5cd1c84.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] genericarm64.conf: fix qemu testing with
 testimage.bbclass
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: mikko.rapeli@linaro.org, poky@lists.yoctoproject.org
Date: Wed, 11 Mar 2026 11:53:25 +0000
In-Reply-To: <20260311113616.249506-1-mikko.rapeli@linaro.org>
References: <20260311113616.249506-1-mikko.rapeli@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1ubuntu0.1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 11:53:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13855

On Wed, 2026-03-11 at 13:36 +0200, Mikko Rapeli via lists.yoctoproject.org =
wrote:
> genericarm64 machine has supported qemu for a long time but
> the default build config failed with testimage.bbclass to boot
> and run oeqa runtime tests.

The key question is whether genericarm64 is meant for real hardware or
qemu.

When you run testimage against an image, the assumption has been it
would be a real hardware setup, not a qemu one. If you wanted qemu,
you'd have used qemuarm64.

These changes are basically turning genericarm64 into qemuarm64 :/.

> TESTIMAGEDEPENDS needs qemu utilities so that they are correctly
> installed to image sysroot. For qemu machines these are set in
> testimage.bbclass but remain unset for non-qemu machines like
> genericarm64.

This is going to be annoying if you're trying to test real hardware
with testimage. I can see the arguments both ways. This is one of the
differences between the two machines though and I'm not sure it makes
sense to make them match.

> TEST_RUNQEMUPARAMS needs snapshot since default genericarm64 image
> is a compressed wic.zst, nographic to run qemu without connected
> display which is better on headless build machines, and slirp which
> also works on much broader set of build machines than the default
> tap networking.

You shouldn't need to use nographic with the changes I'm proposing to
how runqemu is working, even on a headless system.

slirp, is a preference thing and I'd like to stay consistent between
the qemu setups. It is not the default.

snapshot is probably the one setting I think we should have as default
for the reason you mention.


Cheers,

Richard

