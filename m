Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com [209.85.210.68])
 by mx.groups.io with SMTP id smtpd.web11.23768.1593615794840622258
 for <poky@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 08:03:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=P6FHumwK;
 spf=pass (domain: konsulko.com, ip: 209.85.210.68, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f68.google.com with SMTP id n24so19409332otr.13
        for <poky@lists.yoctoproject.org>; Wed, 01 Jul 2020 08:03:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tSug+Oyw7BHbmzVwr/rBjAEeiI6HRfgdH2KkYaD6wZY=;
        b=P6FHumwK8L+EGuS3R83ldTJar9XYSQA9QN3QiI9sJFEsmKhSW3rXZYC5sHDvHzjuYE
         y3eK+EEWVkKIrKFNrEPJb4u8PMtEraHMFW3jGdrATEqo9JSrIucnm9Mu91ertR98n7Hh
         bBsF3AegQoRG1ByZD3PPBa0pwDGRYDYAClMEA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tSug+Oyw7BHbmzVwr/rBjAEeiI6HRfgdH2KkYaD6wZY=;
        b=Uz1e68xYxaD/42ZIKW/E50+/GQrGm2Hf37Sn/Q5l40tmEof1sxjg+pHvTuhjHMMIVO
         /AeVaV1Us+OHGt/KwchUmtbfdlEOXC1ikB3KIQtrbbALCQlB4MRdJ3J18o3cLMJJHfbS
         uKtxYQ+kUn9C6DUqEDNT7ukWp0+RnQd1sY6qAN8jSSS9IjbyScvtcIWI6Wu65VPGUGcP
         JMTEkhHHEWnNJoIJ1Oqxde1sTqN2uqLBu5j62NRqKvAFcJ0uUIx/06NFpBa9x8290Ely
         PvU5O+JbZxeRGvg6cx1wE7CjqlKePLs8euRfqOOUV3WBTmfzLbNteGlxIm8/JUmJm/km
         +YrA==
X-Gm-Message-State: AOAM5314H64UiVBPpcgyi229wR5H5qpNlD7TYKATweO1gNkR7CkuK5Ou
	ipPoq7ea44lyBbJuXXRKjyy0NUZ13CVKZ1VWNJ4SnA==
X-Google-Smtp-Source: ABdhPJzbqGU3eWibIYS54l/FdU52N+PuuVGqRjeTyhDB3yRkekJQv52+b9fWegqBHOgb6F+8VQ7OWG+OLuQXSKzOGpg=
X-Received: by 2002:a05:6830:1e3a:: with SMTP id t26mr18836226otr.258.1593615794206;
 Wed, 01 Jul 2020 08:03:14 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1593601516.git.hubert.chaumette@kolabnow.com> <91719a84eeb95599fbf1e9f4cb693efca5527a9f.1593601521.git.hubert.chaumette@kolabnow.com>
In-Reply-To: <91719a84eeb95599fbf1e9f4cb693efca5527a9f.1593601521.git.hubert.chaumette@kolabnow.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Wed, 1 Jul 2020 16:03:04 +0100
Message-ID: <CAM9ZRVsO6nGXnnM1t6pF9fx2n9RRa1UvPtzH-Jf8uNUVtLLMBQ@mail.gmail.com>
Subject: Re: [poky] [RFC PATCH 2/2] Example for ext kernel module dependency, slave module
To: hubert.chaumette@kolabnow.com
Cc: poky@lists.yoctoproject.org, bruce.ashfield@gmail.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 1 Jul 2020 at 14:55, Hubert CHAUMETTE via
lists.yoctoproject.org
<hubert.chaumette=kolabnow.com@lists.yoctoproject.org> wrote:
>
> Registers to the master notifier and displays the string received on R/W.
>
> Signed-off-by: Hubert CHAUMETTE <hubert.chaumette@kolabnow.com>
> ---
>  .../kernel-module-slave/files/COPYING         | 15 ++++++
>  .../kernel-module-slave/files/Makefile        | 16 ++++++
>  .../kernel-module-slave/files/slave.c         | 52 +++++++++++++++++++
>  .../kernel-module-slave.bb                    | 17 ++++++
>  4 files changed, 100 insertions(+)
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/files/COPYING
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/files/Makefile
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/files/slave.c
>  create mode 100644 meta-skeleton/recipes-kernel/kernel-module-slave/kernel-module-slave.bb

I recommend we NACK new code using this terminology. Changing
terminology in existing code is difficult and needs to be done
carefully. Changing terminology in newly added code should be easy to
do.

This could be called `kernel-moduler-receiver` if I'm understanding
the code properly.

-- 
Paul Barker
Konsulko Group
