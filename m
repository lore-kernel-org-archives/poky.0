Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA973C79F80
	for <webhook@archiver.kernel.org>; Fri,  4 Sep 2026 09:08:46 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.9687.1788512920692076404
 for <poky@lists.yoctoproject.org>;
 Fri, 04 Sep 2026 02:08:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=PhhSxXkv;
 spf=pass (domain: smile.fr, ip: 209.85.128.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-49b9320423cso8498005e9.0
        for <poky@lists.yoctoproject.org>; Fri, 04 Sep 2026 02:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1788512919; x=1789117719; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:cc:from:subject:message-id:date
         :content-type:content-transfer-encoding:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=J98/xl6SrdhGbHCNOAPSFxkbKmOPjo7Q9OeYzLOGsBA=;
        b=PhhSxXkv8PCPwmKF+XwmE2VQTdR0yWHCvYnktO1CoginkyHfgZ1BQSyWRNHzyuS6p4
         wCWhg/QLoaK/1sB8ylL7fy+irR8M3CwPOgEfLa4NF2Ghfc18cJma8ZRExy7cphGFrV+v
         TLE2jG9pVL2Dal39dYi2M5vn+SP/dXLx3uOoY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788512919; x=1789117719;
        h=in-reply-to:references:to:cc:from:subject:message-id:date
         :content-type:content-transfer-encoding:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=J98/xl6SrdhGbHCNOAPSFxkbKmOPjo7Q9OeYzLOGsBA=;
        b=CFozmt2AnPEbMq5E1KbIL60F/C/GqGSgnnplO11K14S2dJEWaddzKgF2pg4bzRyBwx
         bc28nNQPnLYdrv1mG8QYsayZ6ank4/YzsPZ5F4ym/tborViJ3J6mCiIHSP/n6x3OYR9U
         BFy0tDkJwYWhkp4Y9fGDAjQCx8CQLsusm5Q1q6y2yXaM98AOinkMqGrv2cKQRhcCvRD9
         Oobz3H41AO/lBlstJxWec2jdr0K6i43JMaf71fkY3lqCT2LJPz484rbEK66snni2oiz5
         WdaZVlwDQeKAQLrKvzBvSVI4BAyk979BDFDzVTBwcxHjzv9SSkdebPrfozLuyax7S3LP
         BWHg==
X-Forwarded-Encrypted: i=1; AKwUvBwVkPATRJxo3zbdhu5cAABedKTTLFaOoKHA3lBH6Lv1V/i4RfG+3x+SI/s5SC3GXJUvVoWQ@lists.yoctoproject.org
X-Gm-Message-State: AFuF++kVjdD6u3lELpISqLnWrcMx5Xqx2UrhiL5cldSF4svRFhNpu2tb
	/+oQ0IqQMyz+fIPALDWi0DXY1WvHU8DbQ7gatfTzm3suL+Cye6IDBIFDiMkEdPr7Nio=
X-Gm-Gg: AYBFou2DIiCxuK8mjV0m17/4I/mPHx93HguFARDOPfFkcPrFO/9PrYbrUbwjf6QEmuF
	16d7yX684T7BmXz0ohqydoTiJrtBKQN1fP0WX+E/HU8T4HR2Xp3ykxDT/lNLVsLGjB+DqcffL0B
	fAt7b7E0RzdykwQ1Azw8uqkql5h6TB5Ez7cMCBBLS7b7/0zCX99Mf8DbtePNbcN59dPx8gXeS/u
	ZTiTYtTrK/iExCE4uFjFyhID0RsbE2U7iU7/KYvavC2xyvus847RL+paVB4RViPFgW8q8crLtKp
	fsmKhYi686WEdAVCLKgTHd32IjMdR/qiQ3jv4buUMa3LOvTLsuWqh7yk4VeHVH1k4k9b8IEMEzy
	Fx8lIj7NbJxt+6jiGK3F++JiXHTPSn/T52DkdJc3q7YKscgbjgF0kG/B3qDpv2IrtTLCMnCBFrz
	w4VKFnxKuZNH3xGkaWciLb3xdObSrv816r1MNnZKsvBcnlTXwD+hZAIp8ZB4H0eBe396Tn46n9G
	x+fXfu2V8ay9FZRTPmOP71MjPyKObnC2wqDjmKD6AVCbDSGgEo=
X-Received: by 2002:a05:600c:6306:b0:49c:f5c0:aa76 with SMTP id 5b1f17b1804b1-49cf81e366amr90345615e9.5.1788512918726;
        Fri, 04 Sep 2026 02:08:38 -0700 (PDT)
Received: from localhost (2a01cb001331aa009911d943005f4464.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:9911:d943:5f:4464])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cf772692dsm63688155e9.10.2026.09.04.02.08.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Sep 2026 02:08:38 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 04 Sep 2026 11:08:38 +0200
Message-Id: <DL6EWZTNTVV1.NB5LM8MURZQN@smile.fr>
Subject: Re: [poky][PATCH][wrynose] poky-tiny: remove eglibc/uclibc
 references
From: "Yoann Congal" <yoann.congal@smile.fr>
Cc: <kris.gavvala@windriver.com>
To: <Kris.Gavvala@windriver.com>, <poky@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <20260831204058.2665478-1-kris.gavvala@windriver.com>
In-Reply-To: <20260831204058.2665478-1-kris.gavvala@windriver.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 04 Sep 2026 09:08:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13960

On Mon Aug 31, 2026 at 10:40 PM CEST, Kris via lists.yoctoproject.org Gavva=
la wrote:
> From: "Gavvala, Kris" <Kris.Gavvala@windriver.com>
>
>   Removed leftovers from the eglibc to glibc and uclibc to musl
>   migrations in poky-tiny.conf
>
>   - Updated TCLIBC comment to reference glibc/musl instead of
>     eglibc/uclibc.
>   - Updated dependency chain comment to reference glibc instead of eglibc=
.
>   - Removed the mtrace RDEPENDS for eglibc since the package no longer
>     exists.
>
> Signed-off-by: Kris Gavvala <kris.gavvala@windriver.com>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> (cherry picked from commit fa0b356c9e20279f9c49231e768a6f3a4c93dc00)
> ---
>  meta-poky/conf/distro/poky-tiny.conf | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)

Hello,

Sorry but we usually don't do cleanup patches such as this one on stable
branches. Unless there is a bug fixed with it. And, it seems to me this
is not the case here: this patch will be a functionnal no-op.

Unless I'm mistaken, I can't accept this patch.

Regards,
--=20
Yoann Congal
Smile ECS


