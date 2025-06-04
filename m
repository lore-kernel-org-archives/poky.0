Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4073CC5B552
	for <webhook@archiver.kernel.org>; Wed,  4 Jun 2025 07:41:18 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web11.10746.1749022869029953087
 for <poky@lists.yoctoproject.org>;
 Wed, 04 Jun 2025 00:41:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AsMZLGCG;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6f0ad74483fso62412156d6.1
        for <poky@lists.yoctoproject.org>; Wed, 04 Jun 2025 00:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749022868; x=1749627668; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zwooj1cpfOzuXZcQgrvsKnY3pBbIc1aOtSLjEwvKp0E=;
        b=AsMZLGCGuiajLaokyxjW56CNVJhxTEqcComxuhZw03lJx5Vo5QcCu5DrXQLPjoZzDh
         vOAA3wTxtHD8LKBlJNnSHY3LoPZTF2SdLDhSZ+u+Erjm3a4q+Jsg0mr473zRBbh+zBaU
         VDdgaU/t7rD+IBRLfWH9MzRkmtLL5sNE/ytTpp9o9xMtJhgYA1h949q1vNH/t3sYAi1T
         pqIycGskXq0zhkyoashXMHfM4dW6Kqo6xuRhOoGG82N5WPO79deb16j8S07+vqMq5OYI
         ep8jZPO/X2ztmboqjv4UyYWhp74z9iTcGWEHAuUbG0dLCg1Mkenkk6IrZN5Z+x6bKOjO
         qDtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749022868; x=1749627668;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zwooj1cpfOzuXZcQgrvsKnY3pBbIc1aOtSLjEwvKp0E=;
        b=c+WJpywUnU9WGXrUa92y3Hr8g9K1PwY+BoXBhcKpsmBJDoinHEUHTHQFw9yfGu1sHL
         hsf/J3jvLIaEmvr3hp25UNDr4Fpm/S/DHp1o6hlFeHKzpDCoV3L3Oz+itNwXsgdxPoNq
         fMpYvppm56N/S9wwLovpXAtKCYVV2EwvWKxwLJyEpjI+1eu69j8hHpH6UVgZ9B6xpuPT
         iffj6QZzF8f9ovwQLDorctrpd4VoJmTzi8cwktK0N0E94NKkFHKcs2wJc7vYV0dmaAd7
         zQhdUNkYOqwTBVQY4a6WfMdavecZFbJrEK1/r1rXhY8OYvWLVyXBDcsiNwqkDbgdC/0P
         jbwQ==
X-Gm-Message-State: AOJu0YwBN2DONuB2IuEAQ4PqD+Keh3ShXXU1vFBUZO9d5c3mSnU0m+gL
	VKgxcJiTISC02QRYmqMHBcJGkq3jF7sZqc+pMgT0JOeP6FF3CJDsEzpWbu05v757q+oiOSGgN/z
	saNA4lsqwn0L80LR+AdYIraS1iTKE5e8=
X-Gm-Gg: ASbGncsnf6OaLcAlLAoi53kPzqWgvsl7v9RmToqazPYt+VyfflN/jGggpXMFJFVxOw9
	gM22xhWRaDtGgR2QjAcbvDiO/C7f4vlgDXU0K8mdEQLAEiYelXWZpcTW5MiIhQhZVwMviEimpzi
	5VvgkSYmu5oRIW4BuUMxQs81WGTUzfd+dly7RU4q/u1Q==
X-Google-Smtp-Source: AGHT+IEFmydSFN1RaQId9DiIO47/rx3OfAvb9uf/3Qr4ksqU4TZvuvp2FP16+vJpmoO2rXjXmo7xo1cfDBHM9xeaXJk=
X-Received: by 2002:a05:6214:2467:b0:6e4:4331:aae0 with SMTP id
 6a1803df08f44-6faf6e78956mr23025066d6.1.1749022868077; Wed, 04 Jun 2025
 00:41:08 -0700 (PDT)
MIME-Version: 1.0
References: <20250603113558.3104618-1-alex.kanavin@gmail.com>
 <20250603113558.3104618-4-alex.kanavin@gmail.com> <1f7282940782670021af9610eeac664737b07f14.camel@linuxfoundation.org>
In-Reply-To: <1f7282940782670021af9610eeac664737b07f14.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 4 Jun 2025 09:40:58 +0200
X-Gm-Features: AX0GCFuQxK8dQPcVaYgiD2AJh0hBG41U_NkImGHecdDKwfcb28P75FdMbE3gJIM
Message-ID: <CANNYZj_mirwAyyB__KM5yZLa+w78zuZD2KNgx96f=JzNYEca6Q@mail.gmail.com>
Subject: Re: [poky] [PATCH 4/4] fragments/qemu: add support for enabling sdl
 in qemu
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 04 Jun 2025 07:41:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13641

On Tue, 3 Jun 2025 at 21:44, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> > This has been the default in poky's local.conf template for
> > a long time, but it's not enabled directly in poky distro.
> > To allow better sstate reuse and a better user experience
> > on a typical laptop (qemu will pop up a graphical window directly),
> > let's add this fragment and enable it in official bitbake-setup
> > configurations.

> I have to wonder whether rather than making this a fragment, we should just change the default...

Yes. I am somewhat unsure where to set it: in the recipe, or in poky
distro? I'm leaning towards the former, as both oe-core and poky
default local.conf templates add the setting.

Alex

