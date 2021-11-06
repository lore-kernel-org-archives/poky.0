Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web09.17368.1636193660427450592
 for <poky@lists.yoctoproject.org>;
 Sat, 06 Nov 2021 03:14:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hGdNxr03;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: leif.middelschulte@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id c8so25060623ede.13
        for <poky@lists.yoctoproject.org>; Sat, 06 Nov 2021 03:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=za23lPNEOHQicmRP3DD+FIGvaIkb6XLZOKV9kyvFrxg=;
        b=hGdNxr03TYYtjE+bFpRUR7qiXUSrH4Qb5TNv07wYelgQnfIoqrDC+APkgFPiC09vQt
         uhRv6ND+ej3T9RNKALz9BpUB7tbXOK3RBI8N8bvakk7ahImGXm0Tc2krvD0232mYITJz
         tLbKMMrNRoJLTbfxwoYw3JHB8wIKpD0fTCIuXjaEfQbiCmscgG/7A9xjagSZIfkCypRD
         j/EAGZon99Ze5ZOlWBo25xN5ZjR8Uk7K8NxIML9pHk5aKOJc96+mDFjHoH+d2uZ1Sfb9
         hj5BUQ3XJA1UAroQ4NhgWAHLobNC642pKGw92eTNfxNSZ3bUnbe+GDsqD4qGj840rbVm
         q4Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=za23lPNEOHQicmRP3DD+FIGvaIkb6XLZOKV9kyvFrxg=;
        b=34w2d/4iUUhZhIirsndw6ywB7Yw9Wcig1J0JdJOBKw+idPjOyxyFVONSMj3DcWhNtc
         iZrS2f3p6AM8iSFQpLrY/vWqUD01YISrdiJIU7lJQ/OCessQxv1kB50LYLAMA8181MoI
         yD2KtuwWSd/sYo4DOLKAzeBVKogK8UoNOKsukbieMQYETfNA6DtubmqAYca3KOd7uhez
         qV/qL6eObY9ebo7Tk9AjxMtqd/aIAA0wbD7j0WGGdKaM83TcCpsRpGyYF2BCP9MqjD+y
         p17xYYNlKbzOfQeb/nXeG1m5YtkIladxv4BxoNASHlUWmn9f6JrMdkEbQOdCuXKVDSq5
         cogA==
X-Gm-Message-State: AOAM530NdMUXNbDlbKESJtmJW7xfiEg6UhBBIMJofxXpLDR1HdY7lMFR
	Py+qD6QnB/lRPD8GAyTWyJRK/fKTwae6UQF3p1c=
X-Google-Smtp-Source: ABdhPJwFX0VHCpwf20eoOFn4aD9cPjLZU/Uq2KxC5JwkCFpAjEelZHPiMt0xPnTJJgI34nQnzuAvmDNW6UGEpSZ18Us=
X-Received: by 2002:a05:6402:2756:: with SMTP id z22mr48707668edd.88.1636193658930;
 Sat, 06 Nov 2021 03:14:18 -0700 (PDT)
MIME-Version: 1.0
References: <873EB729-5CCC-4B12-B45D-B9D481D38E89@gmail.com> <daa53f916bec48be39888a64d2c542f712933f73.camel@linuxfoundation.org>
In-Reply-To: <daa53f916bec48be39888a64d2c542f712933f73.camel@linuxfoundation.org>
From: "Leif Middelschulte" <leif.middelschulte@gmail.com>
Date: Sat, 6 Nov 2021 11:13:43 +0100
Message-ID: <CANw0+A_93EiyU1cBQVOqm-=sdwBneqjMOCW8BFRXN9cER9oiJw@mail.gmail.com>
Subject: Re: [poky] [PATCH] meson: make https:// wrap source downloads work
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org, 
	Leif Middelschulte <Leif.Middelschulte@klsmartin.com>
Content-Type: text/plain; charset="UTF-8"

Am Sa., 6. Nov. 2021 um 11:07 Uhr schrieb Richard Purdie
<richard.purdie@linuxfoundation.org>:
>
> On Sat, 2021-11-06 at 10:47 +0100, Leif Middelschulte wrote:
> > Meson would fail to fetch wraps' sources on bare systems (i.e. docker images),
> > that only provide little more than the SDK.
> >
> > The SDK's SSL directory was not searched, so meson would fail when it tried
> > to fetch sources via https, that were specified in wrap files.
> > Specifically `urllib` would fail:
> > ```
> > <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed: unable to get local issuer certificate (_ssl.c:1129)>
> > ```
> >
> > Caution: this patch depends on the underlying C library (i.e. openssl)
> > to consider this environment variable.
> >
> > Signed-off-by: Leif Middelschulte <Leif.Middelschulte@klsmartin.com>
> > ---
> > meta/recipes-devtools/meson/meson/meson-wrapper | 4 ++++
> > 1 file changed, 4 insertions(+)
> >
> > diff --git a/meta/recipes-devtools/meson/meson/meson-wrapper b/meta/recipes-devtools/meson/meson/meson-wrapper
> > index d4b5187f8d..8fafaad975 100755
> > --- a/meta/recipes-devtools/meson/meson/meson-wrapper
> > +++ b/meta/recipes-devtools/meson/meson/meson-wrapper
> > @@ -4,6 +4,10 @@ if [ -z "$OECORE_NATIVE_SYSROOT" ]; then
> >     echo "OECORE_NATIVE_SYSROOT not set; are you in a Yocto SDK environment?" >&2
> > fi
> >
> > +if [ -z "$SSL_CERT_DIR" ]; then
> > +    export SSL_CERT_DIR="${OECORE_NATIVE_SYSROOT}/etc/ssl/certs/"
> > +fi
> > +
> > # If these are set to a cross-compile path, meson will get confused and try to
> > # use them as native tools. Unset them to prevent this, as all the cross-compile
> > # config is already in meson.cross.
>
> Why is meson trying to fetch sources? Shouldn't this be happening in do_fetch?
This happens outside of bitbake, i.e. when users of the SDK try to
build some Meson project that uses "Wraps".
Mesons "wraps" allow its users to build software on the spot, if it is
missing in the host/target toolchain. See
https://mesonbuild.com/Using-the-WrapDB.html
>
> Cheers,
>
> Richard
>
>
Thanks for the feedback,

Leif
