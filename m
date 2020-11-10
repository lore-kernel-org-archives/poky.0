Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com [209.85.210.66])
 by mx.groups.io with SMTP id smtpd.web10.25715.1605003083244926201
 for <poky@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 02:11:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=SlZJEX9Q;
 spf=pass (domain: konsulko.com, ip: 209.85.210.66, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f66.google.com with SMTP id g19so11934927otp.13
        for <poky@lists.yoctoproject.org>; Tue, 10 Nov 2020 02:11:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jpj78IFZuZ6froEwzRu1HnvgZPcnOYin6BxHelrwVZU=;
        b=SlZJEX9Qc9x/t80HQY9SmmjuMUJWMHDnZSc5eARN8BGoFzfoF1/Mt1hhDUO2DQ8QW4
         kjwIIRH6K0mo9A1bIV9lZjYq00qYxhd16TMqq6GtgqtPbIO6Q6PwTpW4VmpOd1e9IiKW
         rN5/ysEXTZESKEZifLHDYHqTWupVhGJ/kyx6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jpj78IFZuZ6froEwzRu1HnvgZPcnOYin6BxHelrwVZU=;
        b=FFhUhH8z0PjY/IYlV/Actshi8cZ6mZl7aONfN7pgzotQ3VEF8L9LF4LJ7qW28BVMUN
         pBoIPYyKTE9m/kHz2BSFgItcRqcqWuoBOFr9bIPBUgmZ7nI1L+7zMrr/5A8uRPx+953k
         dyLqas7IROJ3EwyU12dBX3i3Baj9AmNcaUoxD6e68+u2Jgbq7A1t38uxCUzx+3pWVOU2
         Buhxe4MXQRcOx30ITLE40vtNO3vWZq/rBsdVa4XgwbCvZHFF4JPYxv7gB7Uk0233ipr9
         FplVe5U4ZRUoI0fdqSSlSntNmhFsOulf9IcWRHieATtvTnyEbmyP1jZJ2fvHwvGmpk1S
         65Zw==
X-Gm-Message-State: AOAM531ciiRdUBg/pMYFFHS1tFS0abuUc1q8XzhvwF90AKtINTk2j4Eq
	MVL9tELoHxM9Nf4UTMpvwB1N1pBCcHegzt9qKx4sJg==
X-Google-Smtp-Source: ABdhPJzIE7msdgD3dqT99t8dqE1eGb+egi4+hc0yr13dG1XYPq5ioMz0KnEXbk1SDDJZgqAAXr13TqBOYJ0GC4qkmN8=
X-Received: by 2002:a05:6830:1b66:: with SMTP id d6mr14020966ote.258.1605003082568;
 Tue, 10 Nov 2020 02:11:22 -0800 (PST)
MIME-Version: 1.0
References: <20201109223824.12351-1-okaya@kernel.org>
In-Reply-To: <20201109223824.12351-1-okaya@kernel.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Tue, 10 Nov 2020 10:11:12 +0000
Message-ID: <CAM9ZRVvcLwFs6zgw_5+BdjYVjevm=46CBTOko4774wRM86Zo1A@mail.gmail.com>
Subject: Re: [poky] [PATCH v3] poky-tiny: enable section removal
To: Sinan Kaya <okaya@kernel.org>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 9 Nov 2020 at 22:38, Sinan Kaya <okaya@kernel.org> wrote:
>
> Use GCC sections flags so that unused sections can be garbage
> collected at link time.
>
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>  meta-poky/conf/distro/poky-tiny.conf | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
> index c6d4b88f83d..1e37394875d 100644
> --- a/meta-poky/conf/distro/poky-tiny.conf
> +++ b/meta-poky/conf/distro/poky-tiny.conf
> @@ -122,3 +122,21 @@ PNBLACKLIST[core-image-weston] = "not buildable with poky-tiny"
>
>  # Disable python usage in opkg-utils since it won't build with tiny config
>  PACKAGECONFIG_remove_pn-opkg-utils = "python"
> +
> +# set default for all targets
> +CFLAGS_append = " -ffunction-sections -fdata-sections"
> +LDFLAGS_append = " -Wl,--gc-sections"
> +
> +# gc-sections requires either an entry or an undefined symbol
> +CFLAGS_remove_pn-glibc = "-ffunction-sections -fdata-sections"
> +LDFLAGS_remove_pn-glibc = "-Wl,--gc-sections"
> +
> +# perl won't cross compile with sections
> +CFLAGS_remove_pn-perl = "-ffunction-sections -fdata-sections"
> +LDFLAGS_remove_pn-perl = "-Wl,--gc-sections"
> +
> +# Unknown float word ordering. You need to manually preset
> +CFLAGS_remove_pn-cairo = "-ffunction-sections -fdata-sections"
> +LDFLAGS_remove_pn-cairo = "-Wl,--gc-sections"
> +
> +

Using _remove in a common layer like this is discouraged as it's very
difficult to override anywhere else.

I'd recommend defining new variables with default values which enable
the flags you want then append them to CFLAGS and LDFLAGS
respectively. This allows the new variables to be overridden per
package very easily. Also consider that you may want to apply these
only for the target and not for native/nativesdk packages.

Here's a quick untested example:

CFLAGS_SECTION_REMOVAL = "-ffunction-sections -fdata-sections"
LDFLAGS_SECTION_REMOVAL = "-Wl,--gc-sections"

CFLAGS_SECTION_REMOVAL_pn-glibc = ""
LDFLAGS_SECTION_REMOVAL_pn-glibc = ""
CFLAGS_SECTION_REMOVAL_pn-perl = ""
LDFLAGS_SECTION_REMOVAL_pn-perl = ""
CFLAGS_SECTION_REMOVAL_pn-cairo = ""
LDFLAGS_SECTION_REMOVAL_pn-cairo = ""

CFLAGS_append_class-target = " ${CFLAGS_SECTION_REMOVAL}"
LDFLAGS_append_class-target = " ${LDFLAGS_SECTION_REMOVAL}"

You could also look at `meta/conf/distro/include/security_flags.inc`
in oe-core as an example.

And lastly it looks like you have a couple of extra newlines added at
the end of the file, these can be dropped.

Thanks,

-- 
Paul Barker
Konsulko Group
