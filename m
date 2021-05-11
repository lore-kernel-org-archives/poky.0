Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web09.12483.1620737949662783650
 for <poky@lists.yoctoproject.org>;
 Tue, 11 May 2021 05:59:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fNQUtR9G;
 spf=pass (domain: gmail.com, ip: 209.85.210.50, mailfrom: proclivis@gmail.com)
Received: by mail-ot1-f50.google.com with SMTP id u25-20020a0568302319b02902ac3d54c25eso17423567ote.1
        for <poky@lists.yoctoproject.org>; Tue, 11 May 2021 05:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=N8gqc19vXHpFcpqR+mGrPyDVT+saZ7T5ZcLskJRLJ14=;
        b=fNQUtR9Gw+mFoNaTsUYCa6wlXeICPwpbY+9C5ol23WNq+V6qbfH4WzZhuy4CPa9nEd
         IY3E2ZDr1cYmmclZ+I4JedcRqsa0vfZ/BkHjo3ECNyfV8GPuhsKbU7YLSXcWOmt8MoIl
         RCH3EV27tlTkFavJBLd0EbOQh9fDgcmjERa3W8oyACyYsN14uwe1Tg4uQhrb84VGNViH
         sxrDqXO1kA2F7VFa5Xx9AsKRRCmwMeqMgjyu0eF0BVS6O1EHD+JwEuLSK+hfQxkF6NNB
         U1b4zGqC2LH3b7brauWRjOcRl3UbkjjKk2T1bYNE+WQ6UB5a8AC2RdsQo2Vl9B7YTAph
         bYCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=N8gqc19vXHpFcpqR+mGrPyDVT+saZ7T5ZcLskJRLJ14=;
        b=UEQxWO7hCFemPJ+4/F4h7M5lRMebqI6s887AM5nueUDJSbjVBcHKLSQvYgjMB0vSTx
         fdf4L0xtocSUuG6tF9MjYkNsca31frMCULKlFO9kHXAq0So2Nlw0d6F2vzoeyyzu9MhF
         06oghPKsgU82bs03EOupSrtefyWriGmunnk80qNj07H9+33gqEF++6lVIz2S8yMoAGyq
         itTkMjIJXgr/EokauOemzwUfU6j66TroHf3SzJRHCcfxKjtrkULb9JXnrTMld8LApzac
         WTdckhHr/O0isLp0k5QptEFtQgbjSx2xmapE4ZrJDwN+36Alqp4UxGZnxeMed5vlKLQ5
         3fcg==
X-Gm-Message-State: AOAM530IwPjoRpk+aagRiAouoeEYRMezFodfBrzoVnb//Mpfp3KtDBZz
	u/74wDsk0/oyix5J3ynZ6CNu99y/Kx4=
X-Google-Smtp-Source: ABdhPJyPpdS3QKgTr4z2KJg3jWLPeZPfyf6DPscGYx5+jnbScdwL1vnuK4YVnwyh12DBP5QS3ypJVQ==
X-Received: by 2002:a05:6830:12d6:: with SMTP id a22mr17729053otq.66.1620737948794;
        Tue, 11 May 2021 05:59:08 -0700 (PDT)
Return-Path: <proclivis@gmail.com>
Received: from ?IPv6:2600:100e:b032:813a:b00e:bf52:ab03:6382? ([2600:100e:b032:813a:b00e:bf52:ab03:6382])
        by smtp.gmail.com with ESMTPSA id u14sm3238268oif.41.2021.05.11.05.59.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 May 2021 05:59:08 -0700 (PDT)
From: "Mike Jones" <proclivis@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [poky] win create failing at mcopy #poky #raspberrypi
Date: Tue, 11 May 2021 06:59:07 -0600
Message-Id: <C82CFF0E-8E4A-49C5-BEAE-196EBC955B98@gmail.com>
References: <62b03298c9cf2b0534b42e6a9cd35c642f20fbb0.camel@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
In-Reply-To: <62b03298c9cf2b0534b42e6a9cd35c642f20fbb0.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: iPad Mail (18D70)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On May 11, 2021, at 4:20 AM, Richard Purdie <richard.purdie@linuxfoundat=
ion.org> wrote:
>=20
> =EF=BB=BFOn Mon, 2021-05-10 at 18:54 -0600, Mike Jones wrote:
>> I have a little more info on this and a more specific question.
>>=20
>> I copied the mtools code and hooked it into the layer so I could put in=
 debug statements.
>>=20
>> The problem occurs in charsetConv.c in the function cp_open, when it tr=
ies to do an iconv_open using
>> =E2=80=9CCP850=E2=80=9D, which fails.
>>=20
>> I ran =E2=80=9Ciconv =E2=80=94list=E2=80=9D to see what it can convert,=
 and CP850 is not listed.
>>=20
>> To prove this is the problem, I hardcoded the iconv_open with =E2=80=9C=
ASCII=E2=80=9D and bit bake can go all the way
>> through and =E2=80=9Cwic create=E2=80=9D works properly.
>>=20
>> So I ran iconv =E2=80=94version and saw it was =E2=80=9CGNU libc 2.31=
=E2=80=9D so I poked around those layers.
>>=20
>> Best I can guess is this line from the mtools layer should tell the lib=
c to provide CP850 via this line:
>>=20
>> RDEPENDS_${PN}_libc-glibc =3D "glibc-gconv-ibm850=E2=80=9D
>>=20
>> Except that that is for runtime, and this is build time.
>>=20
>> So I am not sure how glibc decides what converters are used. Is it just=
 a set of defaults? Is there a layer
>> somewhere defining them I could not find?
>>=20
>> It seems that somewhere along the way, mtools changed its default to us=
e 850, and it is not compatible
>> anymore.
>>=20
>> The solution is probably to tell glibc to provide CP850.
>>=20
>> Does anyone know how to do that?
>=20
> Which version of Yocto Project are you using? Are you using buildtools-t=
arball=20
> or uninative in your build?

I run poky/scripts/install-buildtools with no command line options.

It contains these defaults:

DEFAULT_INSTALL_DIR =3D os.path.join(os.path.split(scripts_path)[0],'build=
tools')
DEFAULT_BASE_URL =3D 'http://downloads.yoctoproject.org/releases/yocto'
DEFAULT_RELEASE =3D 'yocto-3.2_M3'
DEFAULT_INSTALLER_VERSION =3D '3.1+snapshot'
DEFAULT_BUILDDATE =3D '20200923'

I see I can use command line options to use a different release if you hav=
e guidance on what to use.

Mike

>=20
> I suspect you need a newer buildtools-tarball version which includes CP8=
50.
>=20
> Cheers,
>=20
> Richard
>=20
