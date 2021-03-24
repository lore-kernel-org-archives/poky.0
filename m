Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
 by mx.groups.io with SMTP id smtpd.web12.3195.1616619763327485765
 for <poky@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 14:02:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LZma0hY6;
 spf=pass (domain: gmail.com, ip: 209.85.160.174, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f174.google.com with SMTP id g24so145237qts.6
        for <poky@lists.yoctoproject.org>; Wed, 24 Mar 2021 14:02:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mQvcTgybda/i1mB6/GXU8LVfVERd6UMee3hWmpIa0xI=;
        b=LZma0hY6G60jhiaschbldc5S4e3YXpRtU/DRDnxlBf17toVtrUC9Ggz3Ip4HABGqWs
         O6nLrHWhIHGWMpnf4W95EYLP/jhBC1FdJILIj54m7KWFexpvm/8+atLGH3IMCC1E/6xW
         MmWAFDyK329HSnJRitKqqpbiC+abjAXvafWTIS0yAhQRfVuCicYhMupTHb3m0A8dFj8B
         iAK3dnKrKRsZ+8LhxFzs+iq2LGFRC8WDCAwnBf7EYb4CdvS0F+RWh2fgDgiSyLQT25W+
         d7PQwTCcF4bBmM0aS/DQ17OXktSI0+mgaNeM/5sjksmnOM+XV7ZH/zfP3hXQHEsgABIO
         /CWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mQvcTgybda/i1mB6/GXU8LVfVERd6UMee3hWmpIa0xI=;
        b=p5rcm4N87C1AOEvMCawkkyo3RpicWOIJnPHL1IHPKuVVS6+meF2yHLh8Pmqmc2gQpc
         2roWP8RJrOHADSSWeM/l/oUX3RBq2uxvdWly+MSEb6z+xHBol/Zr6h/49UUTth7/kyem
         pkcNkGiEJwZOBFHeKT9tzHXptGFiuMZnsfyk2WSuBrNLYCRjWLuHB5IhE7JKphSUHbIe
         lhUprbv0J/EqcvflncAeuycaUIXWKr+h7wttLRPteBcQ/SYfQ6rbl5um34N+vS4uLM/8
         v3pJKfLNz/akGwb8GoTR9v5uz6PNUe5veDxuAzdxvSF5jTZDtEuxhU6f/GClovdUA7Rq
         hBWA==
X-Gm-Message-State: AOAM532MjKmNsqyBAFZIJIUb0zGQRJIaSm9lVS9rfIWujHuSFnk6LCyA
	mAr+TNL4+VmzOMqBwt5fCAPXv4J+UsWSTUficB0=
X-Google-Smtp-Source: ABdhPJyPtpWymy59Gh5yM9RbuKpO/yOt74p1ixlsXm+V73H2BZtusj9lu7XOizEddhJuxIl+pZaPuVYRyTbnIvbz7MU=
X-Received: by 2002:ac8:7dce:: with SMTP id c14mr4876072qte.82.1616619762231;
 Wed, 24 Mar 2021 14:02:42 -0700 (PDT)
MIME-Version: 1.0
References: <6507.1616616362778222896@lists.yoctoproject.org> <27500.1616618608323270025@lists.yoctoproject.org>
In-Reply-To: <27500.1616618608323270025@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 24 Mar 2021 14:02:16 -0700
Message-ID: <CAMKF1sp-8F8fsw7dK-R4E0BEDNwn9UwmJWkVDfYLZHUOTq_nzg@mail.gmail.com>
Subject: Re: [poky] Weird Compilation issue with a c++ recipe
To: Arun Ravindran <arunlee@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

it needs to use --sysroot option, but question is why CMake is
ignoring it for your package. we have many CMake based recipes and it
all works fine. So inspect the cmakefiles and other scripts your
package is using to build itself.

On Wed, Mar 24, 2021 at 1:43 PM Arun Ravindran <arunlee@gmail.com> wrote:
>
> /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/aarch64-poky-linux-g++
> Include dirs:
>
>  -I/home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/include
> -I/home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/rs-oem-kit-server/src/writer/../common
>
> where as iostream is in
>
> /home/aravind2/work/mevolve-yocto/mvdevice/build/tmp/work/aarch64-poky-linux/rs-oem-kit-server/1.8.2.0-r0/recipe-sysroot/usr/include/c++/9.3.0/
>
> But somehow that include path is not taken...
>
> 
>
