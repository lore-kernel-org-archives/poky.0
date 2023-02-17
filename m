Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.5210.1676636642227795042
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 04:24:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jgpM+15p;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id t8so1119675lft.11
        for <poky@lists.yoctoproject.org>; Fri, 17 Feb 2023 04:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZxziHAI5LIfDXhgFxb+CYrdXVzEEFtlzj5QhSGjFGSg=;
        b=jgpM+15potFuREzSX9TICpZbEn6yGyj/UcXBn5RaiSm9IhpaOQGd9QCkiLPJaSn1Hr
         p6+jdg2zxgiGVxekFuEtIw+gKFSKByzgGq7z37vq3NF9oKWCSqSNuz2c687zD4DAkxyD
         xle+2TEnrJ/4qD543PngVFI2jRdhMmhG+rnRFmvfpMDxttrgV/D5CcqSmgVRTcs4jX4a
         twGCg4z6Po24ZRsTqjDg4CyX0VTaLSufrAJQV8SqzZlFwUJtaXnW8pywFxtxdX+5FeaP
         JQ+73s1MKmsBtFUj/rSG5N9RCvRu3d92Ts4/8B9DGxiPL+NH9/91AW0SFs/WXPMsXqVW
         v0mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZxziHAI5LIfDXhgFxb+CYrdXVzEEFtlzj5QhSGjFGSg=;
        b=oJIY9n3JuVjVl0lwmGmc5U6kcGnXtZguvCuoCdGJw5Ef1pDsxLM8tkcTtsdHy36uAp
         62r3quMnQLiZAK45C/qih8APO88tuQeUb+qPxwxMLxwdoZoZRJLZzidhSMG9PbBSv9CO
         QfWcgcx8XUdJ+sHhzbxj2rhS+D4KUb3gXv4SYCu9YXLRwjJyFz5cc5CJFyf/cnNcq2tn
         i7GCZsqKLj6JmRg5oB5v7cq330i/DTolAWaGKgM5MEWj1bL28E1LMbOLnbMK3wnYCtt3
         B+z8bAw+1xMn7tcFdKY9pMCOIX9Mn6MMArzvIsE0u5IIJQW51WeJdMOUuQtcd09wmVxX
         1/8Q==
X-Gm-Message-State: AO0yUKXoi2oOU/rbUKV6LAhxKqIPk1WzZlq9rkpE4ArzFwVJHvvsZvla
	+HnYvqXtRnt8PCqH3f5UbQr9j09T7JIrPg8e+gg=
X-Google-Smtp-Source: AK7set9FUb0JJid0XlKV1MrR1AaPx+8nHY5AFhc7hGhAZohop6hV1Q2ok8xpcsLJk7CYtZMbbtdnUbwBcDHk/rEsZFA=
X-Received: by 2002:ac2:4845:0:b0:4db:1999:67a3 with SMTP id
 5-20020ac24845000000b004db199967a3mr442064lfy.13.1676636640303; Fri, 17 Feb
 2023 04:24:00 -0800 (PST)
MIME-Version: 1.0
References: <BooD.1676632109346078064.HPtY@lists.yoctoproject.org>
In-Reply-To: <BooD.1676632109346078064.HPtY@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 17 Feb 2023 13:23:48 +0100
Message-ID: <CANNYZj8DU7twqWsXKq3F95efV80i3jQHRF1bBnNk8kZR_xR+pA@mail.gmail.com>
Subject: Re: [poky] Test dunfell LTS release on UBUNTU LTS 22.04 #yocto
To: Kamel Fezzani <kamfezz@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

The list of distributions is simply what the yocto CI is using to run
test builds. It doesn't mean that 22.04 will not work, but you may run
into issues, mostly caused by newer ubuntu compiler building an older
set of native recipes in dunfell. If you have compelling reasons to
move to 22.04, you can also install buildtools tarball which will
insulate you from the host tools: scripts/install-buildtools

Alex

On Fri, 17 Feb 2023 at 12:08, Kamel Fezzani <kamfezz@gmail.com> wrote:
>
> Hello,
>
> On one of my Yocto projects, I am using dunfell LTS release, and I'm tracking latest dunfell releases (3.1.22 (January 2023)).
> I am using build machines with native UBUNTU distribution.
>
> Ive seen that dunfell LTS release si not tested on UBUNTU LTS 22.04 (https://git.yoctoproject.org/poky/tree/meta-poky/conf/distro/poky.conf?h=dunfell#n49).
>
> Si there any reason for that ? This test is planned ?
> Or should I keep my build machine on UBUNTU20.04 ?
>
> Thanks for help.
> Regards.
> Kamel FAZZANI.
>
> 
>
