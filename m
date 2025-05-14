Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE9D6C3ABD8
	for <webhook@archiver.kernel.org>; Wed, 14 May 2025 14:38:00 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.104145.1747233477328034335
 for <poky@lists.yoctoproject.org>;
 Wed, 14 May 2025 07:37:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=A7ymTOyw;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-442ec3ce724so15185855e9.0
        for <poky@lists.yoctoproject.org>; Wed, 14 May 2025 07:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1747233475; x=1747838275; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xHAxKNYzp7ZDeTn6dX41fzHmNEHYn1ll1oVeDfzhXGc=;
        b=A7ymTOywRmv7P/x2oSxsLi0LfJE2Or5w5O9bcPzUGtJJQqCxMQ4fMCumRTzWTWmrvh
         8CTdPU4xoAXwuKLCyeTpB/5sX3soSJ1YM1RnRGnGFrhlyPG97qg/0U/kH/Vtxh2gL5ly
         iFc6b45220HmJjE9rGnbzS0DaABrGEtoMoud4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747233475; x=1747838275;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=xHAxKNYzp7ZDeTn6dX41fzHmNEHYn1ll1oVeDfzhXGc=;
        b=AlTTH/f41l7y95isgQXSQ8l9QaIoBAPhw6XKXFaf223OcdZldXyoie8G5yFyULrsUM
         JYZz3r+G+ZnboHk9AJw/LKiw2GJREitMYSQZT313J6992rCssBGtzAzDPpQvfKTyRVE3
         YyO1opStsC58dLoGyL8Yox13RrTxGFUNuAcz3qMOwwX+Bq9ukTGGE2X2EDcsBuHgFzov
         wb3XPlZNy81t2B8eJDXmEpAS0+5sPnleT4TaHTSigZfaC01PVTZbC+Qo6SovPtLm4gmz
         rOifAJ6dyPhh+6Jal+JRWgbBbScBe3NvAPCOOK//5/NBOXx5xp8ZAMuoSRQleVZMfwlW
         5zBg==
X-Forwarded-Encrypted: i=1; AJvYcCWWWTTF49bA4j7DmTWuAkrMcJF1JBS72Ewky0KLU1FpNAQMr42mlxUrUi2D/M4sysx6yMot@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YymBDCWIxyvI8P+f0U/2XEaewH5tpp5AgvWbT/iE34kbLKw8sGO
	GTuJBMkCIuJShOStd17rx4J9tED6MVNy0QmjKEcZmaoLct9R5pp2LAZRfMftTrM=
X-Gm-Gg: ASbGncttc3d9YtdIffw7wqxkJJi0kQXU03QiFcDn2mFpf8VQdCe4xi9od19RyeiIc5E
	UUTRBmMN7JkJlYeMipa1TybVF8syV2kuKvs3wtdz+TxDYYMxVqzv1dljqTdop1cYa+24+cTlZ07
	nVYJyeNt1bYPN1Py6P3Ka5z6imSev4nQPnChBrO6a8j9wfCtaOM+nVL5QLfWn9OvdXcO93bc+ib
	jDrlVNknEOPmKzpY5ogvhuOHva/QHDOMLmCZeNm0VfuiS6WzUjU9Kk4u+5mFDz4yyL/KaTMD60W
	c5ufvebKdmui70ZBTg3qOKsfYZuhgy3/z0/T8niehVUOGePZrTw/C8dbwIu77nYpSSka+REmho1
	6u6qBHY5TS0sgV3Cyd58X8UGl4CxAYnlppNqJCZJR
X-Google-Smtp-Source: AGHT+IGe5cdcVqFVWQvmFBncuA9MIJ8JR5oMVKKrUi6pz67moXs/h2/CpyX502MxR5/ekvCFBMPCOA==
X-Received: by 2002:a05:600c:a009:b0:441:d228:1fe5 with SMTP id 5b1f17b1804b1-442f217a0b1mr29002645e9.33.1747233475543;
        Wed, 14 May 2025 07:37:55 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:ac80:8bbf:3444:fa34? ([2001:8b0:aba:5f3c:ac80:8bbf:3444:fa34])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58f2b29sm20195125f8f.53.2025.05.14.07.37.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 May 2025 07:37:54 -0700 (PDT)
Message-ID: <bcd6e1a7605d066961acd35ef3a77dfef84120b8.camel@linuxfoundation.org>
Subject: Re: [poky] dts error just at the end of make for u-boot (Scarthgap)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: jdowd@slashdevslashnull.org, poky@lists.yoctoproject.org
Date: Wed, 14 May 2025 15:37:54 +0100
In-Reply-To: <g7A8.1747165878348660261.lffv@lists.yoctoproject.org>
References: <g7A8.1747165878348660261.lffv@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 14 May 2025 14:38:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13617

On Tue, 2025-05-13 at 12:51 -0700, John via lists.yoctoproject.org
wrote:
> I have this snip of the log...
> > | make[1]: Leaving directory '/home/aspire/workspace/yocto-
> > upgrade/build_aspire/tmp/work/t1024rdb_64b-fsl-linux/u-boot-
> > qoriq/2024.04++fslgit/build/T1024RDB_config'
> > | make: Leaving directory '/home/aspire/workspace/yocto-
> > upgrade/build_aspire/tmp/work/t1024rdb_64b-fsl-linux/u-boot-
> > qoriq/2024.04++fslgit/git'
> > | cp: cannot stat '/home/aspire/workspace/yocto-
> > upgrade/build_aspire/tmp/work/t1024rdb_64b-fsl-linux/u-boot-
> > qoriq/2024.04++fslgit/build/T1024RDB_config/u-boot-with-dtb.bin':
> > No such file or directory
> > | WARNING: exit code 1 from a shell command.
> > =C2=A0
> So I have an error while the system is trying to copy a device tree
> binary. That name of the file is not in our recipes. So it has to be
> derived from the bbclass file, correct? Also, this is at the end of
> the make process and I do not have a "do_compile()" function in the
> recipe so this again has to come from the bbclass files... correct?
> =C2=A0
> I've started to look a the class files and I can see some have the
> bbdebug() and such but I see no output. How would I turn this on? I
> already have BBDEBUG =3D 4 in my local.conf file.

You'd usually use -DDD to bitbake to increase the debug log level.
Personally, when doing this kind of debugging I'd use bbwarn as it
shows nicely on the console output by default.

Cheers,

Richard

