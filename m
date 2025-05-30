Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E808DC5B552
	for <webhook@archiver.kernel.org>; Fri, 30 May 2025 10:20:14 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web11.3253.1748600405168374279
 for <poky@lists.yoctoproject.org>;
 Fri, 30 May 2025 03:20:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hu3BS3Yu;
 spf=pass (domain: gmail.com, ip: 209.85.160.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4947635914aso19849291cf.3
        for <poky@lists.yoctoproject.org>; Fri, 30 May 2025 03:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748600404; x=1749205204; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2l4zIlRCLyK7WywNrXMzz/i+TnsBwQvaqMg8KJJ4aqg=;
        b=hu3BS3YuL26AuQh+VMYdbgWQSKIv5wtpp680TjRi7qRjDq80gEd2uqZTHSzwC2l7Iq
         0+5VhAKIlMlcLaBlWe/Ab+4pkGW7r+B96WKZMLjsWk5rijw62GrxBCiQyh4P/Y3J/82b
         kX4bzQRD6VS1Q9fNGCX4lHpdaoncVS9D8ZWIW3nZLdhdjBHaUr/ajb00O17uEU8NtmrF
         CG3z5E9aZBBJwWyN3SMDpL0G/e6vGqAigrJaEmi+XxXNHzsAuId2/vT2lOaGADSFng9l
         W1yHrfnrGsl3nVO4mV2B4HM1A5SmbgsFsqXik/jRXuMbMDYxuQ589vOm+fwqRPlbfSG7
         Yrgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748600404; x=1749205204;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2l4zIlRCLyK7WywNrXMzz/i+TnsBwQvaqMg8KJJ4aqg=;
        b=f/9mt30n31GeMbnGUN1Bwv5/V4aEcHtO6mcgrrWwl+HumSyGND1J0dg+DnJID7HJxf
         ZBC5neyoxj0uVvqoCjKiOnelxaxkd/+BojlSLkTyzAKscCvbG2CMAhxQC5JFDVVg5AQJ
         7bu7p77ezpfpQ8rrJ0NuJ16S91SzOpsRSivJ9GXx8s7lNAa2u0Je9qbOmyoBwPw/mASh
         qdIer7tZRA1pFDGPBfSuC50Sbnky5mCrbG+1rmju2ITc0V5zCchqHThyKWxoO7C18ue9
         l8b4BWUhMFK5PWYMJQov+huOSeHcbQg2h7yeJQ78MgvGkLD2Zakkkgup2nGk17j5w4NA
         muzQ==
X-Gm-Message-State: AOJu0Ywx7ElwqOM4RGwYHkguppCIH3Ik5Ne5VX5/SjxqWa7bPkMh6NJF
	ty8P9FHuV2NmcXLXshlCwlWlHdUdsli/E5WXfssnFbgpanH/AA2sZroTTdkM0fCDiukQoBnRFbq
	ymW+zbO3AGzlYthNnKzwucPE/we66D1HTIQ==
X-Gm-Gg: ASbGncsf+hXoKtHXEk1Ra3F0JM4QmBcHLm39i52zkQWmq5dxtcUPZPGL3B6w7b0UYx0
	xBUzNI3TkHzm9onykhgB59rxDO17PUz2EVz9UflR3LMsXNf3iHaRZfU4gmc1W0jjQM8vGj+LKtK
	Vd9wjaYdOs3kDVShAQN+s2Ut8fNfguH3GNVi5qv11Qijf1dS7fVQe9OOtyUeHElD4tGTvEiaVtr
	He+Og==
X-Google-Smtp-Source: AGHT+IE88+DHAplm5+ir61dfG/PoZ36DUK8cx6BLWLzustwyPcn67L67JUr3X8yYwYdebqmGaOMLl/4lfxWPPDzod6w=
X-Received: by 2002:a05:6214:4009:b0:6f4:c15a:6215 with SMTP id
 6a1803df08f44-6faced2546fmr48475806d6.39.1748600403946; Fri, 30 May 2025
 03:20:03 -0700 (PDT)
MIME-Version: 1.0
References: <20250530100816.737484-1-marcin.bajer@salwatorska.pl>
In-Reply-To: <20250530100816.737484-1-marcin.bajer@salwatorska.pl>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 30 May 2025 12:19:52 +0200
X-Gm-Features: AX0GCFuQdGLqpLxTycI7hQKBRwTSQXHkMpIjvcW9oNJ1T08WmTJeWdejvYTG3JQ
Message-ID: <CANNYZj99jd9d0gTZzJhpkJBb-x5sSa0rt4U_x1a6iARd1-5T7A@mail.gmail.com>
Subject: Re: [poky][PATCH] bitbake: wget.py: Fix missing uri query parameters
 in uri creation in checkstatus method
To: marcin.bajer@salwatorska.pl
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 30 May 2025 10:20:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13626

On Fri, 30 May 2025 at 12:08, Marcin Bajer via lists.yoctoproject.org
<marcin.bajer=salwatorska.pl@lists.yoctoproject.org> wrote:
>
> Appends missing query parameters to uri in checkstatus method.

This needs to go to bitbake-devel list.

Alex

