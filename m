Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F05C77B7F
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 13:42:49 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web10.8460.1750772559229912131
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 06:42:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kQjP4Qim;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6f0ad74483fso4315646d6.1
        for <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 06:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750772558; x=1751377358; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WQZzK4V5kxIfP+bUbdZJtzhXdLyE6oMajN08dXEj4U8=;
        b=kQjP4QimgjriqbFVB39LX365tfsQHCHX5aKKRi8FyLibHsS25eXCiUZ3xQI4d8I2jS
         qms43rW9S277oW6E60MECVaI7GsfsvLETO38d+kt+/koUxIeXyvEYjkr+33G+0GiHNbi
         L52zMw4dIXZyVWInotdhs73kq03Oehhvp741i0On69VsEvmNWh0oDe3/9kYtD+nZjEmA
         /FD8zVWIWKmQGMf8ocuKcMztfmy+7ZzEk0s3IIEGoLRQW/eSG3IW/NQcww8chw2UwGTh
         S9V03xtEoY5+XhkFCQi7QoJbMiIctuRLcaR3pYTkVow2v7Yx18Jms4a0ReFRqJGwp9jC
         OlTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750772558; x=1751377358;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WQZzK4V5kxIfP+bUbdZJtzhXdLyE6oMajN08dXEj4U8=;
        b=qNk//49z0XU66wv8E/Wj+1bhoSF5mXI9tkNh8ibPIXTOkp/Xkl9DNwbyAA9qGRGmms
         sOXVfrDrnIesGx8n9KzW6ja/tC7WMkoj5PQvo8+Uv5g7aKNcEK8EsNto0mMtw0NYn+CQ
         MPvRVpEKy2+L1K5a1HeG39VksTH7U+3HCpJjW0qUjzse5a0v1MpUWqdBu/lrWaXCjYb+
         f4yiMUY3kZQAn8Es7CO41boO5k0NvpJNHcjGjlpOdsrbYdGp4COIpIVn6JIg9J6nYTs2
         BEcSP+Ja/kRYHVOSBBHHINHTvWDYeEhLO1FrynA69ZUTeK3zPdkYD2AWAgGwyKGAI+iq
         dBOw==
X-Gm-Message-State: AOJu0YwD4LMJubY/SgwbvKUYStRRORiT6sbrNpia/C0jgZZzP7JtmXsI
	YzbIX8kIwkRdgzeeo4n85biS67u53MOCd1sCtzVZ08Wi367KXUJkW9jEgN8Th8Yftz7KX2a0nmL
	NQszHi0K/2hNpWY/I77+6YcNqbGUcIyI=
X-Gm-Gg: ASbGncs0je2ngNvu4ksEKSsqQwFgb66tvLlHJouLc5iD8BjxhMXNR2YsbcYFL8jahLY
	T56IpkrEZjM5Q8sgn/E8DbRJ7CAl5DPt2b2P48DXtovqf2qHQeLHUaPgXSImX5Z5NYtny2y69DD
	04cU/8wrmskqF3TxVWyEt4Wj0VRavmufrI1JMxj2sMrho/sO98JWpFvLypsTRzcjuzryleGAGff
	2AtPQ==
X-Google-Smtp-Source: AGHT+IF04HvI47CsFcx7mKe80EqEXRv46JlqM7Qzah5Nj00iOp25OaoGIs+JfbCNU/4/oC715s0XSy4/be7O9AYxKmQ=
X-Received: by 2002:a05:6214:2e89:b0:6fd:cfe:ebab with SMTP id
 6a1803df08f44-6fd0cfef044mr195016906d6.7.1750772558107; Tue, 24 Jun 2025
 06:42:38 -0700 (PDT)
MIME-Version: 1.0
References: <20250623165507.1633860-1-alex.kanavin@gmail.com> <6fb30604dfb196088f07c6b59f437eeb0f1df788.camel@linuxfoundation.org>
In-Reply-To: <6fb30604dfb196088f07c6b59f437eeb0f1df788.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 24 Jun 2025 15:42:27 +0200
X-Gm-Features: Ac12FXzoDaJttfkLoRr9Cy0ELEYJhI2rpbGb2YA2r7z1ytQT4l-DlPtXTtmV6uQ
Message-ID: <CANNYZj8bcMto=-OHPNEZs_aEM4vr9K1ujVOZ77EDBT-9xC5sRw@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/2] meta-poky/conf/templates/default/bblayers.conf.sample:
 do not assume integrated poky repo
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, Alexander Kanavin <alex@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 24 Jun 2025 13:42:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13667

On Tue, 24 Jun 2025 at 15:11, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> > This requires a custom tweak to bblayers.conf when it makes its way
> > from meta-yocto into poky that would strip the ../meta-yocto/ part in
> > BBLAYERS. As there are already numerous other tweaks of similar
> > nature, I think this is feasible.
>
> Which other tweaks of a similar nature are made? I'm not aware of any
> file contents changing between repos...

Right, this refers to the poky integration process that cherry-picks
files and directories from original repos, e.g. the default template
from oe-core (meta/conf/templates/default) does not make it into poky
at all.

The patch follows the suggestion that such a tweak is possible:
https://lists.openembedded.org/g/openembedded-architecture/message/2129

Alex

