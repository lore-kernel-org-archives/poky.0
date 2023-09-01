Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D9CFCA0FE6
	for <webhook@archiver.kernel.org>; Fri,  1 Sep 2023 09:24:27 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.2506.1693560258308519015
 for <poky@lists.yoctoproject.org>;
 Fri, 01 Sep 2023 02:24:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=hSVcO42w;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5009969be25so2962358e87.3
        for <poky@lists.yoctoproject.org>; Fri, 01 Sep 2023 02:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693560256; x=1694165056; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LkxozdBKM4NTD6V4di7HGGiQzbFpmslHYgY4kBRy/RQ=;
        b=hSVcO42waGUfbJl+lyCArNt1+PQOUYZXLN5f1+TUgo3KMw3PMKtA5sDmN+JmJqM9pa
         l5PirqcRD91XC7VcPQcu7Rtd/CRCbs7Pskv4d+QnYNhUOUNOqfxF/kIhOHi+okmVcJmC
         DuUVfD71t/XQ42QMN8i2zxj2gJWAkye30V2x1a9Tw3h/6oXVv70Qqw6H6OyLs5zfMis1
         Rud4yh+MrznkV4AR7IEUh7qXw1ZO2qWY3igS0FOVILRkoEi7t/QZmhSCEtUAZRTvl+WQ
         E2CwLKc1o+IoOPOiN2UQAeHOuTDQlRls+0ahzTZqBPAeQYgUJxe7jYoMTE6bGmE0UmYY
         uQ1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693560256; x=1694165056;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LkxozdBKM4NTD6V4di7HGGiQzbFpmslHYgY4kBRy/RQ=;
        b=H2+bsBBF65BrF5PSK18ARqXsvZ8yBX+lGJySdxH3c/GDkgW38ZN2Aqz4ldOKUFOC/z
         AcYAuSw7xQ3msuqLEAiUcDCpx51BQ6rzz38MWeDcoceJTLwvgU1qSZCqZMd9hd+SxQVt
         7V5nybguIEf0MeYjWAlTeiMPQ0pQrvy0UW0LqDwHWwlYO24U2UoZTdLfrgMlMDX2TNRi
         XaFjCH1qARrCO8a0yODHgA3docKM1dXEC8HnFNx2K4Xm32JbtbE//obzxcyov7p/SKKH
         Ex3qiSpSHsnpnz9S7HYi+ka1mNC2Bkk2SqfXGdm+pVDLMXVuU205+4CVQ2fFvwWQCK3c
         +E0w==
X-Gm-Message-State: AOJu0YyYno7vV7AgaW3/JPOcLzIt1rOM0MAM7LpsuOQRoCIbPjMWNzIS
	vNGWi+VlT+BjG7qo+lmXTGEpTtiggZ/weFY6dNE=
X-Google-Smtp-Source: AGHT+IEoUpFeNg9It7sq1x0R/TdOUbyfDV4yCgCpHSaTJSuQZoXOvQWDF5wS71q5MTyjdsW1iEECZQS4bX7X9jnds+0=
X-Received: by 2002:a05:6512:3a8f:b0:500:ba39:f0c1 with SMTP id
 q15-20020a0565123a8f00b00500ba39f0c1mr1456774lfu.20.1693560256243; Fri, 01
 Sep 2023 02:24:16 -0700 (PDT)
MIME-Version: 1.0
References: <20230830141555.656242-1-alex@linutronix.de> <20230830141555.656242-2-alex@linutronix.de>
 <DB5PR02MB102135CCC4F1841B25E51AF8CEFE5A@DB5PR02MB10213.eurprd02.prod.outlook.com>
 <CANNYZj_5aXePxpBMw9evwWV7krAa9cCgwDuyewmd+0U4gaMwKQ@mail.gmail.com> <DB5PR02MB1021351151153EC752FD400E2EFE5A@DB5PR02MB10213.eurprd02.prod.outlook.com>
In-Reply-To: <DB5PR02MB1021351151153EC752FD400E2EFE5A@DB5PR02MB10213.eurprd02.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 1 Sep 2023 11:24:04 +0200
Message-ID: <CANNYZj9Xj54_R_obhYuyU-U=KVPsk8XVPbR2ETKt9vPw8tuc3g@mail.gmail.com>
Subject: Re: [poky] [PATCH 2/2] meta-poky/conf/templates/default/conf-description.txt:
 add a template description
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>, Alexander Kanavin <alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 01 Sep 2023 09:24:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13145

On Thu, 31 Aug 2023 at 21:10, Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
> > conf-notes.txt would contain lengthy instructions/notes for how to use
> > the template and would be shown when you actually set up a build
> > directory (this is already happening now), conf-description.txt has a
> > single sentence saying what it is for, and shown before/during
> > selection of the template.
> Well, your distinction between "notes" and "description" and that the
> latter is expected to be a oneliner is not obvious from their names.
> Though, in the end, I guess it is all down to documentation...

There's also how the tools are handling them. 'bitbake-layers
save-build-conf' would write the following into the files:

https://patchwork.yoctoproject.org/project/oe-core/patch/20230830154314.661141-1-alex@linutronix.de/

Description would be then shown on template selection and both
description and notes when initializing a build from it. Between all
that users should be able to figure out what needs to go where.

Alex

