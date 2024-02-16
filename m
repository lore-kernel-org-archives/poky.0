Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1EDE2C48260
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 15:49:10 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.68.1708098545711605323
 for <poky@lists.yoctoproject.org>;
 Fri, 16 Feb 2024 07:49:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lHaOmUxh;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-51296ca7f78so880112e87.0
        for <poky@lists.yoctoproject.org>; Fri, 16 Feb 2024 07:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708098544; x=1708703344; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Pg73DOqnTjDWOQu9zv9048F8I6VLgUXFdEcdDfwRik0=;
        b=lHaOmUxhGijaps9c+UFLf4uMyqlAzeoQnXvUTiyUZTPQ/ZKVBPOg8AiHl2g8ShGVfE
         Av/2WIsYtQz3cvvKwLyIBxN87ESaQYu5WZAyBCFOvv1vT7dr06CfVk/lExcfngfBu5Cg
         y57oqx/QzRm/B7Mjlapf9gcDhgZgK6Wyz6K1nq5so16cGWsphz2c0f+3TbEdgLyORX8Y
         kgEwIDV80hAdixtUlc4TW8vg1R2kpgP5Rl6Wgm2C9uANunpEf7OXz1S7v2bko49RGV5q
         zCenKXti2eKAiPNLP1+a40JjG0SMAAtQfCGs1wdEAqf0uoHTaWsSur6GVia+K+aq7s35
         +DIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708098544; x=1708703344;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pg73DOqnTjDWOQu9zv9048F8I6VLgUXFdEcdDfwRik0=;
        b=uGe48TlurY+FfGAw9JYyyP76Pf6MvpnSamMdwgg/qSX1yNeQNcLc+0no+krgGPQi/N
         oI3Hy7ye/G1xGDuzDcP7Io53sqLTDziWxA48XLakaDe0hXLLdI4TC2zTCZF3qisEBHJQ
         JkfIhOeQJS7O/DLCMmPE71PzhS6XVYXBLxUJFZl6uK89W6l+UHva5Ia4XgKJnkvasdNc
         45cCD+hQdCUrz0nye82gHaZ8gjfuJ5BMkUj4KnGkxYWH8Ej715C1XcQxjkCBdL4Zc6hn
         kNLJmXQPgusMk1KHOpj9XxkYuwoYZZArYPf1QgdWA3N+xCF9Dte2emmHQUiEOTmYfBJb
         nTsA==
X-Gm-Message-State: AOJu0YzxJdKR2g7AVKSKRy8aG6piDlgW2DB71Djhz26lxJSJpDHqrM0o
	9GoI07bd544XU1JjR8B0uKO9hGBNR/k3aIZqKAnQiG6j7yTMZTlaLT0+aRtPRArauLu2PlsRMea
	DXq66bMoh0kKHmAsN73FkLZD0OLw=
X-Google-Smtp-Source: AGHT+IEyL2D4pRC1fdAn+HQTixhp2kZrh9Y5u9xw6bytPifTudIz5z+7yxEKW40sdBTQ4aSenaIGSCYqQn0FbduiZKc=
X-Received: by 2002:ac2:41c4:0:b0:512:9af6:58c8 with SMTP id
 d4-20020ac241c4000000b005129af658c8mr478426lfi.11.1708098543653; Fri, 16 Feb
 2024 07:49:03 -0800 (PST)
MIME-Version: 1.0
References: <20240216115153.3342614-1-alex@linutronix.de> <13a1457d530fd7e936f79c751cab0c14e3081940.camel@linuxfoundation.org>
In-Reply-To: <13a1457d530fd7e936f79c751cab0c14e3081940.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 16 Feb 2024 16:48:52 +0100
Message-ID: <CANNYZj9dnLJtQToZdVeUkSy__rxWCCyBDW=nDnv5p_S-cvAX=w@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/2] meta/conf/templates/default/conf-notes.txt: remove
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 16 Feb 2024 15:49:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13258

On Fri, 16 Feb 2024 at 16:33, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:

> The config is here:
>
> https://git.yoctoproject.org/poky-config/tree/combo-layer.conf
>
> specifically:
>
> file_exclude = meta/conf/bblayers.conf.sample meta/conf/local.conf.sample meta/conf/local.conf.sample.extended meta/conf/site.conf.sample
>
> but you will notice the exclusion lists are very small...

I still don't quite understand what is happening when poky is formed.
The above list refers to files in meta/conf/ that no longer even exist
(they've been moved to meta/conf/templates/default/), yet oe-core and
poky do have differences in the latter:

https://git.openembedded.org/openembedded-core/tree/meta/conf/templates/default
https://git.yoctoproject.org/poky/tree/meta/conf/templates/default

Is there's some other hidden config which lists the correct locations?

Alex

