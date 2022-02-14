Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web08.37579.1644859044373176295
 for <poky@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 09:17:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VUx/OWMZ;
 spf=pass (domain: gmail.com, ip: 209.85.222.176, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id o10so15003237qkg.0
        for <poky@lists.yoctoproject.org>; Mon, 14 Feb 2022 09:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=G/VZdDlmscwtd7ybPvEvR2w8fgI2/JwZQpxQrNsAmjU=;
        b=VUx/OWMZpUnewhb7E1ZuAhrBmsVkqx5/hr9cTyWMi7qafsQNEW4XFoz5CG/z/457/I
         nnji3foip13zjgsGOWRinxStjfBEgnsth3zkFWc/7CGfEY7kyA2OPlCZrXWDwK4fxExd
         00Jnd63q+Drk7P2CgupeE3UB5v97KUIqgRiIxRIj1/MEFgi3Qd2d9dIqNt1LjH5vhwCx
         iZ94BEbfcD2q5gy3jjdEzhXf3f2ivwwGUfGfWyhL+uDl5QTpQF91v1xXCm7uUqTmK577
         25h5FNYdvYfDmkSxdR3WQjDvSJtoZP170mSfN/X7/tguCcg42Xj+DzYRvLdw8EApEJO/
         uwIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=G/VZdDlmscwtd7ybPvEvR2w8fgI2/JwZQpxQrNsAmjU=;
        b=1ZyRThxRm5hx6ssWsOH0c1ObEfIVpwohwYbm4ntRhqvnqFhArHfTusf7VYRUz6NJWc
         etdwTPL7sXFtmq2uPZ4Ueb6kpr4KT1WAt5Gm7Zc6KE9JcY5ZY2vM1whDcsKdZ/sKi6a9
         vY6JpQmkc8RBjCxSMZLo9cnmQSXGGquNJs9qs1L7BOOkN9DGJJN/ZLS9ohJegBJyEqYy
         lAW+sOfLWveLqvnZ2ReuW7QnI42C4zVSqwWFNry91zuPaH2lUSXHucmaO+Zk0H+Nd7yp
         CRIV2j2QuAU0naG6j484SL5VkhqIvQr7PVpc70K8/Pl88yqWfGGHzec6SehEz+NHMXgo
         AYyg==
X-Gm-Message-State: AOAM530EvXcNwU0jkYKcP0fJQl3MmlZpRC1/nsfeI4XDOF+Z2oXvNjCg
	oGyBiVhPJdtCajSLFV0DdNoe6Du+ob8rj0IFwH7RaU6NeNMHkQ==
X-Google-Smtp-Source: ABdhPJztNAcz+zeo0kx50z6GW9sIERl8HkgdryiKeyfS7fFNtY3DAF0WyMxUc91ER+afELjnDn7eRWzoqNWIJQpIMVM=
X-Received: by 2002:a37:63cf:: with SMTP id x198mr437568qkb.72.1644859043246;
 Mon, 14 Feb 2022 09:17:23 -0800 (PST)
MIME-Version: 1.0
References: <20220214075859.8593-1-ceggers@arri.de>
In-Reply-To: <20220214075859.8593-1-ceggers@arri.de>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 14 Feb 2022 09:16:57 -0800
Message-ID: <CAMKF1sqQuKTh36TrtRXwaQv7XJm9ONa8ScC0R9Ro697SvrsruQ@mail.gmail.com>
Subject: Re: [poky] [PATCH] gcsections: add nativesdk-cairo to exclude list
To: Christian Eggers <ceggers@arri.de>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 14, 2022 at 12:04 AM Christian Eggers <ceggers@arri.de> wrote:
>
> configure fails with the following error if gcsections is active during
> build of nativesdk-cairo:
>
> | checking whether float word ordering is bigendian... unknown
> | configure: error:
> |
> | Unknown float word ordering. You need to manually preset
> | ax_cv_c_float_words_bigendian=no (or yes) according to your system.
>

hmm, this perhaps is a bug in the native toolchain you have
whichever compiler toolchain is being used to compile nativesdk-cairo
see if you can compile and find the string in resulting binary

% cat a.c
double d __attribute__((used)) =
90904234967036810337470478905505011476211692735615632014797120844053488865816695273723469097858056257517020191247487429516932130503560650002327564517570778480236724525140520121371739201496540132640109977779420565776568942592.0;
int main() { return 0; }

% gcc a.c -O2 -g -grecord-gcc-switches -pipe -Wall
-Werror=format-security -Wp,-D_FORTIFY_SOURCE=2
-Wp,-D_GLIBCXX_ASSERTIONS  -fstack-protector-strong -m64
-mtune=generic -fasynchronous-unwind-tables -fstack-clash-protection
-fcf-protection -fdata-sections -ffunction-sections -flto=auto
-flto-partition=none | strings a.out | grep seesnoon

if it prints out
seesnoonGCC: (GNU) ....

then the test is fine. If it does not then there is something wrong there.

I have done this test on gcc 11.1.0 and clang 13.0.1 on my archlinux
host and it worked all ok.




> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---
>  meta-poky/conf/distro/include/gcsections.inc | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/meta-poky/conf/distro/include/gcsections.inc b/meta-poky/conf/distro/include/gcsections.inc
> index 886a005b341d..a1f8651ae9c3 100644
> --- a/meta-poky/conf/distro/include/gcsections.inc
> +++ b/meta-poky/conf/distro/include/gcsections.inc
> @@ -16,6 +16,8 @@ LDFLAGS_SECTION_REMOVAL:pn-grub = ""
>  # SDK packages with build problems using sections
>  CFLAGS_SECTION_REMOVAL:pn-nativesdk-glibc = ""
>  LDFLAGS_SECTION_REMOVAL:pn-nativesdk-glibc = ""
> +CFLAGS_SECTION_REMOVAL:pn-nativesdk-cairo = ""
> +LDFLAGS_SECTION_REMOVAL:pn-nativesdk-cairo = ""
>  CFLAGS_SECTION_REMOVAL:pn-nativesdk-mingw-w64-runtime = ""
>  LDFLAGS_SECTION_REMOVAL:pn-nativesdk-mingw-w64-runtime = ""
>  CFLAGS_SECTION_REMOVAL:pn-nativesdk-perl = ""
> --
> 2.34.1
>
>
> 
>
