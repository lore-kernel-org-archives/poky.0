Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 093D2CED27B
	for <webhook@archiver.kernel.org>; Tue, 18 Nov 2025 10:37:50 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.9420.1763462264523512437
 for <poky@lists.yoctoproject.org>;
 Tue, 18 Nov 2025 02:37:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=j6MACR88;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-88249766055so66894346d6.1
        for <poky@lists.yoctoproject.org>; Tue, 18 Nov 2025 02:37:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763462263; x=1764067063; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VAK4dA13f4QCNzZkmFp3XUrbSgmJwTl+iparr3ieseM=;
        b=j6MACR88BVxVixEJWEYuO9X0isFc/oNQ+krRW1PM2orO9xRqAXSvwyjiXCJqrV9wFf
         2LhSWA4O3ybFUchPxVdPmOGIG36jXP+SEKKiN2ekR/4KExNFDEufXDm/hh2KShvCRYd8
         FbVGM3dDpp0Epjfiro32g31qd/a78RYXDrWL9Lru24xKgv4s/Qstm/al/rVMygDGhV47
         ICB0EefUpGfk6ifYs+s+H8O7sQ/Q10H1+KZeRdK0nhOsOW+troJjtFk6vjudY/G5Ouj9
         SQe5zzedJpYYdivAFjwY6lVx/rSYKYgnA/GG8EbTXo7aRtlBz6BHLsF+YoRkAIyhKviQ
         C0WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763462263; x=1764067063;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VAK4dA13f4QCNzZkmFp3XUrbSgmJwTl+iparr3ieseM=;
        b=QgvkVNJA85V9q4rxJZQLILz6TdJrEfGCCDwpUppsyETtXLAVoey7iaZ+9OoxAMR6gR
         P8+PaZcsoOFfRUm3tldc1VFyBNFhR7I/MmJfvSXND0FEcMq4ISLgOuJSiKCjc9svKvI6
         jy8XJgKfB4FOHo/5tjgpt4CY0SROTWralMG0/tnPBzEQ07IBFpyB9dnXPZbsYC5HdadU
         AWvLPELOA0SrQE2TDlZqCFhUVjtkvxGt/b5U5u/P6YSrW2PR6I4eeW4MkepVLt4PWv8X
         faEA9IvuIRKDXTpnZcrw/jJtV3NYStioCvfNbx81NqFag0RKgBgaT7kqkPqHYiVBdQ49
         f7Zg==
X-Gm-Message-State: AOJu0YxR8dlL2V/Ka/mYXUsMxfN2kQF6QsLDULqOFHIXlOjjNVnpGSbt
	0KfcT9f2bVoJh8MsYFyTp7JGl+vMTJv9bobh7YWTlM8gtkMoMgtxvw/3w1jydxgz55/SKkKfCQd
	oWClKUvux03b6X1lMWU2QAz/nBes9Cug=
X-Gm-Gg: ASbGnctAd78j+lZmrD22xfeG4Z4HyX63trcxBd9uZhEsTIQZbPHDMM41tJEMGVfcuG1
	1w5UsIMqIlQkAz8TowVqvWCufyxqiVNkTTHR10VGP2PvbJguapeSG2qykRvHcd/P3OwBnLvWova
	iBz4fBKsaW+LabwGCZ+UKY2fBq2GYq0PNU+aDK8G0eql/Ggn1gR6g3xWdiHxQuxwkWklDLqo0MC
	gqreIMi//d4Rmur9Rn5ky4xqTVyGOaGHExrZS/HCsUaj76f3bYVXCIrg1DgJ35jta+VHmln2e1x
	Dq7tZJmVHRvURCGkzajVztGzHoZd6bzZrPKCdE4b
