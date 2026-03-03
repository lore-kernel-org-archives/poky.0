Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA7D6EC1423
	for <webhook@archiver.kernel.org>; Tue,  3 Mar 2026 10:34:37 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.15354.1772534068930115701
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Mar 2026 02:34:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jQBy7kGN;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-899fc265126so24874856d6.1
        for <poky@lists.yoctoproject.org>; Tue, 03 Mar 2026 02:34:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772534068; cv=none;
        d=google.com; s=arc-20240605;
        b=NBwQawnuyCbwnpqwlIwAbP2ma9ZPlp9pK20odyFzBSKPvmKUtxg7tNiJZdlwpqyYMx
         Innnn4OtaMDnv0wL8o3EFNOwAQg9PBpt6fb7uamLL6GVRRDSllRE4b8BMf0bDa0Rn07r
         CbWV0dk4Zlaww/Oik2bgjJBw8vP5B/J+HaBbDGa7/HFI3QY7WvBErsobyQiN6lv0/5gq
         4hElZUfpYff9LftswW38l0VK7y3TZblI946nCfQoCY/u+fZjP0EKtiy35Mxvs12md7pP
         /LacYjRtWXcPkseKmoseHNEhmgdes8uP9QZJLjJzumlEER2XNZOnV0YGtqXSQtlWU56g
         eCoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eQTcESpPvwMCgNEEpr7RTtQ9NHDXRnN4cGK/E3EUVo8=;
        fh=d4x5/7qx2oFtqea9B3wHMzaysFTEiPLkKU3lwB8FbRE=;
        b=J3UNn+w9obuN6iluNptNb7C4MjayO8PzBf58qiWlJl7UfY5Jn9to9zzbxydq4WxFP+
         3Cg9ZHzI8Y9HyS+soobTVBE9Q3i2VKQfArEY7eDkOObxUugRII+vOayuMny+RM++FeMe
         xpGD9DcDu0ObrmuoYNwoWKqcEXAoW0BgmU6tgVsxTio8t6bacvrA4bcry/9ZayQKBN83
         HCRNqIwcLkAXbNu93vAmyPR/4HC/dMDkvwHjgBQTq22J7mlqLZXn3KMKKpkamJLNKvJg
         Akplgle0qUv5C5ziRbq18mVTwHqsbpGvWrz2SmrSMpUBbRYtlDDbpJ1q+eEB8j5D9hJQ
         Qjqw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772534068; x=1773138868; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eQTcESpPvwMCgNEEpr7RTtQ9NHDXRnN4cGK/E3EUVo8=;
        b=jQBy7kGN7tgqhnaIZfrJUCWQM7qTHU4G24bcF5VtudmmWFLTaCEwK+YaGWb4FIN5EA
         xoPL6t1G3lbhQdElQzDVZ4qOGCLlNPDI+zeVK9QHMqalL4vPAz/E7dKzjiJUeMCSUc0b
         tUNfN3S5I7x/FRgiA8G64hotqFdefdfy7wY4cmS1lp/OsJG3Lv/lnWVsMo5kcX/ceoYH
         J60Kg46r+NOg/WT5187G9IKN1py2fRfEUmXV/SrRv0wB5cwBEnMIK3CEa8J8UKo6GytZ
         PMQh+FXD5oe1lpR0RenRFgSXRMqS5NVC8ieNVpXGGsTTGJO5Vmc5ONJ1uUl8+u8N2byd
         mmcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772534068; x=1773138868;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eQTcESpPvwMCgNEEpr7RTtQ9NHDXRnN4cGK/E3EUVo8=;
        b=fjuLHSVolnR0KI1tJ8ofXHcX1r0MVum8mXWAJgyHltTgjB/wHFG4WkrEIUFWDCy0ql
         THXRH0M5q+mxicY3/z0I4Mf1x9TuedGZGJZb3bDLwqOaKQCHBwZhxRXyGrI2egq4BLbB
         DIM8WrCNK/878SjKEOxtnv+6I//GSA0tX1GTD87/a7WUeuRbLokNlhEMYlxA6G/AVvKb
         zB94f3U3TKftLLGcQyR3Tae/b26ywwxzrFp6v55KGWv3QG5JDr5esCK8za2naFg5ENOo
         2tKh4lU1lPXaPxR0zPm7+TPcya9lW17bTQidVfabErsomGU3wZzfyaDpIySJIptawS1n
         7h5g==
