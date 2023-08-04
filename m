Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3563C00528
	for <webhook@archiver.kernel.org>; Fri,  4 Aug 2023 13:08:18 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.10570.1691154491328583997
 for <poky@lists.yoctoproject.org>;
 Fri, 04 Aug 2023 06:08:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=ldlxxZ9C;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-4fe44955decso2597833e87.1
        for <poky@lists.yoctoproject.org>; Fri, 04 Aug 2023 06:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691154489; x=1691759289;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eZxIfxI8DoK5nLetxEcubjk3YIJY2hA00YFEya9RmiM=;
        b=ldlxxZ9C7cX7/LAatq0C52QcVhEYKmWUkGbJLXDlKFsf0TVybDV0yvH2vetlAVObpZ
         ZXz53qyeVuSTSmpTHAerska9sAQc/yz4FddpRMmyXBLM2s7+GwciCsCvxvytTuYq0RzZ
         dehJ9c8oPQqtfITZ7yUEipdWkC9xAKgfwJtlXEjXG8IuLVY+hYkQAMvYw5R1b6gT0D4a
         mpiVvBaZIx84w+/tumH2rO29MxX+mty7IFdu0cJ+BUKhS9vKX9dcq5uNidBqScQCgKa0
         wSv3NFPNiL99QOIFH7H/P80sZKe5MKSoz8myKsX+3/Q3pAieaQq4vRvFZOONyZk93vNZ
         fkXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691154489; x=1691759289;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eZxIfxI8DoK5nLetxEcubjk3YIJY2hA00YFEya9RmiM=;
        b=NJZacCd8rFd6raPvbiKSoGHC2Rtbb22VBj8FGuY5VOcsLM0uTNNCsHu43HX8b9W4qr
         kifA7RjtrjY6GcUALuqNVVp/d9ydwxBROaJokJguCmMMwgw+KW5du9RvTRhBIYP0wBTd
         MbjhrqpauxveMQOZvTkGwb3RqdQRc7yMcCcRUHV+xfHylF9SbBtXg/tccvkOOr72Els7
         SzbyXnUKKqtkJwwG/qmqCel04KAEzqd4xBYqm2ZCytglqLjqqV/zGI+JXlxH5mkSap9l
         fgVbDs+VDYRfOUHGebvVa68Zl0XfQwmx4LhvX7vNkg6diwtHmOT7hMNlAn67BLsG0qQV
         viDQ==
X-Gm-Message-State: AOJu0YzsphLHGMKN9wBVy3pEn8P+V1ZZJCgjYgB5cQE9LtFiqbN4w9pd
	DKnIi6S/JOgONsf67pwCgAb4k+0yjuBrc15udoA=
X-Google-Smtp-Source: AGHT+IH8w1u7fGLGv1/QHJ/PDCH1FtIMhqSKvSa63DOVpwfXNJ1EHkez1A9kTwF9T8A79XwoVjT2fkuthgljti8MhJU=
X-Received: by 2002:a05:6512:360f:b0:4fe:8be:6065 with SMTP id
 f15-20020a056512360f00b004fe08be6065mr476233lfs.5.1691154489083; Fri, 04 Aug
 2023 06:08:09 -0700 (PDT)
MIME-Version: 1.0
References: <6Y6K.1691153129635207131.6RdY@lists.yoctoproject.org>
In-Reply-To: <6Y6K.1691153129635207131.6RdY@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 4 Aug 2023 15:07:57 +0200
Message-ID: <CANNYZj_8Kj6spQOHTvgFXSDQzmMTt6QtxwjeLs8L1yJ9GOEzkQ@mail.gmail.com>
Subject: Re: [poky] [LINUX-FIRMWARE] all pacakges in image
To: f.louveau@lacroix.group
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 04 Aug 2023 13:08:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13109

You can enable buildhistory and check what has changed in the package
dependencies that linux-firmware produces.

Alex

On Fri, 4 Aug 2023 at 14:45, <f.louveau@lacroix.group> wrote:
>
> Hi,
> I encounter some issues with linux-firmware.
>
> My build was configured with tag kirkstone-4.0.8, and today I try to update to latest commit of kirkstone branch (fa7dd8ac75a98c04a4ca2cf90882c2b1c27b9679).
> The build leads to an error:
>
> ERROR: <image>-1.0-r0 do_image_tar: The rootfs size 1456576(K) exceeds IMAGE_ROOTFS_MAXSIZE: 768000(K)
> ERROR: Logfile of failure stored in: /home/user/workspace/kirkstone/build-mymachine/tmp/work/mymachine-poky-linux/<image>/1.0-r0/temp/log.do_image_tar.3783805
> ERROR: Task (/home/user/workspace/kirkstone/sources/meta-layer/recipes-images/image/<image>.bb:do_image_tar) failed with exit code '1'
>
> Using buildhistory, I can see that all linux-firmware packages are embedded in image that is not the case before.
>
> After some bisect analysis, I found that the commit 1752b29e7c8d4c104c99b04400fd88ea985348a5 adds this weird behavior.
>
> Temporarily, I will use tag kirkstone-4.0.11 but want to notice this issue.
>
> Fabrice
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13108): https://lists.yoctoproject.org/g/poky/message/13108
> Mute This Topic: https://lists.yoctoproject.org/mt/100545329/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

