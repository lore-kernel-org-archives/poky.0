Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.19905.1604258472878159824
 for <poky@lists.yoctoproject.org>;
 Sun, 01 Nov 2020 11:21:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=d47Iay3b;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: alex.kanavin@gmail.com)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 454C038C112F
	for <poky@yoctoproject.org>; Sun,  1 Nov 2020 11:21:12 -0800 (PST)
Received: by mail-yb1-f171.google.com with SMTP id a12so9842204ybg.9
        for <poky@yoctoproject.org>; Sun, 01 Nov 2020 11:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vOFBVt0WEC1VvugQYIIErZbP3D6kyqfr8PYfWA8sBrs=;
        b=d47Iay3buT0lY/90bJYdY/7UuiPisPwJ0Qs3zBRWkASdRqW7qesOtQw/skXBZ172C6
         3ojG2kV3hbj6Ok1RwM5gMQHRTdMRavEkdR/iPRBfJxArtPtpKL2i5+ryqDhNaGLVmtfn
         FCR857Mb6XlcfrVyuLw04HGA3hASngtfJMeXcuDOesZdX91nWyO2iul/szx652EF40rG
         zj2DZgAUPNw0paitrP3MIJAKvHqL+mH3KpVf842Z+61Y2Dbfx8AhqzBr2b/2rYZ9ffkk
         aQzP6RrVAMnEYEwQ8WvfV7n48Zn13KUYQELdXY82oDU/P0Asey4Uqalyas6GGqtDM1go
         ZkfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vOFBVt0WEC1VvugQYIIErZbP3D6kyqfr8PYfWA8sBrs=;
        b=hkA/Wa7y/qNhByokZS8CatDg3B8V2Mxqeot8U8Ffg/8mD6yc6qeZg6PatxAIy4kh6t
         Q3IpQljr+Jt2HuJPVPyGfn0Olbwbg71MzPY2pyvQhqecORqIBmePXpoYZwZWN2WN1POn
         PaWfSdJls5XgCF+cKAjLlrJ7jY97xIaEDb5HutHvjB+sp1ZL9JRY2EF/Ywg0NwpCQcVm
         NfgO1fHHFLqA+RRifKJoGRPqLeSexcmGYe7jRPSgOcR29UnvXW2C8/5Eh7b8DKdN20im
         k8m9zdLRLzhIgmnb6c5lJkcwVeYYAFgNqVYRXqPLlFntbI3lh15j1RyNer9aDn9blTcD
         PGRg==
X-Gm-Message-State: AOAM530+tIgzXwbH+PWc78wu4Y/pDMQ6KgI9HwykTA2WZtHV0nxWw+6M
	QQAjBMxsMXZdIIUPNuBlLY9S2iC0oaixC4S01NMWiBXuv88=
X-Google-Smtp-Source: ABdhPJzF8nU+VVRmJ7eKsTp5Jg+Nv6BVHQN5duAbxOt/j+uEj5sIzA+bhFy4IHC3yl2D+wFykC8lNQQC7hH2WWNtabg=
X-Received: by 2002:ab0:3751:: with SMTP id i17mr224848uat.71.1604254935882;
 Sun, 01 Nov 2020 10:22:15 -0800 (PST)
MIME-Version: 1.0
References: <20201101152249.20472-1-alex.kanavin@gmail.com> <52780d53-15ca-0e10-c8b0-69fec4f0bea1@gmail.com>
In-Reply-To: <52780d53-15ca-0e10-c8b0-69fec4f0bea1@gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 1 Nov 2020 19:22:04 +0100
Message-ID: <CANNYZj8=VaPKbCqnUEWwJLkX2P7emPNmVZDK44BxsM=PeB1xXA@mail.gmail.com>
Subject: Re: [poky] [PATCH] mklibs: drop support for
To: Khem Raj <raj.khem@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000951de305b30fb573"

--000000000000951de305b30fb573
Content-Type: text/plain; charset="UTF-8"

