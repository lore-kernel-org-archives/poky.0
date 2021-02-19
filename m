Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web11.4411.1613709010148500409
 for <poky@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 20:30:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iNern8ie;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id g24so3166503qts.2
        for <poky@lists.yoctoproject.org>; Thu, 18 Feb 2021 20:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3bkExlJZmus5OmWMiBRPMnlagyzmWVBRaCe6h60YRpQ=;
        b=iNern8iereSeyeFJbWVq9KJqrjBA4j6axjmQW6SpIhJLz8UOJhWBcaxBdi9i7y8UOq
         pvFtjTZKvl14Z3zR+8PmeJI1Coc79X8ZcawVMTzfmLe2MNmDSTNHw/6xa7qzXn1wX8l+
         AMr5dKmfDGmna/KBKMz8DXhuVyrVa48A9j5iWzGKBi5cSlYKm4BQ7yrQxguaZpMKe/la
         6KIiyw8Ngt41nmqRMyLPdYsrxtc26tjNDJ+7JiLAt8160LTfpF73nkZ+zUv6p4srYyAo
         0+oAn8R8E2R5RCvsc2VGkV1noCS7BPVsgnBRzCvV1bm0Iuc6p2gNgag5LEKOxm+SIwcC
         fVCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3bkExlJZmus5OmWMiBRPMnlagyzmWVBRaCe6h60YRpQ=;
        b=pA4HJgmUlYlp0+5oy8JwCc+G07Pk33RvuPrqmygiX0+bbhx6Kb5T/i/9HodFS5NQbU
         pJTYgXJAnZWqWqcSZnses+KpFnsJDotQ6wAlUjnCW6GBwGVDDXmKtf+HgmOCmK40Yj0l
         c4vmMeWRSBK0afvgusQYkWIOo4BZ01XKT1RW9K8p3P0vcmXqC3l5JWcpuqcc4q6pXC0S
         5T8fjrxJPcYhk5My5Sc9nDx2aVqok2WJ7qwqnsInkwxQqZ/jMh6ytcu3oUaSJWzJv3ig
         ndqMuPVslTXe1vy4uB+6f30bTjeX//ufQUHg7WFkXS759b5Lx1s8rnFX8Igwh5dY/MYZ
         Douw==
X-Gm-Message-State: AOAM532ARDeRGebBqRtk8vWdnEYQ1v2jHwO0mHI14YTF6aWoEGnZ29/u
	Y2t56I+xuocW3Del2tGrX3SBsL0MSt9TxjD0VZI=
X-Google-Smtp-Source: ABdhPJydeygKsEMPsXKc7hSlEc/h8IlTyT4wWMqYSR5CSpUtjPOogu+rRXmZpZwVXtCadmujeTkzAe6bZFSG2KVhs0M=
X-Received: by 2002:ac8:3899:: with SMTP id f25mr7571767qtc.369.1613709009193;
 Thu, 18 Feb 2021 20:30:09 -0800 (PST)
MIME-Version: 1.0
References: <Q5qi.1613707481830615137.WghJ@lists.yoctoproject.org>
In-Reply-To: <Q5qi.1613707481830615137.WghJ@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 18 Feb 2021 20:29:43 -0800
Message-ID: <CAMKF1sqRXd=Cr-QwSJvrUB3BX1cBM_WJA9CSv9pBDg9F3X2beA@mail.gmail.com>
Subject: Re: [poky] Unable to build qemu-4.2.0 in yocto-poky-3.1.3 #compiler #library #poky
To: senthilv2k@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

you need to depend on libseccomp and in this case perhaps a native version

On Thu, Feb 18, 2021 at 8:04 PM <senthilv2k@gmail.com> wrote:
>
> Hi All,
> Am upgrading to yocto-poky-3.1.3 and getting below compilation error.
>
> |..../xrev/tmp/work/x86_64-linux/qemu-system-native/4.2.0-r0/qemu-4.2.0/qemu-seccomp.c:22:10: fatal error: seccomp.h: No such file or directory
> | 22 | #include <seccomp.h>
> | compilation terminated.
>
> Any suggestion to fix this issue?
>
>
> 
>
