Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.37582.1644861782906065436
 for <poky@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 10:03:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bIi0rpqQ;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id c189so15050213qkg.11
        for <poky@lists.yoctoproject.org>; Mon, 14 Feb 2022 10:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/YBeNSm30jKwyaDvkq5aGqdyES0M8SoyNt8uVZyUTW0=;
        b=bIi0rpqQIuQDrn0D9TRzkumyMwgQ4lfDWp9iXAZwBce3x/zubRSDDjoPIgAo2gNX3X
         5lFHGixjgx3eXDzPtRhIDatZ/EZwioZPOaz5k/5n+u5+UEFQWAYGXKzDBFRnTnyROJZF
         HLF+2rGK2s+gULSggmHZG/MA4ab0j+igOgiPdhTKlaad8B9yi7xuBjIh3XSzpev+iZ+/
         v0Sy4YPPVlH7FC33mWK7iu738N7HChBuw6Ox00T+DNQEt1iyNkxUYgWiWNY52HF3jSxe
         x32b3IK1kjjRi1n/Hwy9pki4GalWumkqJkseYItJeQvhpvqTQbJrR3vklw9/2CV/177U
         vTTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/YBeNSm30jKwyaDvkq5aGqdyES0M8SoyNt8uVZyUTW0=;
        b=6mi9opzNpeONy9KNIgOQhSNoEvGC9idEEkUrlPAkVTgr+UEI9clWY2S167e6m6TlA4
         5MrNxV7puoWKFWPl5SUDqxB3m4Uzc8E+3nkeEgLmSqEiVd5Pq31i2BOSbb0nEVMazsXG
         Q72kwbbS1WwwwT2APezStC6FQHPQ3dg0Zro0rOwt5yAkjHk/W6AR77jOaWKOQkU2tYhn
         8C5FSkbMAQouzvz+m55myo3tkgf5FI6PJefrcRWeSJJLnq5eTzbPBQAAClAS1QlA+A/0
         JcPsJ/OHqNiCDCSGbmdcaaPnVBy/QS6YQqOovAtd5ISAQo1qFf0UGZoNBR4pAGK3t97e
         SRow==
X-Gm-Message-State: AOAM532hCv+2+n7j+2ql5wVIpVKvHsCj+a/qw9TrCPkrp0nWrHTBAD9x
	wG+XFGtmi4od8+tGXl4eVZTzWMZzfIT+Xk0k4yM8me7nGGA=
X-Google-Smtp-Source: ABdhPJyt/W+RoBCMOFF8tC3W0BQiWoNKFi09ll6xc+P4Y+OYef4hZ5CTebrQuTUxlsc4nkPch8zW3bLitSBe3VUbLmA=
X-Received: by 2002:a05:620a:2912:: with SMTP id m18mr20322qkp.227.1644861781782;
 Mon, 14 Feb 2022 10:03:01 -0800 (PST)
MIME-Version: 1.0
References: <20220214075859.8593-1-ceggers@arri.de> <CAMKF1sqQuKTh36TrtRXwaQv7XJm9ONa8ScC0R9Ro697SvrsruQ@mail.gmail.com>
 <7360758.EvYhyI6sBW@dhcp-192-168-0-28.wgnetz.xx>
In-Reply-To: <7360758.EvYhyI6sBW@dhcp-192-168-0-28.wgnetz.xx>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 14 Feb 2022 10:02:35 -0800
Message-ID: <CAMKF1sookosR5xzWjeT0zBtDWV8RgW+Waq38dHxuArJ4UCd-GA@mail.gmail.com>
Subject: Re: [poky] [PATCH] gcsections: add nativesdk-cairo to exclude list
To: Christian Eggers <ceggers@arri.de>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 14, 2022 at 9:43 AM Christian Eggers <ceggers@arri.de> wrote:
>
> On Monday, 14 February 2022, 18:16:57 CET, Khem Raj wrote:
> > On Mon, Feb 14, 2022 at 12:04 AM Christian Eggers <ceggers@arri.de> wro=
te:
> > >
> > > configure fails with the following error if gcsections is active duri=
ng
> > > build of nativesdk-cairo:
> > >
> > > | checking whether float word ordering is bigendian... unknown
> > > | configure: error:
> > > |
> > > | Unknown float word ordering. You need to manually preset
> > > | ax_cv_c_float_words_bigendian=3Dno (or yes) according to your syste=
m.
> > >
> >
> > hmm, this perhaps is a bug in the native toolchain you have
> I thought that nativesdk packages are built by the nativesdk toolchain,
> aren't they?
>

