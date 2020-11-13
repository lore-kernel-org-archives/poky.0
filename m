Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
 by mx.groups.io with SMTP id smtpd.web09.258.1605243563769611277
 for <poky@lists.yoctoproject.org>;
 Thu, 12 Nov 2020 20:59:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=W2j9ZXHx;
 spf=pass (domain: gmail.com, ip: 209.85.214.195, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f195.google.com with SMTP id t18so3998255plo.0
        for <poky@lists.yoctoproject.org>; Thu, 12 Nov 2020 20:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language;
        bh=aRJcaG4uWpEXiLXwVj63qaHTFdrbtZps2Ke6ew6sirU=;
        b=W2j9ZXHx3zep6Uw6CXyXsiXL/6TApz4kZ5ss5eJ6WhH0AR1KjPOWqOWrSgHUiZBfqt
         3Y/oPp4M4TTKONyTwl33C/mVVvIfpHoQun3N2aFTfTE4clG0iCm4uS2wBIERphrTOrq2
         KOkFLEJVrM/0gsNaggiKl4O0T/b55Oec04MToybZ3zcXtz5ICmX24mG7FIWVzD4Q7viG
         MGheBGSaq4QS5BclBHwjp0os7EDLU601sEH2Vl3vPDFEPP9UDCBokL2DbeJ4Ynj/Ooqf
         CVJvXY7lX/j+EpJjyVFtvXb9ErpBaARUFXbWn8YAT6se9uYbPipt0en4kuFvlZI6qLzM
         FM+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=aRJcaG4uWpEXiLXwVj63qaHTFdrbtZps2Ke6ew6sirU=;
        b=D6T7q/GLzFbwB2gHoVSmtyN8DOO0WOHYLc03icQYIPvl+HL6LuYP1XqLE0CK/FZP1D
         j2Gb1+af84wzujHp8j/cEBVQn9TAl1VgsToxiVLzgV540w96d4IQ5IJfvMWyy0e/aDBk
         fLpEjcB+8kJIU79vBmeLP4RDEN1RQs9+OJeu/WzlOFExp1ErDHw4yOBFE8KFZ1dpUxD3
         oYeUYrZCarRJmnhIqLaEKkywD4mKm9xGmc5KNWhwKmZg+aQVnceg5s2CKtXN1JGTZX1p
         4oj1zJRaO+0hfWN+uEZdau1xOlgTPmAOVR1+zqQXEZHkQkEbjGmwcXL8hRevZqDfnxkP
         v33w==
X-Gm-Message-State: AOAM532PBxXivWQFe5y8FtG6ojiEH2GU8iMxfPiXjJUL9tJm6m82yjfk
	5kt+f8y3HMTamNHhp8JbcpZv7ZWiA0hPHg==
X-Google-Smtp-Source: ABdhPJxI10Dr4rTJqXu02AZloEdiYiDJ+eMkEWYVABHOVICtwPWm/nabrjaQv4HVT18TgM97lFF2Rg==
X-Received: by 2002:a17:902:a381:b029:d8:bdca:77dc with SMTP id x1-20020a170902a381b02900d8bdca77dcmr732030pla.14.1605243563032;
        Thu, 12 Nov 2020 20:59:23 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::e75c? ([2601:646:9200:4e0::e75c])
        by smtp.gmail.com with ESMTPSA id 35sm4686950pgp.26.2020.11.12.20.59.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 20:59:22 -0800 (PST)
Subject: Re: [poky] [PATCH v5] poky-tiny: enable section removal
To: Sinan Kaya <okaya@kernel.org>, poky@lists.yoctoproject.org
References: <20201113002727.21168-1-okaya@kernel.org>
From: "Khem Raj" <raj.khem@gmail.com>
X-Pep-Version: 2.0
Organization: HIMVIS LLC
Message-ID: <34be3f90-4b7a-a2f7-9f4e-ce2aaa1088e8@gmail.com>
Date: Thu, 12 Nov 2020 20:59:20 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201113002727.21168-1-okaya@kernel.org>
X-Groupsio-MsgNum: 12253
Content-Type: multipart/mixed;
 boundary="------------F45E37470B3377F79F5828CA"
Content-Language: en-US

--------------F45E37470B3377F79F5828CA
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 11/12/20 4:27 PM, Sinan Kaya wrote:
> Use GCC sections flags so that unused sections can be garbage
> collected at link time.
>=20
> Signed-off-by: Sinan Kaya <okaya@kernel.org>
> ---
>  meta-poky/conf/distro/poky-tiny.conf | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>=20
> diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distr=
o/poky-tiny.conf
> index c6d4b88f83d..583088185c6 100644
> --- a/meta-poky/conf/distro/poky-tiny.conf
> +++ b/meta-poky/conf/distro/poky-tiny.conf
> @@ -122,3 +122,21 @@ PNBLACKLIST[core-image-weston] =3D "not buildable w=
ith poky-tiny"
>  
>  # Disable python usage in opkg-utils since it won't build with tiny con=
fig
>  PACKAGECONFIG_remove_pn-opkg-utils =3D "python"
> +
> +CFLAGS_SECTION_REMOVAL =3D "-ffunction-sections -fdata-sections"
> +LDFLAGS_SECTION_REMOVAL =3D "-Wl,--gc-sections"
> +
> +# packages with build problems using sections
> +CFLAGS_SECTION_REMOVAL_pn-glibc =3D ""
> +LDFLAGS_SECTION_REMOVAL_pn-glibc =3D ""
> +CFLAGS_SECTION_REMOVAL_pn-cairo =3D ""
> +LDFLAGS_SECTION_REMOVAL_pn-cairo =3D ""
> +
> +# omit section removal on native builds
> +CFLAGS_SECTION_REMOVAL_class-native =3D ""
> +LDFLAGS_SECTION_REMOVAL_class-native =3D ""
> +
> +# set default for all targets
> +CFLAGS_append =3D " ${CFLAGS_SECTION_REMOVAL}"
> +LDFLAGS_append =3D " ${LDFLAGS_SECTION_REMOVAL}"
> +
>=20

I think this should be an independent .inc file in oe-core
much like lto.inc, perhaps something like size_opts.inc
and here it could just in added via a include/require directive

Could be useful for non-poky distros as well.

>=20
>=20
>=20
>=20

--------------F45E37470B3377F79F5828CA
Content-Type: application/pgp-keys;
 name="pEpkey.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="pEpkey.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=3Dsj8j
-----END PGP PUBLIC KEY BLOCK-----

--------------F45E37470B3377F79F5828CA--
