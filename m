Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89CC3C001DF
	for <webhook@archiver.kernel.org>; Fri,  4 Aug 2023 15:50:27 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web10.775.1691164225693801073
 for <poky@lists.yoctoproject.org>;
 Fri, 04 Aug 2023 08:50:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=qImixJXy;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-4fe3b86cec1so3814243e87.2
        for <poky@lists.yoctoproject.org>; Fri, 04 Aug 2023 08:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691164224; x=1691769024;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+PFHII0Li3C3WgSgty9m8QyBSjjV1Lj7phxfFK9eGfI=;
        b=qImixJXylT0pS6MMoWR5ZINZerT10VurJcKBzVdqRklVEn6wn+lrNsktPBtddBUgrh
         /QPP9TPfZHidiY2So5EGASvmhBVdbtemBL+GKecQ8Y/MONpnEUR+MeH7iB267Ec10hBZ
         4GbyH1VxcR36ecC30jfar8aHQ/zSWHnX6qI9W6rZTluYVB2OqlBUeAd/T5BrDSAWPZt+
         NKdiSbS/dfNVihfLq5LK2LalezXTsDQalbi7ZqFsM5kIW7sR0fv7q0FS1jau1GKwzjPT
         M8mxAdAFXKk/afGqn06BnPT66+IWQjs9fB1F8WM7kmz6+laB3V8UrbxKqTUMhD28VzZV
         aBbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691164224; x=1691769024;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+PFHII0Li3C3WgSgty9m8QyBSjjV1Lj7phxfFK9eGfI=;
        b=PzOMKs+IlsyTU+wkV6kedymDBpHPHG1ssL51Pvt8/a58r+S6mnwprb6akpLn7/0vje
         5VDmRc/IetiNNFVWUVVyBLvIuVl78ZLw+COBOn0+COLSb74kK5f34r7+fQ8nrZVLu4ry
         +3zWdw2bIbtdim0EUovvUwPAFKK9ZbO1FrFcJTeYzNZN4WxRnN0c83AemWpOUhjWaazd
         ZymEV4kWC43fZRsWEEYD80VfpCT7I+rxJ7GWogPibpFcqtCCUs3fMONQiKu6oTWohixl
         hRmfZinaRQcM7E6cs5Nh5HUeM6r/LyTNueL5D6y38RNEoWbrIMQ+LgCG+SbHGPng2kXs
         WXhg==
X-Gm-Message-State: AOJu0YzweGktbJhAlAUKB/b4ZhU0I6lU7mBPQ/bzWNRiaPuaoE+yEQML
	RxJQNFglI3e+hwUkQ9J9xoI0jAMtdAALMcDbN88=
X-Google-Smtp-Source: AGHT+IEsJu+wE+lmoGVgskH4HzdlYEnVUupz6sbmpJXxvHD6+eYkZCV/rpxDsmKpf8S345M3Cw8+UvUv6EY3coDvfpA=
X-Received: by 2002:ac2:57cb:0:b0:4f8:6c1f:b1ab with SMTP id
 k11-20020ac257cb000000b004f86c1fb1abmr1586744lfo.27.1691164223635; Fri, 04
 Aug 2023 08:50:23 -0700 (PDT)
MIME-Version: 1.0
References: <CA+chaQdz5BXB4OUXZYNT06MVN3K+43URB1jVA=DCodP0Ev7u9A@mail.gmail.com>
 <18445.1691163577621123503@lists.yoctoproject.org>
In-Reply-To: <18445.1691163577621123503@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 4 Aug 2023 17:50:12 +0200
Message-ID: <CANNYZj9gxHUE4jxgDXpJC7XNH8oQYO+bB8fX0KQF+6WabgBaqQ@mail.gmail.com>
Subject: Re: [poky] [LINUX-FIRMWARE] all pacakges in image
To: f.louveau@lacroix.group
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 04 Aug 2023 15:50:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13113

Yes you can and it would be appreciated. The correct mailing list is
openembedded-core@lists.openembedded.org.

Alex

On Fri, 4 Aug 2023 at 17:39, <f.louveau@lacroix.group> wrote:
>
> Many thanks,
>
> I didn't find in the correct mailing list :)
>
> Explanation: binaries for mediatek are moved inside a dedicated folder and symlinks are created to keep compatibility during transition.
> This symlink causes the problem.
>
> https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/commit/?h=20230515&id=8451c2b1d529dc1a49328ac9235d3cf5bb8a8fcb
>
> So how to fix this in this poky. Can I propose a patch ?
> As you can imagine, I'm new to this
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13112): https://lists.yoctoproject.org/g/poky/message/13112
> Mute This Topic: https://lists.yoctoproject.org/mt/100545329/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

