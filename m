Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.20003.1604260346049585589
 for <poky@lists.yoctoproject.org>;
 Sun, 01 Nov 2020 11:52:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LwzzYfyr;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com [209.85.160.193])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A7A5738C14CC
	for <poky@yoctoproject.org>; Sun,  1 Nov 2020 11:52:24 -0800 (PST)
Received: by mail-qt1-f193.google.com with SMTP id p12so571794qtp.7
        for <poky@yoctoproject.org>; Sun, 01 Nov 2020 11:52:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/2BuyWT81+v8txGfbRHG93SnvAziHzBZdzbYtWT6Rw8=;
        b=LwzzYfyr3YWUhgIBm0WHk0NhTMplpCatx5Yh82GoU/C1NaUAIs4EsPGNkN4Mm0YzbI
         e2ATfo5U6Ua6ztph+wDHcMWlOMg8cnN5WmLVmYrWNxFG/5KPgXUT/idw1+oy0/ZyyVuG
         XERS2veS+BKuzkGwV79x/sVBNv45HVIJfpVBvgMCzY1aSF2+uq+bLFIdB/ZkqrMGViIl
         h5k0xHv1LWuXMY+i4fA3T3QtLmEmGjtFnLmAWQIHVFZEjfP8n5BE91D4FUM1YPOVGloU
         bTVx0xnNN+8WzjutdIBfNl2sV4K1SkEuAJaXOVsfNlCWddkTn76SMRDwwNIr/3Bopws8
         Y7hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/2BuyWT81+v8txGfbRHG93SnvAziHzBZdzbYtWT6Rw8=;
        b=Nj77ahDBe9ZNUz46KoXnaGBWcU5O0+yHGVXYSL2ZFDaCjaTIbK0MAEdxvoC7ul3HJu
         IPBhbsHt4KJrgvTYi/8NaaoiSb7k7FVVMdW+wkt6Lt36grqDCTgCIq8h62N5eH38WDPu
         0cJLdlwXdu6RWJJ+s1v2+jhWjLMSD9rs9lZk5XjD8Z8NDfwNoCnICbYard2OalitOdPB
         w8a9tq59XJHg5OpR7RykLeYQ1atNuA1E4ilK8jqD/jL5lZf5TJvnGO6crrvhP2Z5o4S/
         ND60F8detT8FrGLyXTfQD6UAbstr12nxyW6xvAmzFz7fz8hY+iyefZFvpjYlMDobkVME
         D1wA==
X-Gm-Message-State: AOAM533zPRBwHPc5mj4GPL9ZcmU8gRicrSe2fa4S1b2ojinUvmb3TxEv
	4F5zo/8Bv6ehGs64XtEaEwtR3wla+SwbIx0ebOCC91YcAxA=
X-Google-Smtp-Source: ABdhPJxvljl8aOYhZgr2MVEkXpqXob5s6yldgoB3CZg2eMiiZ39vEsujN86/Pt99ygNqYC28+g0GG1g98MqN4qTc6VM=
X-Received: by 2002:ac8:3805:: with SMTP id q5mr1843645qtb.53.1604257106046;
 Sun, 01 Nov 2020 10:58:26 -0800 (PST)
MIME-Version: 1.0
References: <20201101152249.20472-1-alex.kanavin@gmail.com>
 <52780d53-15ca-0e10-c8b0-69fec4f0bea1@gmail.com> <CANNYZj8=VaPKbCqnUEWwJLkX2P7emPNmVZDK44BxsM=PeB1xXA@mail.gmail.com>
In-Reply-To: <CANNYZj8=VaPKbCqnUEWwJLkX2P7emPNmVZDK44BxsM=PeB1xXA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 1 Nov 2020 10:58:00 -0800
Message-ID: <CAMKF1spdxM6d=m6AtwrnSD26WiGP1FLNtNyqJGrbW7AfJPOmqg@mail.gmail.com>
Subject: Re: [poky] [PATCH] mklibs: drop support for
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 1, 2020 at 10:22 AM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> Apologies, but I have no interest in custom patching, or otherwise maint=
aining mklibs - there is no evidence that anyone uses it, or if it works at=
 all (as it hasn't been tested on the AB in years, if ever), and so it has =
to go. There's been no real work on it since at least 2015.

 It ok if you don't have interest but let's not delete it. I will send
a patch to h

>
> Alex
>
> On Sun, 1 Nov 2020 at 19:07, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>>
>> On 11/1/20 7:22 AM, Alexander Kanavin wrote:
>> > This is not enabled or tested by default, and has never been
>> > ported to python 3 upstream[1], which means it doesn't work at all
>> > with plain poky. If you need it, please put it in a separate layer
>> > and/or modernize to work with py3.
>> >
>> > https://salsa.debian.org/installer-team/mklibs/-/blob/master/src/mkli=
bs
>> >
>>
>> how about trying this patch to make it work with python3? Since we use
>> mklibs as a feature highlight of tools that yocto can provide users, it=
s
>> perhaps good to keep it working.
>>
>> https://uclibc.org/~kraj/0001-mklib-Port-to-use-python3.patch
>>
>>
>> > Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
>> > ---
>> >   meta-poky/conf/local.conf.sample          | 5 +----
>> >   meta-poky/conf/local.conf.sample.extended | 9 ---------
>> >   2 files changed, 1 insertion(+), 13 deletions(-)
>> >
>> > diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.=
conf.sample
>> > index 68e71b930b..e0ba9a35ef 100644
>> > --- a/meta-poky/conf/local.conf.sample
>> > +++ b/meta-poky/conf/local.conf.sample
>> > @@ -148,11 +148,8 @@ EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
>> >   # enable extra features. Some available options which can be includ=
ed in this variable
>> >   # are:
>> >   #   - 'buildstats' collect build statistics
>> > -#   - 'image-mklibs' to reduce shared library files size for an imag=
e
>> >   #   - 'image-prelink' in order to prelink the filesystem image
>> > -# NOTE: if listing mklibs & prelink both, then make sure mklibs is b=
efore prelink
>> > -# NOTE: mklibs also needs to be explicitly enabled for a given image=
, see local.conf.extended
>> > -USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
>> > +USER_CLASSES ?=3D "buildstats image-prelink"
>> >
>> >   #
>> >   # Runtime testing of images
>> > diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/co=
nf/local.conf.sample.extended
>> > index 62415a43ed..024bf14af5 100644
>> > --- a/meta-poky/conf/local.conf.sample.extended
>> > +++ b/meta-poky/conf/local.conf.sample.extended
>> > @@ -115,15 +115,6 @@ DISTRO_FEATURES_remove =3D "x11"
>> >   #
>> >   # TCMODE ?=3D "external-sourcery"
>> >
>> > -# mklibs library size optimization is more useful to smaller images,
>> > -# and less useful for bigger images. Also mklibs library optimizatio=
n
>> > -# can break the ABI compatibility, so should not be applied to the
>> > -# images which are to be extended or upgraded later.
>> > -#This enabled mklibs library size optimization just for the specifie=
d image.
>> > -#MKLIBS_OPTIMIZED_IMAGES ?=3D "core-image-minimal"
>> > -#This enable mklibs library size optimization will be for all the im=
ages.
>> > -#MKLIBS_OPTIMIZED_IMAGES ?=3D "all"
>> > -
>> >   # This value is currently used by pseudo to determine if the recipe=
 should
>> >   # build both the 32-bit and 64-bit wrapper libraries on a 64-bit bu=
ild system.
>> >   #
>> >
>> >
>> >
>> >=20
>> >
