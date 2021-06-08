Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
 by mx.groups.io with SMTP id smtpd.web08.9770.1623142418332554372
 for <poky@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 01:53:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=GKI9r0d4;
 spf=pass (domain: konsulko.com, ip: 209.85.210.42, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f42.google.com with SMTP id j11-20020a9d738b0000b02903ea3c02ded8so6015388otk.5
        for <poky@lists.yoctoproject.org>; Tue, 08 Jun 2021 01:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=l11ZNJ/R4OkBXonUxRDf1m2Hw6ESxBMe8fIJDSVN8MU=;
        b=GKI9r0d4XYH/ep5X2WmW91kGPas7Z+0MvJOB5qfXDpbaHCB07nwH4kgdydcBIT+lHf
         b2hrfiHsLEFmWz21EMk55FbyBel5t1eNmeF20uh4gvYclgPNyIgWCYjoS+kKKqKwfE2O
         Tbvh6dMy7gJmCj9MgD/WzDNooDvjuzESLmw7Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=l11ZNJ/R4OkBXonUxRDf1m2Hw6ESxBMe8fIJDSVN8MU=;
        b=q/my+mMjyNMs58p/0fLzzRHvzTWEhP6EBNf3HQRA5gyM0JQTMW6R40rA3l457VPh+I
         SKBTrtr0Xyz0UfxdYgzg6wRsAiuEtjTA44UJvgvk34A9tUpqMj97bW1yFBho66DD0vC+
         wqqot8zqVV0na/n3kzbkCulL3POcEJzc75/XY3LWXI46VR9/oybAMkKPXWCyInEcxjiH
         WxQh1XA7HF0CbLjzDV5BsoX2cSCf7r2kXmVDmk2CbJ1f9rZ9Ik3r82UPh7U6SJRZZip5
         2hBwqyhvew95W9rfr9ib8Nb9DOqjL98wkbZP3xdb6YqyfDczfZBpWmBWHn9RGH+p/Jzv
         owag==
X-Gm-Message-State: AOAM533wiSmBYHrU0rk+2hFVQNOkVKPTU8CvlA+/sASlSBSoQ1zFBTBz
	v10Cx6qVhR2C0VvVmE1Rvf9qcrG+pYY9O0ECPRK6TA==
X-Google-Smtp-Source: ABdhPJwi7NHY20MKLJei/XEakQX1qKG7rANdhcFaX5COs8PkCUjUZIP1Np2LrLyH0BUkoHUy5g9XGqEZpwVXyz7/R8c=
X-Received: by 2002:a9d:443:: with SMTP id 61mr11666046otc.305.1623142417528;
 Tue, 08 Jun 2021 01:53:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210607152809.3071859-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20210607152809.3071859-1-richard.purdie@linuxfoundation.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Tue, 8 Jun 2021 09:53:28 +0100
Message-ID: <CAM9ZRVsCsog4x5OHaq9zsWiJXuG0dzvsUq6x3KR48HpBrzuWRg@mail.gmail.com>
Subject: Re: [poky] [PATCH] README.poky: Update to switch to markdown format and update
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I've given this a quick review for markdown usage, hopefully some of
these comments are useful. I recommend checking with
https://github.com/markdownlint/markdownlint to help find subtle
syntax errors which might trip up the rendering.

On Mon, 7 Jun 2021 at 16:30, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> --- a/meta-poky/README.poky
> +++ b/meta-poky/README.poky
> @@ -1,35 +1,19 @@
> -Poky
> -=3D=3D=3D=3D
> +#Poky

Underlining with =3D characters is still supported for h1 headings if
this is preferred.

>
> -Poky is an integration of various components to form a complete prepacka=
ged
> -build system and development environment. It features support for buildi=
ng
> -customised embedded device style images. There are reference demo images
> -featuring a X11/Matchbox/GTK themed UI called Sato. The system supports
> -cross-architecture application development using QEMU emulation and a
> -standalone toolchain and SDK with IDE integration.
> +Poky is an integration of various components to form pre-packaged build =
system and development environment which is used as a development and valid=
ation tool by the [Yocto Project](http://www.yoctoproject.org/ "Yocto Proje=
ct"). It features support for building customised embedded style device ima=
ges and custom containers. There are reference demo images ranging from X11=
/GTK+ to Weston, commandline and more. The system supports cross-architectu=
re application development using QEMU emulation and a standalone toolchain =
and SDK suitable for IDE integration.

You should be able to hard wrap these lines at a reasonable length in
the source file and they should still be rendered into a single nicely
flowed paragraph by most markdown processors.

>
> -Additional information on the specifics of hardware that Poky supports
> -is available in README.hardware. Further hardware support can easily be =
added
> -in the form of layers which extend the systems capabilities in a modular=
 way.
> +Additional information on the specifics of hardware that Poky supports i=
s available in README.hardware. Further hardware support can easily be adde=
d in the form of BSP layers which extend the systems capabilities in a modu=
lar way. Many layers are available and can be found through the [layer inde=
x](https://layers.openembedded.org/ "layer index").

The link title is intended to be rendered as a tooltip when hovering
over the link so it's not needed unless it adds extra information. See
the example in https://www.markdownguide.org/basic-syntax/#adding-titles.
So this could just be [layer index](https://layers.openembedded.org/).
The same applies for other links below.

>
> -As an integration layer Poky consists of several upstream projects such =
as
> -BitBake, OpenEmbedded-Core, Yocto documentation and various sources of i=
nformation
> -e.g. for the hardware support. Poky is in turn a component of the Yocto =
Project.
> +As an integration layer Poky consists of several upstream projects such =
as  [BitBake](https://git.openembedded.org/bitbake/ "BitBake"), [OpenEmbedd=
ed-Core](https://git.openembedded.org/openembedded-core/ "OpenEmbedded-Core=
"), [Yocto documentation](http://git.yoctoproject.org/cgit.cgi/yocto-docs/ =
"Yocto documentation"), the '[meta-yocto](http://git.yoctoproject.org/cgit.=
cgi/meta-yocto/ "meta-yocto")' layer which has configuration and hardware s=
upport components. These components are all part of the Yocto Project and O=
penEmbedded ecosystems.
>
> -The Yocto Project has extensive documentation about the system including=
 a
> -reference manual which can be found at:
> -    http://yoctoproject.org/documentation
> +The Yocto Project has extensive documentation about the system including=
 a  reference manual which can be found at  https://docs.yoctoproject.org/

Raw URLs usually render ok but proper syntax is to surround them in
angle brackets like <https://docs.yoctoproject.org/>.

>
> -OpenEmbedded-Core is a layer containing the core metadata for current ve=
rsions
> -of OpenEmbedded. It is distro-less (can build a functional image with
> -DISTRO =3D "") and contains only emulated machine support.
> +OpenEmbedded is the build architecture used by Poky and the Yocto projec=
t.
> +For information about OpenEmbedded, see the [OpenEmbedded website](http:=
//www.openembedded.org/ "OpenEmbedded website").
>
> -For information about OpenEmbedded, see the OpenEmbedded website:
> -    http://www.openembedded.org/
> +#Contribution Guidelines
>
> -
> -Contribution Guidelines
> -=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

These should be h2 headings which can be achieved by underlining with
- characters or using two hashes. Documents render best with just one
h1 heading at the top level.

Thanks,

--=20
Paul Barker
Konsulko Group
