Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.9232.1673392670439025376
 for <poky@lists.yoctoproject.org>;
 Tue, 10 Jan 2023 15:17:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gwBhJMyr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id k22-20020a05600c1c9600b003d1ee3a6289so11314649wms.2
        for <poky@lists.yoctoproject.org>; Tue, 10 Jan 2023 15:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5rWPfrJzJqmxK0UGWyMOPw7ukoEU+TbSjqmVdBk67E8=;
        b=gwBhJMyr2mM93QUnCFz5g9zaZHhMrx/VwgyksPeHjvVKU0Ierv7YcSX5u9kFOwVjjm
         GzhBBR3aC4d6YCncszMt2dsQXda9+4aWD0uK68V2X3v0e9PNrUeXm9NEcJ0XvPaWLav4
         HKHSLXdTWF6rA3Gd7BqoszGiVp0cuHVLJmWpI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5rWPfrJzJqmxK0UGWyMOPw7ukoEU+TbSjqmVdBk67E8=;
        b=qIebWOr6+WJFRnMXc3y8ArMVOMUhXALGFFVGHKHVRW4DFK4G3BvHUeOYJFfO2lznrI
         YNOCVfOCIHLWa8d4oDeuK75O+tAVqUbJtJYV3XL4fHThnBkwoDNXh1k1PBiMr4+YrQOn
         JyJXCLuWyzzEXyRKASZDzrIlxsv+wx73KfItEpSL0KPWuwVPXU6RlTNhiL3yYR93wfCa
         ygrRvanpnM4A/tyDal9aTn881hqawaFwZ+MMu9E7izfXbPxgiF1EwBQRQP0/svjIy+vG
         wPHnDCjLAJmW2ZFbcjnE5xOyOyQfeoQGtEIBdyh3vckbS7Eb2LZimRxzXKR8gKliLRK0
         VS5A==
X-Gm-Message-State: AFqh2kqv1FcNtzHYdUimf1ll1zjvVY00hVgzyjkyyingSgfFNqNgeCNA
	L7TZNepkvSgxVEWwZD6zFaxiGQ==
X-Google-Smtp-Source: AMrXdXtFx38iW8cDTYzQdMDUwn6NVGodcJ+AAc7PleFMqX6I6zIQKq/AVFUGZ+aLMoZlcaWjxLrhhw==
X-Received: by 2002:a05:600c:3c93:b0:3d9:ed30:79d with SMTP id bg19-20020a05600c3c9300b003d9ed30079dmr8042917wmb.18.1673392668601;
        Tue, 10 Jan 2023 15:17:48 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:a11f:4d56:748b:c178? ([2001:8b0:aba:5f3c:a11f:4d56:748b:c178])
        by smtp.gmail.com with ESMTPSA id z14-20020a05600c220e00b003d99fad7511sm15728798wml.22.2023.01.10.15.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 15:17:48 -0800 (PST)
Message-ID: <7f2900540a6b3a9d0cf3de8dc2d6768a81de6698.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky.conf: Switch to post release name/version
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, 
	"poky@lists.yoctoproject.org"
	 <poky@lists.yoctoproject.org>
Date: Tue, 10 Jan 2023 23:17:47 +0000
In-Reply-To: <33ba89a705bd4002af6bcd0fbd298d89@axis.com>
References: <20230110151811.2602621-1-pkj@axis.com>
	 <4f064e6c849b715805f4217d8c63563bb05e19c5.camel@linuxfoundation.org>
	 <98c150c64275429cabad3e6de72ab727@axis.com>
	 <64e0c6f14b7e0a96bb31c68d787d4f4d89af1c38.camel@linuxfoundation.org>
	 <33ba89a705bd4002af6bcd0fbd298d89@axis.com>
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2023-01-10 at 20:36 +0000, Peter Kjellerstedt wrote:
> > -----Original Message-----
> > From: Richard Purdie <richard.purdie@linuxfoundation.org>
> > Sent: den 10 januari 2023 18:11
> > To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>;
> > poky@lists.yoctoproject.org
> > Subject: Re: [poky] [PATCH] poky.conf: Switch to post release
> > name/version
> >=20
> > On Tue, 2023-01-10 at 16:49 +0000, Peter Kjellerstedt wrote:
> > > > -----Original Message-----
> > > > From: Richard Purdie <richard.purdie@linuxfoundation.org>
> > > > Sent: den 10 januari 2023 16:21
> > > > To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>;
> > > > poky@lists.yoctoproject.org
> > > > Subject: Re: [poky] [PATCH] poky.conf: Switch to post release
> > > > name/version
> > > >=20
> > > > On Tue, 2023-01-10 at 16:18 +0100, Peter Kjellerstedt wrote:
> > > > > Signed-off-by: Peter Kjellerstedt
> > > > > <peter.kjellerstedt@axis.com>
> > > > > ---
> > > > > =C2=A0meta-poky/conf/distro/poky.conf | 5 ++---
> > > > > =C2=A01 file changed, 2 insertions(+), 3 deletions(-)
> > > > >=20
> > > > > diff --git a/meta-poky/conf/distro/poky.conf b/meta-
> > > > > poky/conf/distro/poky.conf
> > > > > index dc0e8e76ab..a876ddde94 100644
> > > > > --- a/meta-poky/conf/distro/poky.conf
> > > > > +++ b/meta-poky/conf/distro/poky.conf
> > > > > @@ -1,8 +1,7 @@
> > > > > =C2=A0DISTRO =3D "poky"
> > > > > =C2=A0DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
> > > > > -#DISTRO_VERSION =3D "4.1+snapshot-${METADATA_REVISION}"
> > > > > -DISTRO_VERSION =3D "4.1"
> > > > > -DISTRO_CODENAME =3D "langdale"
> > > > > +DISTRO_VERSION =3D "4.2+snapshot-${METADATA_REVISION}"
> > > > > +DISTRO_CODENAME =3D "mickledore"
> > > > > =C2=A0SDK_VENDOR =3D "-pokysdk"
> > > > > =C2=A0SDK_VERSION =3D
> > > > > "${@d.getVar('DISTRO_VERSION').replace('snapshot-
> > > > > ${METADATA_REVISION}', 'snapshot')}"
> > > > > =C2=A0SDK_VERSION[vardepvalue] =3D "${SDK_VERSION}"
> > > >=20
> > > > The codename change is ok but the version is not 4.2 plus
> > > > something
> > > > since we haven't released 4.2 yet.
> > > >=20
> > > > Cheers,
> > > >=20
> > > > Richard
> > >=20
> > > I just followed how you did it in commit
> > > e6f4a7f76b8a60f365a111e0b38d6d5090a0b003 for Langdale...
> >=20
> > The key difference is probably the timing, was that post release or
> > close to it?
> >=20
> > Cheers,
> >=20
> > Richard
>=20
> It was relatively soon after the 4.0 release (about 150 commits in
> poky).
> It was done 1702 commits before the 4.1 release:
>=20
> $ git describe --contains 07c627645da0785acb54a635acfd8593f9118135 --
> match=3D'yocto-*'
> yocto-4.1~1702

Sounds like I got it wrong then but it makes sense the revision is
4.1+XXX until 4.2 is released.

Cheers,

Richard