Apologies, but I have no interest in custom patching, or otherwise
maintaining mklibs - there is no evidence that anyone uses it, or if it
works at all (as it hasn't been tested on the AB in years, if ever), and so
it has to go. There's been no real work on it since at least 2015.

Alex

On Sun, 1 Nov 2020 at 19:07, Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 11/1/20 7:22 AM, Alexander Kanavin wrote:
> > This is not enabled or tested by default, and has never been
> > ported to python 3 upstream[1], which means it doesn't work at all
> > with plain poky. If you need it, please put it in a separate layer
> > and/or modernize to work with py3.
> >
> > https://salsa.debian.org/installer-team/mklibs/-/blob/master/src/mklibs
> >
>
> how about trying this patch to make it work with python3? Since we use
> mklibs as a feature highlight of tools that yocto can provide users, its
> perhaps good to keep it working.
>
> https://uclibc.org/~kraj/0001-mklib-Port-to-use-python3.patch
>
>
> > Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> > ---
> >   meta-poky/conf/local.conf.sample          | 5 +----
> >   meta-poky/conf/local.conf.sample.extended | 9 ---------
> >   2 files changed, 1 insertion(+), 13 deletions(-)
> >
> > diff --git a/meta-poky/conf/local.conf.sample
> b/meta-poky/conf/local.conf.sample
> > index 68e71b930b..e0ba9a35ef 100644
> > --- a/meta-poky/conf/local.conf.sample
> > +++ b/meta-poky/conf/local.conf.sample
> > @@ -148,11 +148,8 @@ EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
> >   # enable extra features. Some available options which can be included
> in this variable
> >   # are:
> >   #   - 'buildstats' collect build statistics
> > -#   - 'image-mklibs' to reduce shared library files size for an image
> >   #   - 'image-prelink' in order to prelink the filesystem image
> > -# NOTE: if listing mklibs & prelink both, then make sure mklibs is
> before prelink
> > -# NOTE: mklibs also needs to be explicitly enabled for a given image,
> see local.conf.extended
> > -USER_CLASSES ?= "buildstats image-mklibs image-prelink"
> > +USER_CLASSES ?= "buildstats image-prelink"
> >
> >   #
> >   # Runtime testing of images
> > diff --git a/meta-poky/conf/local.conf.sample.extended
> b/meta-poky/conf/local.conf.sample.extended
> > index 62415a43ed..024bf14af5 100644
> > --- a/meta-poky/conf/local.conf.sample.extended
> > +++ b/meta-poky/conf/local.conf.sample.extended
> > @@ -115,15 +115,6 @@ DISTRO_FEATURES_remove = "x11"
> >   #
> >   # TCMODE ?= "external-sourcery"
> >
> > -# mklibs library size optimization is more useful to smaller images,
> > -# and less useful for bigger images. Also mklibs library optimization
> > -# can break the ABI compatibility, so should not be applied to the
> > -# images which are to be extended or upgraded later.
> > -#This enabled mklibs library size optimization just for the specified
> image.
> > -#MKLIBS_OPTIMIZED_IMAGES ?= "core-image-minimal"
> > -#This enable mklibs library size optimization will be for all the
> images.
> > -#MKLIBS_OPTIMIZED_IMAGES ?= "all"
> > -
> >   # This value is currently used by pseudo to determine if the recipe
> should
> >   # build both the 32-bit and 64-bit wrapper libraries on a 64-bit build
> system.
> >   #
> >
> >
> >
> > 
> >
>

--000000000000951de305b30fb573
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Apologies, but I have no interest in custom patching,=
 or otherwise maintaining mklibs - there is no evidence that anyone uses it=
, or if it works at all (as it hasn&#39;t been tested on the AB in years, i=
f ever), and so it has to go. There&#39;s been no real work on it since at =
least 2015.<br></div><div><br></div><div>Alex<br></div></div><br><div class=
=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, 1 Nov 2020 =
at 19:07, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bla=
nk">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><br>
<br>
On 11/1/20 7:22 AM, Alexander Kanavin wrote:<br>
&gt; This is not enabled or tested by default, and has never been<br>
&gt; ported to python 3 upstream[1], which means it doesn&#39;t work at al=
l<br>
&gt; with plain poky. If you need it, please put it in a separate layer<br=
>
&gt; and/or modernize to work with py3.<br>
&gt; <br>
&gt; <a href=3D"https://salsa.debian.org/installer-team/mklibs/-/blob/mast=
er/src/mklibs" rel=3D"noreferrer" target=3D"_blank">https://salsa.debian.or=
g/installer-team/mklibs/-/blob/master/src/mklibs</a><br>
&gt; <br>
<br>
how about trying this patch to make it work with python3? Since we use <br=
>
mklibs as a feature highlight of tools that yocto can provide users, its <=
br>
perhaps good to keep it working.<br>
<br>
<a href=3D"https://uclibc.org/~kraj/0001-mklib-Port-to-use-python3.patch" =
rel=3D"noreferrer" target=3D"_blank">https://uclibc.org/~kraj/0001-mklib-Po=
rt-to-use-python3.patch</a><br>
<br>
<br>
&gt; Signed-off-by: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@g=
mail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0meta-poky/conf/local.conf.sample=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 | 5 +----<br>
&gt;=C2=A0 =C2=A0meta-poky/conf/local.conf.sample.extended | 9 ---------<b=
r>
&gt;=C2=A0 =C2=A02 files changed, 1 insertion(+), 13 deletions(-)<br>
&gt; <br>
&gt; diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.=
conf.sample<br>
&gt; index 68e71b930b..e0ba9a35ef 100644<br>
&gt; --- a/meta-poky/conf/local.conf.sample<br>
&gt; +++ b/meta-poky/conf/local.conf.sample<br>
&gt; @@ -148,11 +148,8 @@ EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks&quo=
t;<br>
&gt;=C2=A0 =C2=A0# enable extra features. Some available options which can=
 be included in this variable<br>
&gt;=C2=A0 =C2=A0# are:<br>
&gt;=C2=A0 =C2=A0#=C2=A0 =C2=A0- &#39;buildstats&#39; collect build statis=
tics<br>
&gt; -#=C2=A0 =C2=A0- &#39;image-mklibs&#39; to reduce shared library file=
s size for an image<br>
&gt;=C2=A0 =C2=A0#=C2=A0 =C2=A0- &#39;image-prelink&#39; in order to preli=
nk the filesystem image<br>
&gt; -# NOTE: if listing mklibs &amp; prelink both, then make sure mklibs =
is before prelink<br>
&gt; -# NOTE: mklibs also needs to be explicitly enabled for a given image=
, see local.conf.extended<br>
&gt; -USER_CLASSES ?=3D &quot;buildstats image-mklibs image-prelink&quot;<=
br>
&gt; +USER_CLASSES ?=3D &quot;buildstats image-prelink&quot;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0#<br>
&gt;=C2=A0 =C2=A0# Runtime testing of images<br>
&gt; diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/co=
nf/local.conf.sample.extended<br>
&gt; index 62415a43ed..024bf14af5 100644<br>
&gt; --- a/meta-poky/conf/local.conf.sample.extended<br>
&gt; +++ b/meta-poky/conf/local.conf.sample.extended<br>
&gt; @@ -115,15 +115,6 @@ DISTRO_FEATURES_remove =3D &quot;x11&quot;<br>
&gt;=C2=A0 =C2=A0#<br>
&gt;=C2=A0 =C2=A0# TCMODE ?=3D &quot;external-sourcery&quot;<br>
&gt;=C2=A0 =C2=A0<br>
&gt; -# mklibs library size optimization is more useful to smaller images,=
<br>
&gt; -# and less useful for bigger images. Also mklibs library optimizatio=
n<br>
&gt; -# can break the ABI compatibility, so should not be applied to the<b=
r>
&gt; -# images which are to be extended or upgraded later.<br>
&gt; -#This enabled mklibs library size optimization just for the specifie=
d image.<br>
&gt; -#MKLIBS_OPTIMIZED_IMAGES ?=3D &quot;core-image-minimal&quot;<br>
&gt; -#This enable mklibs library size optimization will be for all the im=
ages.<br>
&gt; -#MKLIBS_OPTIMIZED_IMAGES ?=3D &quot;all&quot;<br>
&gt; -<br>
&gt;=C2=A0 =C2=A0# This value is currently used by pseudo to determine if =
the recipe should<br>
&gt;=C2=A0 =C2=A0# build both the 32-bit and 64-bit wrapper libraries on a=
 64-bit build system.<br>
&gt;=C2=A0 =C2=A0#<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
</blockquote></div>

--000000000000951de305b30fb573--
