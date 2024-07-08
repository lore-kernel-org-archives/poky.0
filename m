Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C6E8C3271E
	for <webhook@archiver.kernel.org>; Mon,  8 Jul 2024 13:09:18 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web11.79238.1720444156607303098
 for <poky@lists.yoctoproject.org>;
 Mon, 08 Jul 2024 06:09:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Tq8SLwIT;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52eafec1e84so202064e87.0
        for <poky@lists.yoctoproject.org>; Mon, 08 Jul 2024 06:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720444155; x=1721048955; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lXmAbv6vzNtr6U2YA6kyygAuLi1pHpf1oFliKajH9Z4=;
        b=Tq8SLwITjkll1W+vgDkzZCzVcrebkwt4QAIW27Um3bhMcMQ9k3kOeltxofkejtQvF4
         dUgmHRBD/ovA1u/abrfaKC8qNbr0lwKx2FHZ0SXnVzaz7vp3ELU8iCiO/kXfcazDZX0+
         MKR14+zHmY91f6lszwRPL3Hg8BeoSZK4twMBW5ZZrELHCpiUQ6EC1uLQoUSJcfs/lC87
         HjJ7XHtJviiIaxteR1HweRsLCaC5xGeitaMG+WCF16/CYaM3+4Ivqb6vKcopNmiOiT6p
         iWOUIXuqtV9VdBU4CO48LwCNG67Pp2UB4EOtAZ/EEjIAv9MybPVWcYMyM3TmIvZuMDxo
         wIdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720444155; x=1721048955;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lXmAbv6vzNtr6U2YA6kyygAuLi1pHpf1oFliKajH9Z4=;
        b=oXAJb5Scy2eUUaq10JYcJG7SyCf/DFQvKbdhOEP8azMD6NU6kHu4QedVoPqPwZqCcF
         BhZusnMvBW6/iM+7d0PeQKplXkOoF92YE1dWjRwUMRVx3i3+o3VUZQXX0omN8OBvc2yw
         +YPvgE5uey9/jrwSNQAM5COjTCofoK+y51Tslk7WJGp/Z8i4hDV3dPGBbK9sGNSbmaJA
         0m3is484IPLDqaIme04aqv3dfVe0QAKdyEYDWqczkg8NG2WQ7RobWOfJYO4iJcLIAKVq
         aZSy5+p7jwE+5V3aEW78Gh4SoSHW+aB9OkdndZHgFn0QhRpQWlXwfucRSmOYg31opxfV
         KwHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPruDNcGmqFsHqHyarw6NDM8oKR0EdTzmhzK1ucjNbE+5ckMaz3qy+x9PMHgY0T7OWdD4ZiyFBbUPh71OHm3Oq6W9wat2cyjerv3k=
X-Gm-Message-State: AOJu0YzHMobwdMLXAjvmHRzfJxaoF2HaeX9SE3ocu/LNfb+x89pfqmrA
	QdBg4flxOoU/E/MSDWsTMIkx5zWcu444v14jRn8oWqPaYnpwRTagNZSZp4YXP7yiRI2OjMjYXRE
	/YDeqXRaMT3jt5Bk0WHzUtLKOZVg=
X-Google-Smtp-Source: AGHT+IF9cBO1z0HhUn98utO4C4w0pesJo+PkA11wyH46EJKX7py6Zhn63sNqua/0yZ9B5liqSMxQNaPqyeZERckvhj4=
X-Received: by 2002:ac2:4a6f:0:b0:52c:9824:2780 with SMTP id
 2adb3069b0e04-52ea06d7a32mr7086266e87.64.1720444154506; Mon, 08 Jul 2024
 06:09:14 -0700 (PDT)
MIME-Version: 1.0
References: <nauN.1720433331746704508.jsS2@lists.yoctoproject.org>
 <fc84d485caf7ebcc549256d3916a2164c968916a.camel@linuxfoundation.org> <e6aec5b3a55a4b01831923133e2d5287@certhon.com>
In-Reply-To: <e6aec5b3a55a4b01831923133e2d5287@certhon.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 8 Jul 2024 15:09:03 +0200
Message-ID: <CANNYZj8hA4Wwpm8HiZ7FD1KWndAmzKLz1+dpTV=buP78Np4mag@mail.gmail.com>
Subject: Re: [poky] Licence error in openssh
To: chris.vd.kruit@certhon.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 08 Jul 2024 13:09:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13415

On Mon, 8 Jul 2024 at 13:11, Chris van der Kruit via
lists.yoctoproject.org
<chris.vd.kruit=certhon.com@lists.yoctoproject.org> wrote:
> I just typed in devtool upgrade open-ssh and then build the image, I'm on the Kirkstone branch.
> But I was a bit early with my email because it doesn't work, I got the following error: /usr/libexec/sshd-session does not exist or is not executable.
> Can you tell me what I should have done instead, I'm new to yocto.

Using 'devtool upgrade' is correct. It doesn't always work perfectly,
so if the license checksum isn't correctly updated (it should be
though), or if you get other errors, resolving them should be done
manually by editing the updated recipe.

Alex

