Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com [209.85.167.195])
 by mx.groups.io with SMTP id smtpd.web10.11270.1605385441751871558
 for <poky@lists.yoctoproject.org>;
 Sat, 14 Nov 2020 12:24:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=e8r3rB8E;
 spf=pass (domain: konsulko.com, ip: 209.85.167.195, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f195.google.com with SMTP id m17so14443540oie.4
        for <poky@lists.yoctoproject.org>; Sat, 14 Nov 2020 12:24:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8taxPgRJzyEkBkt4TQYXMu2YH1QtD0PGBJ6R4aKhgFk=;
        b=e8r3rB8E7gCsBMoeZIh/B3qhrbfPaex5VXRuPvGTJpwCVE1nSfvTlXL8eE6+EaO2Fa
         Yrx1LiyiwB8O1kykx5v+8xFNI3MuvkFGJNzZ42WCMG2CdJI57QB+30wmRiyuYO7tdTMI
         aaGkkw5CpAY7uqHvLRwduekBRbO3pNvce/zEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8taxPgRJzyEkBkt4TQYXMu2YH1QtD0PGBJ6R4aKhgFk=;
        b=CYKl/mvYhYrjmiaXguKx12aVhDZOSmBEQg2bY/gg1lJ1vC7kQFNiR86tzBLIlJwK0o
         a+WZTDl079NE1lEiY5NjRTdxzUSFPOFnbm11X2wywPuh/XJenfr9oGffvvnNqafVNlmn
         ojevpk1SINO96Jheu3J+/76ShY+Exom6zFu1Scpcl6Udu4gBCeGjW3Bkr4qzbX0EvG4H
         mqZDdADcBVd91AxKI5zSlHnXRHjbHL1wBdlyvxUnxCNe07IfKjFgQepLLI2+JKfKf0RV
         T7Hdz9CGn4I4pw96VhW62dmOlulSsAIgyF/ynLaiTxg8VMEYdrlTHp03CRHlzglupSE/
         DcCA==
X-Gm-Message-State: AOAM532FEqr8Ykk7B5N3FU/r0QYYodsGD9mECtAu7QcY3ET8rnQXKYzi
	P01XnR/46nvklDrR0TNJ6Dv+7a2l04B4QghPN+woTg==
X-Google-Smtp-Source: ABdhPJy2GNzL8X9jvnsW1hqNqD7FndhqLV0DCm75EL1bdrUOCQN8XGO3AFoFikhk/fsMeL+2nKRQ51wxs8GskPmQZSg=
X-Received: by 2002:aca:b288:: with SMTP id b130mr5210889oif.152.1605385441110;
 Sat, 14 Nov 2020 12:24:01 -0800 (PST)
MIME-Version: 1.0
References: <20201113221425.5106-1-okaya@kernel.org>
In-Reply-To: <20201113221425.5106-1-okaya@kernel.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Sat, 14 Nov 2020 20:23:51 +0000
Message-ID: <CAM9ZRVu0EXaTc08zpEH9rORenatkBGgPmfSL4jmu9QPwF21F9g@mail.gmail.com>
Subject: Re: [poky] [PATCH v6] poky-tiny: enable section removal
To: Sinan Kaya <okaya@kernel.org>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 13 Nov 2020 at 22:14, Sinan Kaya <okaya@kernel.org> wrote:
>
> Use GCC sections flags so that unused sections can be garbage
> collected at link time.
>
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>  meta-poky/conf/distro/include/gcsections.inc | 19 +++++++++++++++++++
>  meta-poky/conf/distro/poky-tiny.conf         |  3 +++
>  2 files changed, 22 insertions(+)
>  create mode 100644 meta-poky/conf/distro/include/gcsections.inc
>
> diff --git a/meta-poky/conf/distro/include/gcsections.inc b/meta-poky/conf/distro/include/gcsections.inc
> new file mode 100644
> index 00000000000..d94f25913bb
> --- /dev/null
> +++ b/meta-poky/conf/distro/include/gcsections.inc
> @@ -0,0 +1,19 @@
> +CFLAGS_SECTION_REMOVAL = "-ffunction-sections -fdata-sections"
> +LDFLAGS_SECTION_REMOVAL = "-Wl,--gc-sections"
> +
> +# packages with build problems using sections
> +CFLAGS_SECTION_REMOVAL_pn-glibc = ""
> +LDFLAGS_SECTION_REMOVAL_pn-glibc = ""
> +CFLAGS_section_removal_pn-cairo = ""
> +LDFLAGS_section_removal_pn-cairo = ""
> +CFLAGS_section_removal_pn-perl = ""
> +LDFLAGS_section_removal_pn-perl = ""

Are you sure "section_removal" should be lower case here?

> +
> +# omit section removal on native builds
> +CFLAGS_SECTION_REMOVAL_class-native = ""
> +LDFLAGS_SECTION_REMOVAL_class-native = ""

This still applies the flags to -nativesdk builds, possibly to other
builds as well. Instead you should only append the flags for
class-target.

> +
> +# set default for all targets
> +CFLAGS_append = " ${CFLAGS_SECTION_REMOVAL}"
> +LDFLAGS_append = " ${LDFLAGS_SECTION_REMOVAL}"

This isn't ideal. You should use CFLAGS_append_class-target and
similar for LDFLAGS here.

> +

This looks like stray whitespace.

> diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
> index c6d4b88f83d..9507a68a11e 100644
> --- a/meta-poky/conf/distro/poky-tiny.conf
> +++ b/meta-poky/conf/distro/poky-tiny.conf
> @@ -29,6 +29,8 @@
>  # [ ] Modify busybox to allow for DISTRO_FEATURES-like confiruration
>
>  require conf/distro/poky.conf
> +require conf/distro/include/gcsections.inc
> +
>  DISTRO = "poky-tiny"
>  DISTROOVERRIDES = "poky:poky-tiny"
>  TCLIBC = "musl"
> @@ -122,3 +124,4 @@ PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
>
>  # Disable python usage in opkg-utils since it won't build with tiny config
>  PACKAGECONFIG_remove_pn-opkg-utils = "python"
> +

This also looks like stray whitespace.

-- 
Paul Barker
Konsulko Group
