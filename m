Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com [209.85.210.67])
 by mx.groups.io with SMTP id smtpd.web12.23651.1593615967844305498
 for <poky@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 08:06:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=MoQCyej9;
 spf=pass (domain: konsulko.com, ip: 209.85.210.67, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f67.google.com with SMTP id 5so19645088oty.11
        for <poky@lists.yoctoproject.org>; Wed, 01 Jul 2020 08:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FdopfaZmrAP3p3uCBdBZE8J8FH55JZEYVPW1dLm2+qw=;
        b=MoQCyej9TVPqGbec5aSvGo9BvZhmWwEtwzLGmy6a+44O726Kfjb2wrwaPszJTg3GfJ
         vjfKDeZKZ0KWslxT6aVXm/anObxdCh+Q+vSdCAcpBFInPwuZjuF9tjMrdUD2MnbVmwdr
         LnRFvNEbuFG6E0LbQregeu2485NaiyA3fqsmU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FdopfaZmrAP3p3uCBdBZE8J8FH55JZEYVPW1dLm2+qw=;
        b=Zy2wokaU+7d1HWS2m0mwoFJjEClmGW9ej6JocUvzFRW3z5SVQnZcl6eyzECqe3bkm8
         gnra6eEKdMoh7rwckFVq39vmFGHpcI0bHh0mq2PRz7erN1x1ACzP8Kww9mqm5x7ME4nO
         5JYLWaWRRwK0VlNUwF9u6uzV6E/RC9Sh66kSqa/qagZzOJ3JvGRPl+X/Kk25GKtoHzvN
         JRh8YI14e/EU+fIyQuofTbjKiaIdzEDvzVXfQP/AaQl1h5/gnb9frU+i/NxcN2MtMgz/
         5yHrjBC/Xvh7QN6aObTBDU4UJyZltmqcinFX4DSFjDxv0J+KqFdg+tCZbiRCugmiiOiD
         Eqig==
X-Gm-Message-State: AOAM5304prCxaWj8BqNIClkQIDpOp+bbblxTCskdxYnEIO6B3J8H9RM2
	SCzkL6uk82MDoYULsstdepmNRhLJhY+Kn5qRoQvqI/EK
X-Google-Smtp-Source: ABdhPJzgEAHmKHXBytL6qKtoXkonRrFXGrfHiGANDPT+Bvmv9ZIV8YQtdwKlblAoAdG6lvXB9ZBilmumadA3m6CRD7k=
X-Received: by 2002:a9d:674a:: with SMTP id w10mr20290034otm.305.1593615965938;
 Wed, 01 Jul 2020 08:06:05 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1593601516.git.hubert.chaumette@kolabnow.com> <8ff9ce22aa0e05096d23efc8d6c1b9258b2f69f3.1593601520.git.hubert.chaumette@kolabnow.com>
In-Reply-To: <8ff9ce22aa0e05096d23efc8d6c1b9258b2f69f3.1593601520.git.hubert.chaumette@kolabnow.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Wed, 1 Jul 2020 16:05:55 +0100
Message-ID: <CAM9ZRVuKV1ZKMBPbqvRpKME4b3dcmxJhJX9dbL-s2nY-SfgHcw@mail.gmail.com>
Subject: Re: [poky] [RFC PATCH 1/2] Example for ext kernel modules dependency, master module
To: hubert.chaumette@kolabnow.com
Cc: poky@lists.yoctoproject.org, bruce.ashfield@gmail.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 1 Jul 2020 at 14:54, Hubert CHAUMETTE via
lists.yoctoproject.org
<hubert.chaumette=kolabnow.com@lists.yoctoproject.org> wrote:
>
> Add /dev/master char device and export a notifier for R/W events.
> Shared headers are installed to ${D}${includedir}/${BPN}.
>
> Signed-off-by: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
> ---
>  .../kernel-module-master/files/COPYING        |  15 ++
>  .../kernel-module-master/files/Makefile       |  14 ++
>  .../files/include/master.h                    |  25 +++
>  .../kernel-module-master/files/master.c       | 154 ++++++++++++++++++
>  .../kernel-module-master.bb                   |  20 +++
>  5 files changed, 228 insertions(+)
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/COPYING
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/Makefile
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/include/master.h
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/files/master.c
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-master/kernel-module-master.bb

Maybe `kernel-module-notifier`?

-- 
Paul Barker
Konsulko Group
