Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27C5ACCD1BF
	for <webhook@archiver.kernel.org>; Tue, 28 Oct 2025 11:49:28 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web11.6443.1761652165486415885
 for <poky@lists.yoctoproject.org>;
 Tue, 28 Oct 2025 04:49:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GwJ7opnJ;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4ecef02647eso22565361cf.1
        for <poky@lists.yoctoproject.org>; Tue, 28 Oct 2025 04:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761652164; x=1762256964; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/tyl9vMK0tV5HCsuAVsWKdKqbTs5w5IfUXkaBGqFQk8=;
        b=GwJ7opnJJIi5Dsa9Kxic0JM7shBPKqf0hsgA3Pgt5MtIFvQThc7AL4IcZDzcEqMCTQ
         QDHv1NSiBQVMpXKR7PCYGH16PeHSosyhA5BgHPrK8zFz6buIP5KDW6fhigrJVR3oxC0r
         aB33NAQ2JmbgEzF8UiefA7x7lQYalF8fmYJl5vwB/EI88h/cYUA9jt0chBD6vplFthle
         CLTeZ1U1WXH7UIDv5wCRWg5sIln6oz5HOyVNyD5Dw0PDAvfTsN5JT8gNHitSzTEGjU/G
         Kz8co8uN99j0iCL/HO67iTPRureqBX4xSWRjANqybHuyKFyLVeLe9a1zUo2A2BaHOQoq
         CEyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761652164; x=1762256964;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/tyl9vMK0tV5HCsuAVsWKdKqbTs5w5IfUXkaBGqFQk8=;
        b=UMD7LEYO1xQ5SxQD6Ragu8r2IeKwpPwxqii9d7esB48+TXr/6PUwcWFJQo7GKSbrms
         9QFejJiqFxAYYZVspefNibvrr2m3r3r+tw+CjqEQsm1MereM/v6GuAPoo7J5wTmrDB1q
         ntnNNUsxEfJdJQU358Y2QBJYGx9awAxG4a4K444GUh22e7IVNuB5NkD2+KiHwwYdL+9t
         0sRuW1NcDCVOOjXVjI5agV1J46AMOt4A3EG1t2SzIsOf6kFjqbqYAqZmX0FxtgxksemD
         bkfifPfcQu9Nf+F7JMRTnxZVlJUHTgfYW0f0yqYXr2uz9qNNg0x3nk7xRdWw7v9v5g6u
         L5Ig==
X-Gm-Message-State: AOJu0Ywi6Rfglx0F3guWR54Fucmm/JjPC2IfagPel3K3tPNk4TfzseBt
	E2zlnK3O8K9COa4PUF8USRhNTS+vBaSdie22a+ISiVn54XPzibPvRVUUP+rtN8yWZtls3Per44H
	W8K/O181Qr11D2QeLTWyZYWrv8ry2iok=
X-Gm-Gg: ASbGnct2nHFfDFcA4K5tKfKEU8524Jvch+68RmAqWGqXmyuVDQzyT/5kt4Zo9cq5GQ6
	Uo9tRIvUOZfZ2u8wiVcrlp8hbIcUAFl4bjMjTeRRTkGKoObHQBaxhqZWSELlWRwQV4AuJpkhiLz
	E/o7U1TsCZpJvkC88g+/2Qmn1v1JkUK2oFB9H3cijhgQRGjNDbdHMGGrDtxCqWfCg3zr48Vqvo0
	L30ONEIxeeHMlFQKx7fbRIaVP1+7ftwZswhvXDKOkEgAUWNxF8iFztbxxTLmbRZZoO61OPHtaMi
	aGhFDaZYsdSi7qf7FN9Xxswj/CHosuOVd1CGwvOL+vxPDDMgUgKv0BKtpEs5jMMvi/SrOH5ChpV
	65/+3MhFeFEU8lwJSvg==
X-Google-Smtp-Source: AGHT+IE85y+iEi1i7rRKKVdKEZaptmSxmYSPH3FLLRLE1nGrFYC0hIovgHk5QUws9/4XTj8vAhG+zWvBSTMWHizSIcE=
X-Received: by 2002:a05:622a:4089:b0:4e8:a442:d6b3 with SMTP id
 d75a77b69052e-4ed07510d79mr45585861cf.37.1761652164433; Tue, 28 Oct 2025
 04:49:24 -0700 (PDT)
MIME-Version: 1.0
References: <20251028-update-bblayers-sample-v1-1-97ec54cda94e@bootlin.com>
In-Reply-To: <20251028-update-bblayers-sample-v1-1-97ec54cda94e@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 28 Oct 2025 12:49:13 +0100
X-Gm-Features: AWmQ_bkvTIVG2gsJ0VbI9hDSeDlgPAKFADAlgSzQUF20w-aMoi6aRvZHmyRI2pU
Message-ID: <CANNYZj-oJqZm5AE+DCAw7Am462LPhn3y7iJFgEpXK=HuZre8GA@mail.gmail.com>
Subject: Re: [poky] [PATCH] meta-poky/conf: bblayers.conf.sample: move
 meta-yocto repos out of oe-core
To: antonin.godard@bootlin.com
Cc: poky@lists.yoctoproject.org, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 28 Oct 2025 11:49:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13775

On Tue, 28 Oct 2025 at 11:50, Antonin Godard via
lists.yoctoproject.org
<antonin.godard=bootlin.com@lists.yoctoproject.org> wrote:
> I'm also in the process of creating a document in yocto-docs that
> describes how to build the Poky reference distro without bitbake-setup,
> and that uses this file to setup layers. So this layout will also be
> reflected in the documentation.

I assume this will be presented as the 'backup/historical option',
after the bitbake-setup flow, which will be the primary choice?

>  BBLAYERS ?= " \
>    ##OEROOT##/meta \
> -  ##OEROOT##/meta-poky \
> -  ##OEROOT##/meta-yocto-bsp \
> +  ##OEROOT##/../meta-yocto/meta-poky \
> +  ##OEROOT##/../meta-yocto/meta-yocto-bsp \

There is a complication here. Integrated poky repository is not
deprecated (yet), a lot of people are using it (still), and when it's
assembled with combo-layer, then this file needs to be reverted to how
it was. I'm not sure if this is easily doable, but without that tweak,
this patch cannot go in, until integrated poky repo is truly obsoleted
and is no longer receiving new commits.

I suspect everything would have to be done in lockstep, and at the same time:
- obsolete poky repo
- merge this tweak
- merge documentation changes that explain how to assemble poky
without cloning the poky repo.

Alex

