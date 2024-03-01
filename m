Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86514C5478C
	for <webhook@archiver.kernel.org>; Fri,  1 Mar 2024 13:16:44 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.22316.1709298999000915636
 for <poky@lists.yoctoproject.org>;
 Fri, 01 Mar 2024 05:16:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Zj3+t9w5;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2d2991e8c12so20773271fa.0
        for <poky@lists.yoctoproject.org>; Fri, 01 Mar 2024 05:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709298997; x=1709903797; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2VINLsCmwi2g14OiW2i0M4YhchHY7h+mRV2nKcD51VA=;
        b=Zj3+t9w5QfSaf38OvpraFs4eW05nysYZQXRC2VpL2XOcL740A6RrfFwta+uYWj4LGc
         CzioTHDrymx+KytanFQlkiYfvWR4ua/Ezd4kTFHzspHBrHRg/iBERnwHAXW21u9CIIG1
         NviBt3XI4TeLAJE2j1tVTqMuWCjRXvzNvaNS7i5n5LPNgbvGhU3VeiqDr2hFk3gX/bNj
         uimdmDxNr7JRL4H4mhS29Wu8GUJ9uyrarpjm+ph/2tcPkX9kJ8l3fgHsaUghKGSB1CVW
         TBeVgNIde46KzWG1jdR4n7XWCdDT4pyhWKL2Oisjq0rfz1mPRbCgJ0fCrKB6bsbxRgye
         B+pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709298997; x=1709903797;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2VINLsCmwi2g14OiW2i0M4YhchHY7h+mRV2nKcD51VA=;
        b=pu+ypsNeB4LlGgZc/XcEfLNhAWCOjKpDQx8hU2W57A6gzs/AuvJsCXfIA9FI1skPJo
         ttUORZ2CiXhtZZH1+Y42hZJEHuXx5t36sM+wzyO0wzcppN1/ZoOrWXOkf94yVF23hSMW
         dmAgFlP3pqrTiDYFM7IxYzfkiWFLiLDVLee5l/R8P1w4n26d8SdiXdNDvwJ+88rp0aaA
         wcnj8hNu1VBC/jjAWjSSPN3/GmVkBUzV6QOFbPER+CnSRjbGqe8RY+0gDm+EgkKuq4Wp
         qdgkrek0OL4A649FWAdIcdPKeGOqASHYoKHkAu6k7sUGn3BHnQmspXRo0sq9CUnYTDWX
         g/oA==
X-Gm-Message-State: AOJu0Yzx8nL5jJnDVtlld/ZzVrB6/AEkmCzC5sz0GQ8arrha0Mxjtz6g
	KTpp1cmIk3HSTn44smYI+BjcAQkzmQVoOR7enRu5wGcJNQBf2W/7atQNaMmKH2d/IZl612Cz8Ct
	zeVF+J1Qb8YG0qXZMZ6bD9JcyWWs=
X-Google-Smtp-Source: AGHT+IGKskx20Kn+m63cPHsVhiMvyHg3dKE790LU5/C/f/r8haeiYOsMaJ4ecmZT/3Vd4oiSwDkT65t8ElyE/XHejjA=
X-Received: by 2002:a05:651c:2115:b0:2d2:3c72:f67d with SMTP id
 a21-20020a05651c211500b002d23c72f67dmr995431ljq.1.1709298996628; Fri, 01 Mar
 2024 05:16:36 -0800 (PST)
MIME-Version: 1.0
References: <20240301130601.219034-1-michal.seben@siemens.com>
In-Reply-To: <20240301130601.219034-1-michal.seben@siemens.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 1 Mar 2024 14:16:25 +0100
Message-ID: <CANNYZj8Tsd1V=ptvo63ZyKCbiS0BPPkx9dO4obPSHNgqA63frw@mail.gmail.com>
Subject: Re: [poky] [PATCH] testimage: allow to set runqemu bootparams option
To: michal.seben@siemens.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 01 Mar 2024 13:16:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13291

Wrong mailing list. Should be sent to openembedded-core@lists.openembedded.org.

Alex

On Fri, 1 Mar 2024 at 14:06, M. Seben via lists.yoctoproject.org
<michal.seben=siemens.com@lists.yoctoproject.org> wrote:
>
> From: michal seben <michal.seben@siemens.com>
>
> Allow to set runqemu bootparams option using TEST_EXTRABOOTPARAMS
> variable. This option can be used .e.g. to mask service only for
> testimage task.
>
> Signed-off-by: michal seben <michal.seben@siemens.com>
> ---
>  meta/classes-recipe/testimage.bbclass | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/meta/classes-recipe/testimage.bbclass b/meta/classes-recipe/testimage.bbclass
> index ad040ee8f0..6e2800e3c3 100644
> --- a/meta/classes-recipe/testimage.bbclass
> +++ b/meta/classes-recipe/testimage.bbclass
> @@ -47,6 +47,8 @@ TESTIMAGE_FAILED_QA_ARTIFACTS += "${@bb.utils.contains('DISTRO_FEATURES', 'ptest
>  # TEST_QEMUBOOT_TIMEOUT can be used to set the maximum time in seconds the launch code will wait for the login prompt.
>  # TEST_OVERALL_TIMEOUT can be used to set the maximum time in seconds the tests will be allowed to run (defaults to no limit).
>  # TEST_QEMUPARAMS can be used to pass extra parameters to qemu, e.g. "-m 1024" for setting the amount of ram to 1 GB.
> +# TEST_EXTRABOOTPARAMS can be used to set the 'bootparams' option for the runqemu script
> +# e.g. "systemd.mask=NetworkManager-wait-online.service" to mask particular service
>  # TEST_RUNQEMUPARAMS can be used to pass extra parameters to runqemu, e.g. "gl" to enable OpenGL acceleration.
>  # QEMU_USE_KVM can be set to "" to disable the use of kvm (by default it is enabled if target_arch == build_arch or both of them are x86 archs)
>
> @@ -358,7 +360,7 @@ def testimage_main(d):
>      try:
>          # We need to check if runqemu ends unexpectedly
>          # or if the worker send us a SIGTERM
> -        tc.target.start(params=d.getVar("TEST_QEMUPARAMS"), runqemuparams=d.getVar("TEST_RUNQEMUPARAMS"))
> +        tc.target.start(params=d.getVar("TEST_QEMUPARAMS"), extra_bootparams=d.getVar("TEST_EXTRABOOTPARAMS"), runqemuparams=d.getVar("TEST_RUNQEMUPARAMS"))
>          import threading
>          try:
>              threading.Timer(int(d.getVar("TEST_OVERALL_TIMEOUT")), handle_test_timeout, (int(d.getVar("TEST_OVERALL_TIMEOUT")),)).start()
> --
> 2.39.2
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13290): https://lists.yoctoproject.org/g/poky/message/13290
> Mute This Topic: https://lists.yoctoproject.org/mt/104662973/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