X-Gm-Message-State: AOJu0YxFlVNgP+Jh/ekCX8/tadcwUpAyK+DxJtNGphEznpz/cdZOLzPk
	S6pcMWeIqodKj27KMli3ATs0wneuhvl1C9dfycgKY0CyEkU1l3f46ZlXOUbYXPnfISEe5y3iP7y
	P+mjItBie+6Fyey7UPcEkh1rInRUhvUE=
X-Gm-Gg: ATEYQzw/Ni8k31Wt8fXv6pYTHvYNZPOi/nbPJPkAUvGX6mE7qrQO6fwzIG+gUrC1aRZ
	Xk52zZNovJTJlA4OeDeCEFCh14GSkRdI6RyTscTN97ihymOa1uwzMz82XSkPcFlyiZSJ034zeUW
	Dlyh3qTDegFzaXMcVBdO+F4RYlSPjaw2oen9AW7Mp+wAJy0fnuc/CXaHMa30FxJZbSvBa9Co26L
	ezh3BW8Lheh6I/dISbz2Vo5hyxmuPDZXNZcSO1gLMbcgAn77FHAQIszR2X+wSuj1DepCCYIsNWf
	+BypRdLm+rU5ssxVZeHn2XmRLjm7fBHi22tQnlULsQ==
X-Received: by 2002:a05:6214:29c6:b0:895:48c2:aedc with SMTP id
 6a1803df08f44-899d1e8fa62mr206225676d6.39.1772534067918; Tue, 03 Mar 2026
 02:34:27 -0800 (PST)
MIME-Version: 1.0
References: <20260302-remove-cvs-note-v1-1-1e3f0ac1c069@bootlin.com>
In-Reply-To: <20260302-remove-cvs-note-v1-1-1e3f0ac1c069@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 3 Mar 2026 11:34:31 +0100
X-Gm-Features: AaiRm52S9AHgPkXpAYfheQ1oKcKF4hM9jUxdSdoExtgJ6I9nRWtc83mVzQ-VG-I
Message-ID: <CANNYZj8tmUHSi50ivEtkFQUf1fh+2iV34zQ3P-2Xt-59ZAVikA@mail.gmail.com>
Subject: Re: [poky] [PATCH] templates: site.conf.sample: remove CVS proxy instructions
To: antonin.godard@bootlin.com
Cc: poky@lists.yoctoproject.org, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 03 Mar 2026 10:34:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13845

On Mon, 2 Mar 2026 at 10:32, Antonin Godard via lists.yoctoproject.org
<antonin.godard=bootlin.com@lists.yoctoproject.org> wrote:
> The CVS fetcher was disabled with 5427500e4f23 ("fetch: Drop CVS fetcher
> module") in BitBake. Remove the CVS instructions from this file.
>
> --- a/meta-poky/conf/templates/default/site.conf.sample
> +++ b/meta-poky/conf/templates/default/site.conf.sample
> @@ -6,10 +6,6 @@
>  # changes incompatibly
>  SCONF_VERSION = "1"
>
> -# Uncomment to cause CVS to use the proxy host specified
> -#CVS_PROXY_HOST = "proxy.example.com"
> -#CVS_PROXY_PORT = "81"

This needs to be fixed in oe-core first. I'm also pushing to remove
the poky template, as it's nowadays just a needless duplicate of what
is in core.

Alex

