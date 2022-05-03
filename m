Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
 by mx.groups.io with SMTP id smtpd.web09.10465.1651582176953084362
 for <poky@lists.yoctoproject.org>;
 Tue, 03 May 2022 05:49:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=J3M1KaDH;
 spf=pass (domain: gmail.com, ip: 209.85.128.176, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-2f7c57ee6feso178374977b3.2
        for <poky@lists.yoctoproject.org>; Tue, 03 May 2022 05:49:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=bzrTPDiPslcbbQrrfVUjJmbenwbHLMX9DduSCwgYYio=;
        b=J3M1KaDH3gCVwh2cTxzH3Lgvom0FKUvRmHWOUGsjchiPdkNgprW3dhz7weJxwpmiWd
         X7C1ti+mlJ0hK2SkfN9IV7fr3LaoJ22Yj/WExtiNXSHn9jnuGmIAa4b3pQ4lfmCTR2lK
         W1Ufph6ByFFrbRfjJHSY2Ow6K71LW8HqPzk/ZyqW8a4DbY/Yr4gSGIIdzj3W6LC7Pi0L
         6fZQ4fC9wmxFLSISPLu00dVsJdrHlg4lCcyJO7BiDjxOzrtT3yFNvZS2QFU55t989xew
         bltHSWefeb94hW96uML9ZDUhZAuqEH8Fk7xyLgcxAsOEr3U45dPL+QQsM8eBqJWqfvHP
         SGaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=bzrTPDiPslcbbQrrfVUjJmbenwbHLMX9DduSCwgYYio=;
        b=GW+/c9a4GXpBFuA6Rxn5SRgwg3vAVrHBLxLhXfNlSvpd55bXwfpH3ZbpXoixMNrVKj
         /xoIT78NLpGA0ZraU0WAukQL4OVn0vAWKzMsAWxTmeYBCET2Bbu/Gpwaqv15ou1gNcIc
         tkhsNaBk1bj3FIybYROR6Peu8Qwwu02xFdlRiMeNd2IfecxNHSUeG1NWdnuWvujB4f+5
         8QXlEthc7U5WIRxr6pC9laVaUA0NAJTyCe0bnIkw9ohE2phQCmNTxtxHwZePx9aSbZN+
         rEuGjpTJx9LUtEqG4vZ22mY/rRc1/LvnuLe56ty+tcbYXmOJM//q0GkMUAwRbf7pn1gu
         gqzg==
X-Gm-Message-State: AOAM533e5T/qkNwXROku8BZCsfB3rxB/QhHKbKBqxloQbhb5ssBjR17J
	gNcWtVRGzfZeJ/qgUgaFlvykIm4A1DGO0cT4ga0=
X-Google-Smtp-Source: ABdhPJwDndz7gRS7DUJCL1/npTW3jyCrHZLagcFraFlIuYe2iWWoPQKPY8lQ+s6xrDWYInm3JTu3c4zTot/bG/EwGns=
X-Received: by 2002:a81:2443:0:b0:2eb:4ffe:fab2 with SMTP id
 k64-20020a812443000000b002eb4ffefab2mr14973802ywk.330.1651582176083; Tue, 03
 May 2022 05:49:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220501231316.4082898-1-raj.khem@gmail.com>
In-Reply-To: <20220501231316.4082898-1-raj.khem@gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Tue, 3 May 2022 08:49:24 -0400
Message-ID: <CADkTA4MHje3C=XKc2-vpfNSxWk+mvRZOnqsLdBZk75V4oQOGqg@mail.gmail.com>
Subject: Re: [poky] [PATCH] linux-yocto_5.15.bbappend: Bump edgerouter to 5.15.36
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Sun, May 1, 2022 at 7:13 PM Khem Raj <raj.khem@gmail.com> wrote:
>
> brings in fixes with gcc-12

I'm doing a bump of all the reference boards, it's better that we
don't have them on different versions. So I can take care of this
along with the other boards.

I expect to send that full SRCREV bump today.

Bruce

>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
> index ff85e2e64b..04cd46772e 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.15.bbappend
> @@ -9,7 +9,7 @@ KMACHINE:beaglebone-yocto ?= "beaglebone"
>
>  SRCREV_machine:genericx86 ?= "7f685244afb3acd13e94968312580b63d7296705"
>  SRCREV_machine:genericx86-64 ?= "7f685244afb3acd13e94968312580b63d7296705"
> -SRCREV_machine:edgerouter ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
> +SRCREV_machine:edgerouter ?= "b978686694c3e41968821d6cc2a2a371fd9c2fb0"
>  SRCREV_machine:beaglebone-yocto ?= "5a8ec126c297dd9e410eb23685003f670f8f3d57"
>
>  COMPATIBLE_MACHINE:genericx86 = "genericx86"
> @@ -19,5 +19,5 @@ COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
>
>  LINUX_VERSION:genericx86 = "5.15.22"
>  LINUX_VERSION:genericx86-64 = "5.15.22"
> -LINUX_VERSION:edgerouter = "5.15.1"
> +LINUX_VERSION:edgerouter = "5.15.36"
>  LINUX_VERSION:beaglebone-yocto = "5.15.1"
> --
> 2.36.0
>
>
> 
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
