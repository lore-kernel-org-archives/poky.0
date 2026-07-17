Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48977C44515
	for <webhook@archiver.kernel.org>; Fri, 17 Jul 2026 17:40:09 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.2074.1784310005497998405
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Jul 2026 10:40:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=fT9DH2ga;
 spf=pass (domain: smile.fr, ip: 209.85.128.51, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-493f45e20cdso47699755e9.2
        for <poky@lists.yoctoproject.org>; Fri, 17 Jul 2026 10:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1784310004; x=1784914804; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3+v5NwGGjEu10/3s3UEDBrpJhnzwkFde9uhSt4/4i9E=;
        b=fT9DH2gabmgWG8dDcvhrw9HHcKWMKIqNHuFWZ2vB6wytdlmcARdZFU+NV9LRa8eOG3
         lAEkJ3yWgNsHueFRup4Nq6PX7CB+/jpEafFNnD4ZXOGxYiScBvv/uiKFFHrq9c2KHN1d
         eee4TtEu/37sApKh9Kqbdl06YtRgtxOwt94eI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784310004; x=1784914804;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=3+v5NwGGjEu10/3s3UEDBrpJhnzwkFde9uhSt4/4i9E=;
        b=LmKPOTbKxxmMvuQsPz3RyNb093igll6J8eLJ/de43dqBi3FjngA1vKeVXPQ+tRtQeg
         LW60+v3YOusx7diLpeEMIa4v+3N02b3idYf/Ln9ZyIvUzfKGEOsZz3EAiy06JBK/SCSt
         hWt6z2ae1K0pBsurz5scQfhfw8jU0h2mgkBsqA7MlNFAGZLsJ2cfQ6OCv0RCnF+6csga
         l1K+7yIjWrZiWswGkhNv6w6wJq1j3sWP/qmHuezgllv7rV8g8TEhmhxSPw9adyEWtudM
         RsvixK2zr7Y1tD3qMXmPhdrPVonqGIa0jWsRLH0zckVXeziTpQAiSerJ/eyP36/FK/a8
         t5zQ==
X-Forwarded-Encrypted: i=1; AHgh+RqFvGUgvv08j0QjFKCxBNvbgXpJnlgCoj3gGf95uvE/OHikkp5mdWBO3IH5hQypuYoCusSW@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyzK9QbwDkWAlcEd6bz0cT12x55tvUNI8S7eEsHNXLtbcT3czUD
	F7o0ldhHEoS3s7UG+zIf40Hdm4kRiYJIufWPsvr3u9d0dSfb9EF+lGcL5HaRdh/M0PM=
X-Gm-Gg: AfdE7cmt8bPwlP3J9im1+Z53DAaaLZJ9lFSJ94PP5Q73jqQScdYubQMvzJb2fp+PM4K
	VNGpqtqGbzKkWNAiccB5e9vI0uptQSq2+Man3J5dy5Lg4Aru2mEzJo2IwvyOcug0SjiMAv/3hTK
	JD2XzN+aXKDcW7O1STAq5gHUgTY0oYn46PaZYJTxW/XJK3G67QSBUQhB9vlM6Vh2IRZ0DhrqCeG
	yh6L5MEbNeCoiGkPOA2P3tz7MaLDsgvXLzcXAbvBVJyFYSwYCQ45TVpU2aiFccbfZV939qwHEL6
	DY/gXKE2LQgwHAKDbSdxcuyBOGi5OAKN+1tsfhrM/W0EmRiLmnPzMv7c3/zV6w1PN7YjteTCq/r
	AUuTak/bjKx/80up6F6Cdn7XZnVYuw+hRxFyOwC4OWAgZZqf+18TdJvDrLcX91YUvzEY/WLqPAj
	tSrIUG2BzbAbByhCJ51GCQQm8tD9504nw5DCkgnwWmUeUURHerb3h0Iq4suKPu6LWHNmM=
X-Received: by 2002:a05:600c:4e86:b0:495:3b8a:5e17 with SMTP id 5b1f17b1804b1-4954a3e41d5mr43047765e9.16.1784310003659;
        Fri, 17 Jul 2026 10:40:03 -0700 (PDT)
Received: from localhost (2a01cb001331aa0093f4151e9fe9f4b8.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:93f4:151e:9fe9:f4b8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-495499f3f99sm61287905e9.0.2026.07.17.10.40.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2026 10:40:03 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 17 Jul 2026 19:40:03 +0200
Message-Id: <DK113VBWFGVS.1UXS61SIW8KMX@smile.fr>
Subject: Re: [PATCH][wrynose] poky.conf: Add newly sanity tested distros
From: "Yoann Congal" <yoann.congal@smile.fr>
To: "Yoann Congal" <yoann.congal@smile.fr>, "Trevor Woerner"
 <twoerner@gmail.com>, <poky@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <20260717155726.3527567-1-twoerner@gmail.com>
 <DK0ZEC5ELIWQ.1Q40KM5ICOKFO@smile.fr>
In-Reply-To: <DK0ZEC5ELIWQ.1Q40KM5ICOKFO@smile.fr>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 17 Jul 2026 17:40:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13944

On Fri Jul 17, 2026 at 6:19 PM CEST, Yoann Congal wrote:
> On Fri Jul 17, 2026 at 5:57 PM CEST, Trevor Woerner wrote:
>> Fedora 44 and Alma 10 workers were added to the autobuilder, and the
>> Alma 8 and 9 workers were updated. Add fedora-44, almalinux-8.10,
>> almalinux-9.8 and almalinux-10.2 to SANITY_TESTED_DISTROS.
>
> Hello,
>
> Well, I was not aware that this kind of commit[0], had the side-effect
> of changing the wrynose worker pool. My builds seem to have run on those
> new workers a little but I don't know if that's enough to qualify as
> sanity-tested.
>
> If nobody minds, hold this while:
> * I let my builds run on it more
> * I run some manual testing on those workers
>
> Thanks!

I've now sent [1] to limit workers to tested distros.

[1]: [yocto-autobuilder2][PATCH] config.py: add wrynose release to workers_=
prev_releases
     https://lists.yoctoproject.org/g/yocto-patches/message/4503

Regards,
>
> [0]: https://git.yoctoproject.org/yocto-autobuilder2/commit/?id=3Ded7548a=
fe0c29f959ef9c2e685bce6d600367299
>
>>
>> AI-Generated: codex/claude-opus 4.8 (xhigh)
>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>> ---
>>  meta-poky/conf/distro/poky.conf | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/pok=
y.conf
>> index 90f6e5f03ea7..8b2bc0fede45 100644
>> --- a/meta-poky/conf/distro/poky.conf
>> +++ b/meta-poky/conf/distro/poky.conf
>> @@ -39,6 +39,7 @@ SANITY_TESTED_DISTROS ?=3D " \
>>              ubuntu-26.04 \n \
>>              fedora-42 \n \
>>              fedora-43 \n \
>> +            fedora-44 \n \
>>              centos-9 \n \
>>              centos-10 \n \
>>              debian-11 \n \
>> @@ -48,6 +49,9 @@ SANITY_TESTED_DISTROS ?=3D " \
>>              opensuseleap-16.0 \n \
>>              almalinux-8.8 \n \
>>              almalinux-9.2 \n \
>> +            almalinux-8.10 \n \
>> +            almalinux-9.8 \n \
>> +            almalinux-10.2 \n \
>>              rocky-8 \n \
>>              rocky-9 \n \
>>              "


--=20
Yoann Congal
Smile ECS