yes they are, I just was not sure which variant you were building.

> config.log (created without linker GC):
> -------------------------8<--------------------------
> configure:20976: checking whether float word ordering is bigendian
> configure:21005: x86_64-pokysdk-linux-gcc  --sysroot=3D/home/eggers/Proje=
kte/jupiter/yocto-warrior/build/devel-honister/tmp/work/x86_64-nativesdk-po=
kysdk-linux/nativesdk-cairo/1.16.0-r0/recipe-sysroot -o conftest  -O2 -g -f=
eliminate-unused-debug-types -pipe -fmacro-prefix-map=3D/home/eggers/Projek=
te/jupiter/yocto-warrior/build/devel-honister/tmp/work/x86_64-nativesdk-pok=
ysdk-linux/nativesdk-cairo/1.16.0-r0=3D/usr/src/debug/nativesdk-cairo/1.16.=
0-r0                      -fdebug-prefix-map=3D/home/eggers/Projekte/jupite=
r/yocto-warrior/build/devel-honister/tmp/work/x86_64-nativesdk-pokysdk-linu=
x/nativesdk-cairo/1.16.0-r0=3D/usr/src/debug/nativesdk-cairo/1.16.0-r0     =
                 -fdebug-prefix-map=3D/home/eggers/Projekte/jupiter/yocto-w=
arrior/build/devel-honister/tmp/work/x86_64-nativesdk-pokysdk-linux/natives=
dk-cairo/1.16.0-r0/recipe-sysroot=3D                      -fdebug-prefix-ma=
p=3D/home/eggers/Projekte/jupiter/yocto-warrior/build/devel-honister/tmp/wo=
rk/x86_64-nativesdk-pokysdk-linux/nativesdk-cairo/1.16.0-r0/recipe-sysroot-=
native=3D    -Wl,-O1  conftest.c  >&5
> configure:21005: $? =3D 0
> configure:21025: result: no
> -------------------------8<--------------------------
>
> > whichever compiler toolchain is being used to compile nativesdk-cairo
> > see if you can compile and find the string in resulting binary
> >
> > % cat a.c
> > double d __attribute__((used)) =3D
> > 90904234967036810337470478905505011476211692735615632014797120844053488=
865816695273723469097858056257517020191247487429516932130503560650002327564=
517570778480236724525140520121371739201496540132640109977779420565776568942=
592.0;
> > int main() { return 0; }
> >
> > % gcc a.c -O2 -g -grecord-gcc-switches -pipe -Wall
> > -Werror=3Dformat-security -Wp,-D_FORTIFY_SOURCE=3D2
> > -Wp,-D_GLIBCXX_ASSERTIONS  -fstack-protector-strong -m64
> > -mtune=3Dgeneric -fasynchronous-unwind-tables -fstack-clash-protection
> > -fcf-protection -fdata-sections -ffunction-sections -flto=3Dauto
> > -flto-partition=3Dnone | strings a.out | grep seesnoon
> >
> > if it prints out
> > seesnoonGCC: (GNU) ....
> >
> > then the test is fine. If it does not then there is something wrong the=
re.
> I use openSUSE 15.3 with an ancient GCC 7.5.0. It doesn't recognize '-fcf=
-protection'.
>
> gcc a.c -O2 -g -grecord-gcc-switches -pipe -Wall \
> -Werror=3Dformat-security -Wp,-D_FORTIFY_SOURCE=3D2 \
> -Wp,-D_GLIBCXX_ASSERTIONS  -fstack-protector-strong -m64 \
> -mtune=3Dgeneric -fasynchronous-unwind-tables -fstack-clash-protection \
> -fdata-sections -ffunction-sections -flto=3Dauto \
> -flto-partition=3Dnone | strings a.out | grep seesnoon
>
> seesnoon
> (without GCC: ...)

so I wonder why this test fails. Do it on nativesdk-gcc as well.

>
> >
> > I have done this test on gcc 11.1.0 and clang 13.0.1 on my archlinux
> > host and it worked all ok.
> >
>
> See also:
> https://gitlab.freedesktop.org/cairo/cairo/-/issues/459
>
>
>
>
