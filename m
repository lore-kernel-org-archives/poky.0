Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962C8C31D97
	for <webhook@archiver.kernel.org>; Thu,  4 Jul 2024 11:07:55 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.7852.1720091271890810856
 for <poky@lists.yoctoproject.org>;
 Thu, 04 Jul 2024 04:07:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GMkqetKj;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ee91d9cb71so752281fa.0
        for <poky@lists.yoctoproject.org>; Thu, 04 Jul 2024 04:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720091270; x=1720696070; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=82oBP2d+/aSKXRGso+ZtSJ9ezFiLBWwaaxqEWtXDidM=;
        b=GMkqetKjGNnwkOph1fYQ3I8MnKv4b3trCoaVYPi7TTyt8e4imrvj4dEdaP4s7oEc9X
         zmF2EgnHPO+QSpWluIB4Wh4WFot0qPmK1a4BC40HwhRowKh4U6Ue7I62yDfrtffVe+qq
         78rAPipPeiPypySvbNxGFRD1f2s2Y3bgRy4Cf/5ont2L5/ojhi7muZqKQp9/15BRuqEx
         xPsS8NmaxyXJ4+fWS3mz1FNt9tUuFq5T0Lr9FoKTgK9Wwj0w3DcRDWm2An/E2YeIKsTf
         6SbFAHfOUu/u2/fvMTvAqRSNPpqi/EqT/i3u6zeL0Pi22GJ0RyJ5FhuHzlji8D7RWalL
         zuWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720091270; x=1720696070;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=82oBP2d+/aSKXRGso+ZtSJ9ezFiLBWwaaxqEWtXDidM=;
        b=kCV9pOXk3+zAwPDCYTU6Dast8P3LoOTFsc3YSQ9CuLZF1cl+1d4i48WMw0GH6wqObK
         yNYV2YWQOXTJ3G0PW2Sr1KgOihDDi2AF7ZXvG/Xq8TgV7KATht3uvwN8103yQjEliMKJ
         V9i5gWq8lMhWjf4FAoY/5C78Q5NnfvJXS+pPeZom+aHwYcXcMqFaCoiWJ6WdyTEyDMkc
         S6DFEOZukg51VswiH+tyKLm5iatsSqO4Y5vySBRhUoYVMl8nai8Mkbvc3jR8OZBINnru
         XtmS8HpwVsudLPJPoXDOMex0B+0t+PJAZ46jG6F5NEt/npCMgNOU/YbyPRnh00tAGmgu
         xNeQ==
X-Gm-Message-State: AOJu0Yz4qXPU6IL8elWbIYsOA7YyJOUAaR97DiGs763kHweje9tahInD
	raDt1RZsbACqEllKj1Rs65R5hpgUgqLZFO1sR0r0wE/+FSnREIcvZU5DZOG82e2WFzeVlYc0Uzs
	b0fA9hpJ9cuqUla4pRqv5KVyaW+4=
X-Google-Smtp-Source: AGHT+IH4U7l4BcDSz+LYV5rnnZ9CecnDMa8lmITma2TD8G6Sozq7HN3FRnjmVrX327Pdc70NMbP2vWZCyvPIofn/+QE=
X-Received: by 2002:a2e:911a:0:b0:2ee:8a6d:8683 with SMTP id
 38308e7fff4ca-2ee8ed9e05amr9032891fa.24.1720091269508; Thu, 04 Jul 2024
 04:07:49 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8MvP3C8++HT03wUgNA9vkDtjUMGRqjhPAiJ7EA4PtxOw@mail.gmail.com>
 <31491.1720090250598985190@lists.yoctoproject.org>
In-Reply-To: <31491.1720090250598985190@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 4 Jul 2024 13:07:36 +0200
Message-ID: <CANNYZj8uEmBCY+8eUnTGDYco7ph1HsMas9XpPq7OjokfQXvOyw@mail.gmail.com>
Subject: Re: [poky] execute pkg_postinst_ontarget when read-only-rootfs-delayed-postinsts
 is set for a read only rootfs
To: Tobias.Gassner.ext@karlstorz.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 04 Jul 2024 11:07:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13404

On Thu, 4 Jul 2024 at 12:50, Gassner, Tobias.ext via
lists.yoctoproject.org
<Tobias.Gassner.ext=karlstorz.com@lists.yoctoproject.org> wrote:
> +        for classes in ("package_rpm", "package_deb", "package_ipk"):

Do we need to try every package manager in a loop? I know other tests
do it, but if the issue being tested is read-only rootfs with
read-write /tmp, then maybe testing just once is enough?

> +            with self.subTest(package_class=classes):
> +                features = 'CORE_IMAGE_EXTRA_INSTALL = "postinst-tmp"\n'
> +                features += 'IMAGE_FEATURES += "package-management empty-root-password"\n'
> +                features += 'PACKAGE_CLASSES = "%s"\n' % classes
> +                features += 'INIT_MANAGER = "systemd"\n'

Why systemd? Is it needed for something? Note that any deviation from
default config risks adding full builds without sstate to the test,
preventing sstate reuse.

Alex

