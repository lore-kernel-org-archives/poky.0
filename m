Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7594CC54798
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 11:28:46 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.8558.1708687721330263307
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 03:28:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=E7JwFBpG;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d244b28b95so2967681fa.0;
        Fri, 23 Feb 2024 03:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708687719; x=1709292519; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=f6ZK5FsXiB4DqdcKF/mIUj5r3HqsPZ0K0fOEnt7DQmw=;
        b=E7JwFBpGFjgG3QX+xJtEo2oYtjYbUKOLLksC3OPSw3Mk0HbKLXITCp87AlN9bKY0m3
         67nDmGPvr+68YyyBQjsASkePw2Pp4cjYICG5YiSXGKQ9NZZRhQ5CptsiWHHpP5WoxVhq
         hc8a713eaxDtJnCSbIpf0eNsgZ5i9aixUCHEZsnOOUBtvdnEZ0QQ1dU8cv+ZfqYZ4/yb
         Tb1hoRAQaBxWH0i2BjZ2GUeB8AQ4yV11Fh48hzkncVDDfTEXqigjbcCrWN4bWHwEOO9D
         R1W994bDi6QGUGU3Bj9LYp9Ri/HgQJqHrKbHyVyCC3QRxKBpGR+acsss81Mf7Z+GnPec
         dWcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708687719; x=1709292519;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f6ZK5FsXiB4DqdcKF/mIUj5r3HqsPZ0K0fOEnt7DQmw=;
        b=IVBCTlO9sJD9bDdz2GmAqhNFWDOcsUlcPTWeBXK8WcBdzVtxWR1nAd9Lj3tOt/HTeO
         kkDZdJbgk1WZr+BUj3LISygDq21n8mr0iroh0yLXKUyxJnuNkFLMX7wA8H1/65mP2UrX
         fh0GnWrx5saFB0GVyrT6Bo6Y47+dZ/x9spsS0IMz0QxWqUxQBhC3a9tMb0eNZEjwyst0
         MLc+2m0d21rq8/9lKCANT6LV0BMX473U3i2N4hdWcoSq57E1b6npqIM0tQ8mtwBL9u3M
         B3Z4/du6Zna0j4Wk6yeRjgwoKYDN4RwjN4FFbTiG2fbBoSmV9JzccUnndKKrutkG8dEv
         s4VA==
X-Gm-Message-State: AOJu0YxQnwOpuiKfY69oxjz11JflH3+ERvMq+3KHlGimTzaWDlprKJ2y
	KmoTeoOfJxVYbkmfiPZL6iasaL/GKbvV9Xl4xEC22oGNwrvKVW6rwYjsV0enhSe40d/Y+t+9HqO
	FvXQDvrVjrusogd/MSEHHI3LuNSKvTWU2
X-Google-Smtp-Source: AGHT+IGYUmuRWWipy5VfWAYQ6oKaSpEXBRtrDe/dEQxFoNqc6f5CEUG9qqGHTWVdqDb967GxMArMrPEDVBl3vdRl4aY=
X-Received: by 2002:a2e:9e85:0:b0:2d2:4703:1ac2 with SMTP id
 f5-20020a2e9e85000000b002d247031ac2mr1231897ljk.32.1708687719281; Fri, 23 Feb
 2024 03:28:39 -0800 (PST)
MIME-Version: 1.0
References: <CACSj6VXiG4NdETnnWcppCAxTym+kx7c3WKpj0LFGkoPKOA+Dyw@mail.gmail.com>
In-Reply-To: <CACSj6VXiG4NdETnnWcppCAxTym+kx7c3WKpj0LFGkoPKOA+Dyw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 23 Feb 2024 12:28:28 +0100
Message-ID: <CANNYZj8PNVCuDPGC8ZhhunY9berfSsejcj9mv0=dECOeYx4LFA@mail.gmail.com>
Subject: Re: [yocto] 'kgit-s2q' doesn't remove 'rebase-apply' directory
To: yocto@lists.yoctoproject.org, aladyshev22@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 23 Feb 2024 11:28:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13270

If you want help or fixes, you need to show how to reproduce the issue
with plain poky master via specific steps, and not just discuss
problems in your local setup.

Alex

On Fri, 23 Feb 2024 at 11:35, Konstantin Aladyshev
<aladyshev22@gmail.com> wrote:
>
> Hello!
>
> 'kgit-s2q' in the linux recipe tries to use 'git apply' if 'git am' fails.
> In this case 'kgit-s2q' manually creates a ".git/rebase-apply"
> directory (https://git.yoctoproject.org/yocto-kernel-tools/tree/tools/kgit-s2q#n622)
> But it looks like this directory is not removed after the patches are
> applied. This creates a problem, since with this directory present git
> thinks that rebase operation is still in progress.
> Because of this bug 'devtool modify linux' can't perform its own
> rebase operations in the "devtool_post_patch" tasks
> https://git.yoctoproject.org/poky/tree/meta/classes/devtool-source.bbclass#n214
> In the end this creates a situation when the local patches are not applied.
>
> Best regards,
> Konstantin Aladyshev
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62574): https://lists.yoctoproject.org/g/yocto/message/62574
> Mute This Topic: https://lists.yoctoproject.org/mt/104525948/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

