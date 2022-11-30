Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
 by mx.groups.io with SMTP id smtpd.web10.576.1669774696556645963
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Nov 2022 18:18:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HjwuJf/F;
 spf=pass (domain: gmail.com, ip: 209.85.210.46, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f46.google.com with SMTP id p27-20020a056830319b00b0066d7a348e20so10373647ots.8
        for <poky@lists.yoctoproject.org>; Tue, 29 Nov 2022 18:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aPVjRdaYRNv4pxpRmfdbrOnU1eAgYrdPknhjmedyyFg=;
        b=HjwuJf/FaWxfMS6M1pRRTAUaTdDJU92Ma0hb1QDZ/lDM/VCOIwQkIGJKcjlWUNobaK
         AqdEvvHph7IL7q9sIkcvmx54DirIdWYnee6lPGo/ZrO9fRaTzkMxYUab7uFIq+a965eV
         qhByzcGI8QxEloxjImK0OemP9aN4s8eQIkKFFviHNpsoOkwOvUZeYotzwWpk1BQsW6QD
         u0J1n1XhUfOojLqhnz+NHZ/2BcX9IHNKjzjrbXFZmHqXZ5Gb2sAnupA9KIv1+Jj8o4K6
         v3HuRucooAts1mMnC/9LLlZ/xbF3/s1fekviV4r8jqMDGbWS5r0E+k0wfhEqWf3rjwuu
         ixfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aPVjRdaYRNv4pxpRmfdbrOnU1eAgYrdPknhjmedyyFg=;
        b=CxF93mondM2d9OVCVZtOeBjMfVI5aY7xcW2RSGhnmnd00oOA25M0eMyhqkyOKpqRTn
         cIxLjC+N0k9mmaKOhza6Y80i3rm1ZV2axP9BORjL4iGNcjvQuIcjgweK7LNzcbcIgp9+
         akNhzK4YOZDA8W7XUkQ8UpHGsudirxNJVg1PgnXGREstEf+fWMwL77aWT3A/g5Ssf2Xv
         ydK0SCczxXtgL64ThrDO2n8EUdzqoAP8eiNb4Cabv5cFosYzea6TeJA6l2uHbji+DgPx
         5IvjXlbdiYqksuIPUWovt4cn1LYW0+TpXUkiXd8tDWLnDApKBC0qKKZWi/YAGEunipwW
         VIEw==
X-Gm-Message-State: ANoB5plcqN9IiQ75JwUQUN2jGHYQ8zEcWW7L1rWXx6aHkzxftgdx67Dx
	EV7Lw5KSCnUEtuFgq8SOWmGAeovKBmypY2GmCWs=
X-Google-Smtp-Source: AA0mqf5jYW/ZyKdSYaNJHP2ENtIpHBqaUlGcirk9JiIS6aiYJA5Be2VhZ7sBoPMv0gPGDAwjaACyiRGOSfD27Xuw6y8=
X-Received: by 2002:a9d:6a44:0:b0:66c:fb5b:1d67 with SMTP id
 h4-20020a9d6a44000000b0066cfb5b1d67mr30168632otn.111.1669774695675; Tue, 29
 Nov 2022 18:18:15 -0800 (PST)
MIME-Version: 1.0
References: <2lN4.1669171844857500614.vHh0@lists.yoctoproject.org>
In-Reply-To: <2lN4.1669171844857500614.vHh0@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 29 Nov 2022 18:17:49 -0800
Message-ID: <CAMKF1srn8xwaisS+ue_nCYn391tfz9_1YBJQzKJ2+Mz=NEWksg@mail.gmail.com>
Subject: Re: [poky] Failing to Create Windows Cross Compile Toolchain/SDK using Meta-MinGW #bitbake #yocto #poky #sdk
To: peter.jamrozinski@delve.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 22, 2022 at 6:50 PM peter.jamrozinski via
lists.yoctoproject.org
<peter.jamrozinski=delve.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> I'm trying to create a cross-compile toolchain for my local Windows host targeting an I.MX 8M Nano target. I added the layer 'meta-mingw' to my sources and added it to my bblayers.conf file:
>
> # Addition of MinGW layer to allow for Windows X-Compiler generation
> BBLAYERS =+ "/usr/local/dey-3.2/sources/meta-mingw"
>
>
> My local.conf contains:
>
> SDKMACHINE = "x86_64-mingw32"
> SDK_ARCHIVE_TYPE = "zip"
>
> I ran 'bitbake <image name> -c populate_sdk' to generate the sdk.
>
> I encountered the following errors:
>
> ERROR: nativesdk-openssl-1.1.1n-r0 do_configure: Execution of '/home/dey/workspace/ccimx8mn-dvk/tmp/work/x86_64-nativesdk-mingw32-w64-mingw32/nativesdk-openssl/1.1.1n-r0/temp/run.do_configure.1376007' failed with exit code 1:
>
> and
>
> configure: error: linux/capability.h is required in order to build libcap-ng.
>
> I've attached the log files from both 'do_config' steps for libcap-ng and openSSL.
>
> I did see the following link that looks like it might help with the openSSL issue, but I'm not sure how I download and apply this patch in my local environment:
>
> https://www.yoctoproject.org/pipermail/yocto/2018-July/041835.html
>
> any help is greatly appreciated.

Try adding something like

DEPENDS += "libcap"

>
> Thank you!
>
> - psj.dev
>
>
> 
>