X-Google-Smtp-Source: AGHT+IGf9HPyYDSPwkjd27ao5wpkdxRgfvYadEdjLFdorpJrOZFafyntrUVJkPjVebDqwopXwneO8YPffvOBZZhVMY4=
X-Received: by 2002:a05:6214:cae:b0:791:34a5:8682 with SMTP id
 6a1803df08f44-8829269e362mr231928026d6.38.1763462263466; Tue, 18 Nov 2025
 02:37:43 -0800 (PST)
MIME-Version: 1.0
References: <20251028-update-bblayers-sample-v1-1-97ec54cda94e@bootlin.com>
In-Reply-To: <20251028-update-bblayers-sample-v1-1-97ec54cda94e@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 18 Nov 2025 11:37:31 +0100
X-Gm-Features: AWmQ_bmOhiuVMXxgFq8QMVWsq5P1CEiZe7vEqBik6BdIjuJmvRrGB5PnC4di650
Message-ID: <CANNYZj_2V2qu0BWBY_mCkZoC6+brOkfLu1FvYX=EOpbJk0sj_w@mail.gmail.com>
Subject: Re: [poky] [PATCH] meta-poky/conf: bblayers.conf.sample: move
 meta-yocto repos out of oe-core
To: antonin.godard@bootlin.com, 
	Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Cc: poky@lists.yoctoproject.org, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 18 Nov 2025 10:37:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13794

As all blockers for this patch have been resolved, and the docs have
been updated to assume dis-integrated repos:

https://git.yoctoproject.org/yocto-docs/commit/?id=0ddb5f4be84a97a66cc92c3c68c820af5223e108

this patch needs to be taken into testing and integrated into
meta-yocto, otherwise the docs are giving instructions that don't work
with current meta-yocto master.

Alex

On Tue, 28 Oct 2025 at 11:50, Antonin Godard via
lists.yoctoproject.org
<antonin.godard=bootlin.com@lists.yoctoproject.org> wrote:
>
> Since the Poky repository will stop being updated (in favor of
> bitbake-setup), the meta-poky and meta-yocto-bsp are no longer part
> of ##OEROOT## by default when cloning the OE-Core and meta-yocto
> repositories separately.
>
> As a consequence the current bblayers.conf.sample file will not work
> unless a user takes the extra steps of moving meta-poky and
> meta-yocto-bsp out of meta-yocto and move it in openembedded-core.
>
> Instead, make the assumption that meta-yocto has been cloned next to
> openembedded-core with its default name ("meta-yocto") and update the
> paths accordingly. This layout is the one provided by bitbake-setup.
>
> Signed-off-by: Antonin Godard <antonin.godard@bootlin.com>
> ---
> I'm also in the process of creating a document in yocto-docs that
> describes how to build the Poky reference distro without bitbake-setup,
> and that uses this file to setup layers. So this layout will also be
> reflected in the documentation.
> ---
>  meta-poky/conf/templates/default/bblayers.conf.sample | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta-poky/conf/templates/default/bblayers.conf.sample b/meta-poky/conf/templates/default/bblayers.conf.sample
> index 8b1cbdf..d34b552 100644
> --- a/meta-poky/conf/templates/default/bblayers.conf.sample
> +++ b/meta-poky/conf/templates/default/bblayers.conf.sample
> @@ -7,6 +7,6 @@ BBFILES ?= ""
>
>  BBLAYERS ?= " \
>    ##OEROOT##/meta \
> -  ##OEROOT##/meta-poky \
> -  ##OEROOT##/meta-yocto-bsp \
> +  ##OEROOT##/../meta-yocto/meta-poky \
> +  ##OEROOT##/../meta-yocto/meta-yocto-bsp \
>    "
>
> ---
> base-commit: fe65e142d0d9ba0e51ff9175ffa82e902f982a20
> change-id: 20251028-update-bblayers-sample-8b46ca3e8a55
>
> Best regards,
> --
> Antonin Godard <antonin.godard@bootlin.com>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13774): https://lists.yoctoproject.org/g/poky/message/13774
> Mute This Topic: https://lists.yoctoproject.org/mt/115991155/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

