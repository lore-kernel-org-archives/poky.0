Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web10.14339.1635263751903326277
 for <poky@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 08:55:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GI6NNRJf;
 spf=pass (domain: gmail.com, ip: 209.85.160.182, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f182.google.com with SMTP id w2so13990587qtn.0
        for <poky@lists.yoctoproject.org>; Tue, 26 Oct 2021 08:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Y6StgKBO8KZisvr5jOEwTe5MMO52VsjUdPYzSfCJhRw=;
        b=GI6NNRJfTJCZEQsct+d3LvopF2khP3h2BVM1MJ3MD+soYUP1d9ybHOX785+HVbjRi9
         KPHmitkvF/CrHw6yWab+NHMj/HycQGJ7iHXcyS8I/Hi2+Vr+XnVd++oaxvxP74pFwB3E
         OdJc+aBOr32p65gXKW+BV7x8wzP+Onh6wPWwBLifpcBjkL5cbwRuTluJBginTCHG+4Q1
         N4jnXkEzQAR+SQuX5Cubex1QKWPP2nD+PCA2eurFVHQRoHHXi80n4jx/vNJmYOC3tG18
         7ouHzx1q19XYQ1kCb7bvTX4Gv7uR8UPivDzuyRb9VO1q0Z1U1DbPzSflH1IbWK4igyne
         Yyrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Y6StgKBO8KZisvr5jOEwTe5MMO52VsjUdPYzSfCJhRw=;
        b=YFzywC8aJ4Auuh4wjo/Ru2HA1A05X048LdxdBATGVq8n9UePL3d6Yo+E7M80DK+SM6
         mZVh4gcerxcpPI/nk6Hjs6s9MvQkyirUdgMx4+hW3z59h+Yc6vV344V0Yj+uqedJsR2b
         zHZFZQMgoLtYJSIFovSAe4xyrh+ZRtRoLHyxVeImyHBI5xtK3SBYRpmYVc44tl+wv2YK
         4Oz1FcP2ToDj1kdbU2f4jsm7vfYMYxdqA6l2C2+x+gaja5GQXrgL6su6bqRTYO5wPjr3
         +SjFoTkkNREztjmsdExRo5a3gi7r5E1aSXhLDBuegoyQicNd5KpwPf2q8QnlS+FxdHMo
         B3rg==
X-Gm-Message-State: AOAM530YbTS1FlXz4NOsXqtXX68Gmb01zieenrKrUAx66ZCVlRPCnrjX
	IpJ6ZfaJ4V3h3SWF9sbJfd1gy7MxLXpftiF6qR2uVDPe
X-Google-Smtp-Source: ABdhPJyzEkBX2gyifxjF7GzIqlubw4tFHCgU/JBfAfISe3MY7kaStWmzvAc1xSO7I3/xXWA6YMESzxRRAkQNz5BT4+4=
X-Received: by 2002:ac8:7087:: with SMTP id y7mr2121902qto.112.1635263750915;
 Tue, 26 Oct 2021 08:55:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2OjchVtRJfFwirrNjJ80VHLEZvMkascBbDvVkbsOfBB5BCjw@mail.gmail.com>
In-Reply-To: <CAP2OjchVtRJfFwirrNjJ80VHLEZvMkascBbDvVkbsOfBB5BCjw@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 26 Oct 2021 08:55:23 -0700
Message-ID: <CAMKF1soxAHRFgzqwoTJ+xXbcBKBWqR2MwoDciJvw-6Hijw7Gmw@mail.gmail.com>
Subject: Re: [poky] bitbake core-image-minimal struck at [ Initialising tasks: 44% ]
To: Ashish <ashishm@mvista.com>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 26, 2021 at 7:11 AM Ashish <ashishm@mvista.com> wrote:
>
> Hi All ,
> I am trying to get an basic yocto build for qemuarm.
> But the build is struck at message INITIALIZING TASK : 44%
>
> I tried with some other machine name , removing the cache folder etc but the behaviour remians same .
>
> Any pointers to debug will be helpful .

check ps output and see whats executing at this point. I wonder if its
stuck parsing some git recipe with autorev or something like that.

>
> Thanks ,
> Ashish
>
>
> [LAP] ~/yocto-build/build-folder : bitbake core-image-minimal
> Parsing recipes: 100% |##########################################################################################| Time: 0:00:57
> Parsing of 774 .bb files complete (0 cached, 774 parsed). 1326 targets, 56 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           = "1.46.0"
> BUILD_SYS            = "x86_64-linux"
> NATIVELSBSTRING      = "universal"
> TARGET_SYS           = "aarch64-poky-linux"
> MACHINE              = "qemuarm64"
> DISTRO               = "poky"
> DISTRO_VERSION       = "3.1.11"
> TUNE_FEATURES        = "aarch64 armv8a crc"
> TARGET_FPU           = ""
> meta
> meta-poky
> meta-yocto-bsp       = "dunfell:78fe96f3edf981285cb9b6a0286e45f44d8b4b21"
>
> Initialising tasks:  44% |######################################
>
> --
> Thanks ,
> Ashish .
> 
>
