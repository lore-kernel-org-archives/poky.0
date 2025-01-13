Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E70E7719F
	for <webhook@archiver.kernel.org>; Mon, 13 Jan 2025 13:17:46 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web10.16342.1736774264096267213
 for <poky@lists.yoctoproject.org>;
 Mon, 13 Jan 2025 05:17:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Nx1qosVK;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6d89a727a19so48761826d6.0
        for <poky@lists.yoctoproject.org>; Mon, 13 Jan 2025 05:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736774263; x=1737379063; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i+B1AydLiiNH/DYeMutyfyz1z/iJSsVdWgeDLFfDTFs=;
        b=Nx1qosVK79Eg5RrvSPQPTw39aqG0J+EQZ0RnKPTvXJ/9aeFMtgS6bHJEyzV3wfQ0cT
         20tlMbNjcH0i3USzg37HtnmcBVPpPvf1t32kGM3cuU+dGPZWWnGgs8Nw4LVf1fEwhKKz
         wwWpeO/hm5B6ewnt0t3/sbJTudlz5rKUntPaPggwmjkWfOfdzALnY/FYThonB7UkB9s3
         kpYmEGWl/4K+PHxfm6X5eekNEILcd81INPmzJkkEM0abdUZ9P9gEjupwArsjJ8qyHWKJ
         ik/kZVWZgI4YilRPL8JIlhiaaZacD1WVzQJ1Fa0O/z7RPVwnc8mMxc8ZAaXPZjGQI4pZ
         h9Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736774263; x=1737379063;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i+B1AydLiiNH/DYeMutyfyz1z/iJSsVdWgeDLFfDTFs=;
        b=BMa5ckDKPtnB1kYiG65NDvRSkmniNMGWqfpwBTaV5ZZBbq4cZl+KGdwBecFGZWmMcb
         UiNAm2QuT0R/aK2dM/es6eELh6dQz/1PAJe82BxVF27v0hqoCnOe2YlSuPq71XpGSbhF
         Ir+LW4oHIAP3EoY77CAtTa/CnBsK1HozGUoEFT4gGxrhpGlUNQvmF/vw97/5Vls1Q5J6
         gkit8/m+yuYNM3NvQLQkuKoxzfmwvMpnmkwlWDZY1cPwwIL9N5BlwdEcSlAKyzqw7LZC
         ezJo8lK4WbdNPsP00mVP6Z2Lu0UjDJrfnllh4e1CnM6PgCc5s4tf/lRjio/q/a4gaGrn
         US5g==
X-Gm-Message-State: AOJu0YxSFdTmTlL4v4t4G5HFZ9iOwPnlzZW0N5/lHl6AMhWC80+ARtpn
	SCIcuLaEnwagCE5Yazhej7bORh+eawqFxm9hGVtEtsUQxNj2prc7msThSNNPgQSqGKlxQOM3rlw
	fapDPbLR9xcHpotEYEYPhjfwRfVw=
X-Gm-Gg: ASbGnctsYbmpKHv7e22L4Jern2IsQzMTVO5ATGPztB5ZvnmzoQB4nR9H9OSUDV/UkIU
	jBUe75qes/BAR5tV+BvpcuWWuRflynJmQqDvNVymDiySIVKVB3g0upm2ST9VRrdH4jAI0IaKD
X-Google-Smtp-Source: AGHT+IF6QGiek0ujy51fWepNQm3EgSJHvoRPFxdzicFVIh5AZ/h3CvpA/qg+kI4y2n9zEDsItqgo7bBd/2tjK255wpA=
X-Received: by 2002:a05:6214:5f04:b0:6d8:a258:68bc with SMTP id
 6a1803df08f44-6dfbaa09340mr123204266d6.11.1736774263134; Mon, 13 Jan 2025
 05:17:43 -0800 (PST)
MIME-Version: 1.0
References: <gwtb.1736773617531475991.iGrZ@lists.yoctoproject.org>
In-Reply-To: <gwtb.1736773617531475991.iGrZ@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 13 Jan 2025 14:17:32 +0100
X-Gm-Features: AbW1kvZdwDrveP4rIma3DDViFctdaF4vQ628H2QTAfbtZLqCaljDFkKG25t2org
Message-ID: <CANNYZj_tTFbO36CEeaVqZJROhb8LK6jFpCegD6TYFNejFcQ_XA@mail.gmail.com>
Subject: Re: [poky] #package #poky #yocto connman: Bug in connman causing
 endless write to file
To: peter-simon.dieterich@vaillant-group.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 13 Jan 2025 13:17:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13503

On Mon, 13 Jan 2025 at 14:06, Dieterich, Peter-Simon via
lists.yoctoproject.org
<peter-simon.dieterich=vaillant-group.com@lists.yoctoproject.org>
wrote:
> Our solution was to disable the stats module. We think it would be best to have the stats module disabled by default as it is a functionality that most users won't need.
>
> Should I send the patch in a separate message?

First please find out whether it's possible to solve the data format
issue with an upstream fix. Disabling something because of a bug
triggered by a very corner case isn't a great idea, particularly when
justified by broad, difficult to verify statements like 'most users
don't need this'.

Alex

