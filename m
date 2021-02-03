Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.10888.1612366286965248089
 for <poky@lists.yoctoproject.org>;
 Wed, 03 Feb 2021 07:31:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hfEYQ3zZ;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: bruce.ashfield@gmail.com)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 17DB338C05C4
	for <poky@yoctoproject.org>; Wed,  3 Feb 2021 15:31:26 +0000 (UTC)
Received: by mail-ed1-f41.google.com with SMTP id s5so8216edw.8
        for <poky@yoctoproject.org>; Wed, 03 Feb 2021 07:31:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EFnMUyze+fJl9+8+QWgEXpkM17RzDOjx6CTCeRkYqhk=;
        b=hfEYQ3zZVmj6PnCo/z7wHxpEIMNCXVge7fL+EeIN2vxUmZaX97cZngrHrJAnakWoUD
         0zY9/NGbGaixGvJ6G+enOHYIwwozYhlJegdueDQNJp/RdR3P8Z7ApPm3YmfivU9Q4+/T
         T+8PZ/WSBUpLvmEIAFpjEhClIo6BVTmPqopQH6BsEouLPyKgWEU7sUZ4m0AleDiFhA54
         6kBaJ6EmY+bzqbyGFhWP6JCdw6kj1eWaBhHN+q8GUHhbMAIz+6ZuSqbADi4sshRrC1P4
         Qm0m9Scp4D1tMuloqiMQCTa/CjczVCKz6PIXxMNuOg+zJ1zIaTE8fise4Zg3QHkVQf+6
         rwyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EFnMUyze+fJl9+8+QWgEXpkM17RzDOjx6CTCeRkYqhk=;
        b=ncQXxBnL05S2jiMiEJ3wZLiIGkezmJTjoXmqPhlEUTLJYaCh5kvY7d+RScDwzNk5mo
         pi1XJFyww0bWa3+OZYt1xDKMHnXVlm2f26d7D6IQcqNgmSfUFR/6kGkj+AfNrwpcIXYK
         L3ugTaO+r9KQnxC3/L809b1EeCiJVkLi0AnURyANmRgRx1wanZM02bezp9zMHpD30RNM
         6nwhtX1zTePY7Tnp6H2D0wjgWSqfNU0NLfJVRj3hjqB5bVO7RpqqK0oLgldbAi9X7HxX
         +RA3VkpIsm2YKF0YXZdzfHrGHnBgYRSUuiM9zw7L1hDyojEBsC9kseWq/QeRRJG/s/Sz
         5irQ==
X-Gm-Message-State: AOAM531/QK7IIUWZOlqyIhBSfN+47jPZvAiY/rdn4RTB8rF1Bq95F0TS
	p9lQ9HJnzdrwvz1T3usoPHuimj3Lbne932140a4=
X-Google-Smtp-Source: ABdhPJzt4IB53TirPy8vb5vUDftxP+h/8Vb/0yAzBoZI4+ITU9bg2nbs8yO4Cj1kZe9Eub/8RJIvs59B2GSVzU8+y90=
X-Received: by 2002:a05:6402:186:: with SMTP id r6mr3694040edv.234.1612366284385;
 Wed, 03 Feb 2021 07:31:24 -0800 (PST)
MIME-Version: 1.0
References: <20210203145932.5044-1-bruce.ashfield@gmail.com> <58398e8012e6ebfe50c92a78bba43692836e5bb4.camel@intel.com>
In-Reply-To: <58398e8012e6ebfe50c92a78bba43692836e5bb4.camel@intel.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Wed, 3 Feb 2021 10:31:13 -0500
Message-ID: <CADkTA4PSi_JwTRsrPBWHkB1nFkg+=GE3fRs8rjfqRFc=Y6iqhA@mail.gmail.com>
Subject: Re: [poky] [PATCH] yocto-bsp: linux-yocto: update to v5.10.12
To: "Mittal, Anuj" <anuj.mittal@intel.com>
Cc: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 3, 2021 at 10:06 AM Mittal, Anuj <anuj.mittal@intel.com> wrote:
>
> Hi Bruce,
>
> On Wed, 2021-02-03 at 09:59 -0500, Bruce Ashfield wrote:
> > From: Bruce Ashfield <bruce.ashfield@gmail.com>
> >
> > Updating linux-yocto 5.10 bbapends to the latest korg -stable release
> >
> > Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
> > ---
> >  .../recipes-kernel/linux/linux-yocto_5.10.bbappend        | 8 ++++--
> > --
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> >
> > diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-
> > yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-
> > yocto_5.10.bbappend
> > index d6c5424fc7..8fb7e2c340 100644
> > --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
> > +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
> > @@ -7,10 +7,10 @@ KMACHINE_genericx86 ?= "common-pc"
> >  KMACHINE_genericx86-64 ?= "common-pc-64"
> >  KMACHINE_beaglebone-yocto ?= "beaglebone"
> >
> > -SRCREV_machine_genericx86 ?=
> > "f08df324ccdbc73b9f0c2de2826a2843bcdf651b"
> > -SRCREV_machine_genericx86-64 ?=
> > "f08df324ccdbc73b9f0c2de2826a2843bcdf651b"
> > -SRCREV_machine_edgerouter ?=
> > "1f3d7b6a85e98317771367e70824f7803ff9ca30"
> > -SRCREV_machine_beaglebone-yocto ?=
> > "f08df324ccdbc73b9f0c2de2826a2843bcdf651b"
> > +SRCREV_machine_genericx86 ?=
> > "cdca78778415b4b3bd64e8390ee8adf04bf7e17a"
> > +SRCREV_machine_genericx86-64 ?=
> > "cdca78778415b4b3bd64e8390ee8adf04bf7e17a"
> > +SRCREV_machine_edgerouter ?=
> > "2e1fb8f84f09ca768eb531f33a126a40bb90e791"
> > +SRCREV_machine_beaglebone-yocto ?=
> > "cdca78778415b4b3bd64e8390ee8adf04bf7e17a"
>
> I think you missed updating LINUX_VERSION value in this file.
>

Right you are! My script only does the SRCREVs, and missed the variable.

v2 on the way.

Bruce

> Thanks,
>
> Anuj



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
