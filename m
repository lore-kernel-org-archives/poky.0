Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web11.3356.1668801216014245896
 for <poky@lists.yoctoproject.org>;
 Fri, 18 Nov 2022 11:53:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dZ8ZgLDJ;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1322d768ba7so7164730fac.5
        for <poky@lists.yoctoproject.org>; Fri, 18 Nov 2022 11:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=h61hflADUgA9msiXadnJZuFqhmOO9ZBRhUf4U3Vib3s=;
        b=dZ8ZgLDJF1yyrt2jo5877ePXWqoEKG2AF/s5rpZYSwFiv3OB99Zn7kG2EJOzo1mqJj
         gEOWqIfT9fpy5hfymlvudot/knevioINwRZWQn+PKCpd6fzkUkEIre228V/IvqU/+nek
         K3JpnqfTy2c8kQbQ/UIxWuFs43NHG9fx9gXd9TnZupQRNmdomX0bnta4Z4UFO338yjTU
         J6OJVIRQpCd+3E8MQYh5jHhkqOVQ+pwl38+lZV4XaG+jDMhXzApCUjyLOLe3x4cs0qs0
         dWJ1VG2jdr0X12R9x9MfNlEew+mp4qJ1GdHBtTElUt85KKc21P3yiRJcL3x1KcPT/Mk/
         rncg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h61hflADUgA9msiXadnJZuFqhmOO9ZBRhUf4U3Vib3s=;
        b=LZf3ZOCOVWvMhJSBSIfKLOl0YF6GqRLU0N6QZDxLZL8yTFinSMI2casiJby3UDynUy
         3mEf/cK0TNbQ10G4kbHwpNh166Blb9PZZCjxEduH4CxP3f8mCth7oOhvJCmemBg9IhwE
         3bcQgGlqV/94fZDrUmOpZuNBhkYd2VzJERF5z8kz1kIeEMCDnVidqsSnANvwiJs+xJV9
         BLDeotPSjMlfAf5lQ3pj/wjbq/i7fsrilX23/3ATeEAUgUbVe4ZiPvVlDCCEjUOjRDfL
         +bvmsRvvmiz6JKydXtGzMlpfD9LoYaH9ykIqnhxshExSIIcFDnUnBDiBXgj0nXag0+fX
         Osug==
X-Gm-Message-State: ANoB5pkyVZ1rMJ5rizg30dNvhOm/UxYINJA/r4Wmr7LhlvWCgwfKF7lR
	GPId7bfh90BXPEg1XodkQ/LQNUuVSkzKSRwbAk4=
X-Google-Smtp-Source: AA0mqf6cUU6Im7YMyKmv7CxfDrnalSjbDDXYd2hJHvVgi/k3zad2vto/VtmpHHmejYPuRm4DBES4IIgYIJbCVrM+jf8=
X-Received: by 2002:a05:6870:1784:b0:13b:1e05:a73d with SMTP id
 r4-20020a056870178400b0013b1e05a73dmr7836522oae.55.1668801215041; Fri, 18 Nov
 2022 11:53:35 -0800 (PST)
MIME-Version: 1.0
References: <CAOuPNLh1+LhxH8yuQprUntwjibAP_iuwF7tXnHjfhAZhLCCG-A@mail.gmail.com>
 <CAOuPNLgEs7Obni8kOqgznv_mLW8JQ4cF0CUS8jaV6AXEhw6aOg@mail.gmail.com>
 <CANPvuR=RT3YBSBmRHNtoeCMST2DJ3Wqq7fzh6jj2C1oxUxR0EA@mail.gmail.com>
 <61e5b4c7-9f15-1ea2-49d6-8b484bc9a461@gmx.li> <4f229954ab406f98ef0589105779539ba562295f.camel@linuxfoundation.org>
 <17282032224EB050.28573@lists.yoctoproject.org> <8ef5d68d-0383-4291-f235-089267a66358@gmx.li>
In-Reply-To: <8ef5d68d-0383-4291-f235-089267a66358@gmx.li>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Fri, 18 Nov 2022 11:53:09 -0800
Message-ID: <CAMKF1spwh_U1x-h6ntOOaiUrCtt9w6PNPK2JKyHb8YThXeP-Jg@mail.gmail.com>
Subject: Re: [poky] gcc 11.3 bug (gcc bugzilla 101723) on armv7
To: Steve <star@gmx.li>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 17, 2022 at 10:27 PM Steve <star@gmx.li> wrote:
>
> Hi,
>
> I found that GCC 11.3 that is part of latest kirkstone 4.0.5 has a
> problem building tensorflow-lite. (git.yoctoproject.org/meta-tensorflow)
>
> Problem is similar as described here:
> https://github.com/google/XNNPACK/issues/2003
>
> There are options set to compile ( -march=armv8.2-a+dotprod
> -mfpu=neon-fp-armv8) that doesn't match to the processor (armv7)
>
> Following this issue
> and points to  patch in
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101723
>
> Which is related to gcc 9. But couldn't it be that it is not fixed in
> 11.3 too?

Its in gcc11 as well see https://gcc.gnu.org/bugzilla/show_bug.cgi?id=101723#c5

>
> How is able to fix it or probably better ask: what can I do to get it
> working? Honestly, I don't understand much of it.

are you seeing it on yocto master ?

>
> Best regards, Steve
>
>
> 
>
