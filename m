Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.110023.1673370636423912663
 for <poky@lists.yoctoproject.org>;
 Tue, 10 Jan 2023 09:10:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=fZ/CnV2A;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id i17-20020a05600c355100b003d99434b1cfso10639191wmq.1
        for <poky@lists.yoctoproject.org>; Tue, 10 Jan 2023 09:10:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fiSewnIVv984sJVPYOAzw38uu3EVkB97WAqkFiET9H8=;
        b=fZ/CnV2AOL3vtFM7lOs8i7d5BSYugB3vEkwXSaC8AH4K3BWvy1l6lCrXxolOzSCEAL
         ponUJvt0t8VtBodQRwdiO8gUkBiBaeuXXfEj2jrGFSFqA3iQWL//HvnG4O+RG9anF8Fv
         SdoZ7OKZObFOuRx12m+Ar954vX49xcmN9+ytQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fiSewnIVv984sJVPYOAzw38uu3EVkB97WAqkFiET9H8=;
        b=b/SHWhINQs9C6ibU4IWKVOQvQ96ZVMGT/p45F6UrqqaC8XYo0jhGP1aKNmTj1OkjOO
         9FPFbHAqRFiO/xjE3VQWSH+S/QKnyVP8S43rIcM2buwmT4vnXlnL1ZtnVnLgK6JOfzoQ
         NLvoYbbY0oeS8gZaTGLrEBz+c/Uhj1hNtsB3655aP0mKLuKEs+2D/CU7Kgr0UCg9625o
         SmbGERp4SPbOLLyPaeE1DIxv873yydKlIvs4Th8oyaB5bIzkJmz2Hg7CpxfPqOqg7BYa
         HjvhmmcjVAq/UUkZuSBDjHwKJlxM7C26FEkoL8GDTgmZGsWZlptVcHF5REw0t327+2hO
         6RVQ==
X-Gm-Message-State: AFqh2krdc01+WIWwZNRBiEjQPl3pMU8Sir1rGfLKxUGiY1MqFlFtfwfA
	kXWjCFBzAu/U9S7zbszebH7PsA==
X-Google-Smtp-Source: AMrXdXupFVO5Vd1zuRFKEtZqZHPI2DLQXEWhixne5z6mCOtW2jMxewfAJiQve8uJG2mnMNiFh993wQ==
X-Received: by 2002:a05:600c:b8b:b0:3d9:f8a1:2bde with SMTP id fl11-20020a05600c0b8b00b003d9f8a12bdemr2454497wmb.18.1673370634864;
        Tue, 10 Jan 2023 09:10:34 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:ef35:464f:aac3:7a? ([2001:8b0:aba:5f3c:ef35:464f:aac3:7a])
        by smtp.gmail.com with ESMTPSA id n9-20020a05600c4f8900b003d96b8e9bcasm22249563wmq.32.2023.01.10.09.10.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 09:10:34 -0800 (PST)
Message-ID: <64e0c6f14b7e0a96bb31c68d787d4f4d89af1c38.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky.conf: Switch to post release name/version
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, 
	"poky@lists.yoctoproject.org"
	 <poky@lists.yoctoproject.org>
Date: Tue, 10 Jan 2023 17:10:33 +0000
In-Reply-To: <98c150c64275429cabad3e6de72ab727@axis.com>
References: <20230110151811.2602621-1-pkj@axis.com>
	 <4f064e6c849b715805f4217d8c63563bb05e19c5.camel@linuxfoundation.org>
	 <98c150c64275429cabad3e6de72ab727@axis.com>
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2023-01-10 at 16:49 +0000, Peter Kjellerstedt wrote:
> > -----Original Message-----
> > From: Richard Purdie <richard.purdie@linuxfoundation.org>
> > Sent: den 10 januari 2023 16:21
> > To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>;
> > poky@lists.yoctoproject.org
> > Subject: Re: [poky] [PATCH] poky.conf: Switch to post release
> > name/version
> >=20
> > On Tue, 2023-01-10 at 16:18 +0100, Peter Kjellerstedt wrote:
> > > Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > > ---
> > > =C2=A0meta-poky/conf/distro/poky.conf | 5 ++---
> > > =C2=A01 file changed, 2 insertions(+), 3 deletions(-)
> > >=20
> > > diff --git a/meta-poky/conf/distro/poky.conf b/meta-
> > > poky/conf/distro/poky.conf
> > > index dc0e8e76ab..a876ddde94 100644
> > > --- a/meta-poky/conf/distro/poky.conf
> > > +++ b/meta-poky/conf/distro/poky.conf
> > > @@ -1,8 +1,7 @@
> > > =C2=A0DISTRO =3D "poky"
> > > =C2=A0DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
> > > -#DISTRO_VERSION =3D "4.1+snapshot-${METADATA_REVISION}"
> > > -DISTRO_VERSION =3D "4.1"
> > > -DISTRO_CODENAME =3D "langdale"
> > > +DISTRO_VERSION =3D "4.2+snapshot-${METADATA_REVISION}"
> > > +DISTRO_CODENAME =3D "mickledore"
> > > =C2=A0SDK_VENDOR =3D "-pokysdk"
> > > =C2=A0SDK_VERSION =3D "${@d.getVar('DISTRO_VERSION').replace('snapsho=
t-
> > > ${METADATA_REVISION}', 'snapshot')}"
> > > =C2=A0SDK_VERSION[vardepvalue] =3D "${SDK_VERSION}"
> >=20
> > The codename change is ok but the version is not 4.2 plus something
> > since we haven't released 4.2 yet.
> >=20
> > Cheers,
> >=20
> > Richard
>=20
> I just followed how you did it in commit=20
> e6f4a7f76b8a60f365a111e0b38d6d5090a0b003 for Langdale...

The key difference is probably the timing, was that post release or
close to it?

Cheers,

Richard


