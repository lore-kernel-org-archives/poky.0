Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B314E8538B
	for <webhook@archiver.kernel.org>; Fri,  3 Apr 2026 17:25:14 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.851.1775237113767763696
 for <poky@lists.yoctoproject.org>;
 Fri, 03 Apr 2026 10:25:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=CvtFq+op;
 spf=pass (domain: smile.fr, ip: 209.85.128.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-486ff3a0fc1so19168525e9.2
        for <poky@lists.yoctoproject.org>; Fri, 03 Apr 2026 10:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1775237112; x=1775841912; darn=lists.yoctoproject.org;
        h=in-reply-to:references:from:subject:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9yGmfQjj7FZK/FKDUPime9k2OTMuzAzIpV6Sh/Qa3EY=;
        b=CvtFq+op3XNx2s2qE9q34pqMf4opewPQWR5cip2L2POhCwH1W75kCS4Ss+vrGatwl4
         MrP3I9aRdRwJQ+kJZcoye52HfRHqUmd6Jr/cIlrPz1STc8sfRJteTEFUslomImYL9Gfn
         T8NS0DKrZEVTvOhc5B8ZURF6fEXQBIxwL4kRM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775237112; x=1775841912;
        h=in-reply-to:references:from:subject:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9yGmfQjj7FZK/FKDUPime9k2OTMuzAzIpV6Sh/Qa3EY=;
        b=W+KSRQ/gnEiXeTnkWZ8Z5sueVGqCThCC7DL3hHYWxBM1he5rEezFkKVtyddBvvBJIv
         GG5v9CW/AeGK+jiX6AxaUiIW0VRiW1NvGvmvDj0TrepNY993sn5odm8G3D9s6aBRYwpP
         5nLh4ZAkjZUMHLHAMVP2jFSHJkbdxgzf5JD3OFntTNrnfVIQK1f7By96ziOK2FcvRxGg
         JHXTpeQsE5RsaBD/l8ThHsLUx1aandgBa1z7gU6eumI9dTUylFhY/m8QvwNsjcJw7kiB
         nUxmzTZY5TxHOZPNO6/hG1BCnP9yprplr0S5RHoZ9hcZm6WusUiTk7s8pXIt7FxJWH8Q
         7P1A==
X-Forwarded-Encrypted: i=1; AJvYcCXerCPEu5fzhagt321+I/jMKgyLFObHhyE+xCu7UfxgntFT0hv7JfCuQ7t6Aw4IsB3brWjB@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxIHGsalM88XW/05pYx6bYv57JqhpKC+xtygSLlMvCtyHWPGw1h
	Yauc1OtMcDRSumRAYMP7/0uxqFMFzV9KB+KZkBP5BOjK28wlpDwB+0qL6Q0XxavapKE=
X-Gm-Gg: ATEYQzzsFBgekgfgrcO9k7C6mBKaUHT9rqDuIMSv4K1n817d5WoIy9LHxHHkJgys4W0
	kIAQJvrJMnd0ltcqDxFkPEJtFkzQS7zUs1d9TkRZpEDtSBOSYn80Ufsu/Y24BA5DuvY08XmO7h3
	uuSYNGYfadu27HPUhw3lA68kml9VdUusPlOpok0xlbyA5F+pXUQiy281HRzG7IQwrWI3c7R6T7w
	ufyzQZCmqcVxVrzWqjOdRW/TBRtpcV46ykx1OUuoDfJaZzbFE6IT9Nbfx4UFuFcGhegxjgjUFh+
	UbdS/uCGNoLmTAk75phOKmWEZV82d5YVL987mN9iOUPrpIxsOPyqEsrYK5zRlfNSAKUlaShUgXN
	2GdGqkVuy9Z5NrHptdk+8Rewe44ktYfWPBR+TM3Os3e6+79BHGeVcYHuPRjQNwMG/YerjlYdims
	YDd9cN5Z3ABuKLtwTabsyM8xZvGQNgZ4iI0fREAAKu8ij2ufg32OixAPaTs5QbtWUHRimZ3SH9T
	0brJ2Tio93XN03+
X-Received: by 2002:a05:600c:c0c8:b0:485:ae14:8187 with SMTP id 5b1f17b1804b1-488996da170mr44040355e9.2.1775237112088;
        Fri, 03 Apr 2026 10:25:12 -0700 (PDT)
Received: from localhost (2a01cb001331aa00dac7300510953f30.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:dac7:3005:1095:3f30])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4889f6843dfsm41593735e9.12.2026.04.03.10.25.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2026 10:25:11 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 03 Apr 2026 19:25:11 +0200
Message-Id: <DHJP1AEJUMVX.15SJIB1RQKN1A@smile.fr>
To: <paul@pbarker.dev>, <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] poky: Fix CentOS Stream 9 distro name
From: "Yoann Congal" <yoann.congal@smile.fr>
X-Mailer: aerc 0.20.0
References: <20260403-centos-9-v1-1-e5324bd74ea3@pbarker.dev>
In-Reply-To: <20260403-centos-9-v1-1-e5324bd74ea3@pbarker.dev>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 03 Apr 2026 17:25:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13880

On Fri Apr 3, 2026 at 1:59 PM CEST, Paul Barker via lists.yoctoproject.org =
wrote:
> CentOS Stream 9 reports as `centos-9`, not `centosstream-9`.
>
> On our stream9-vk-1 autobuilder worker:
>
>     $ ( source /etc/os-release && echo $ID-$VERSION_ID )
>     centos-9
>
> Signed-off-by: Paul Barker <paul@pbarker.dev>
> ---

Isn't that conflicting or redundant with
[yocto-autobuilder-helper][PATCH] scripts/yocto-supported-distros: fix an i=
ncorrect regular expression for stream - Antonin Godard
https://lore.kernel.org/all/20260326-ysd-fix-centos-regexp-v1-1-e41c6cbe1a1=
8@bootlin.com/
?

>  meta-poky/conf/distro/poky.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
> index 5e1dc28c25fa..3c0b2c932e45 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -42,7 +42,7 @@ SANITY_TESTED_DISTROS ?=3D " \
>              fedora-41 \n \
>              fedora-42 \n \
>              fedora-43 \n \
> -            centosstream-9 \n \
> +            centos-9 \n \
>              debian-11 \n \
>              debian-12 \n \
>              debian-13 \n \
>
> ---
> base-commit: ac300baea7314ea3c80f2330b2a993f729f32150
> change-id: 20260403-centos-9-c7f3eafdc15b
>
> Best regards,
> -- =20
> Paul Barker


--=20
Yoann Congal
Smile ECS


