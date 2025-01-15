Return-Path: <simon.eu@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505C3C02180
	for <webhook@archiver.kernel.org>; Wed, 15 Jan 2025 08:15:27 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.16359.1736928921693049021
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Jan 2025 00:15:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SLMc9Vrn;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: simon.eu@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2ee76befe58so10597494a91.2
        for <poky@lists.yoctoproject.org>; Wed, 15 Jan 2025 00:15:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736928921; x=1737533721; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wHy5fYWU5hSrZiPjz/cRAZdlEIdJ6rzOiNm1AqpNRDM=;
        b=SLMc9VrnsnvsnpDERHekQV9FtKJikbaIDJKSEPRUKrg3Y1NLMczbcrz7rSQ3DaH4St
         Zbyx933vX7tSj/K9KTitvhr/TKwdL6+hYTfLveTNrYj5GEAIw0FUWjEzKAVOvk/H0+Ks
         05KL5yvVl7dCdREonhg3SGLK8+KswZT8zabuLxqrew3nxTMsWIxp1AjAQazeYLS9wC+Y
         B7HNxfDbGCzIepHqLRInrYHDoSf3RUiZ9wBubsWGKQVkKQwzVBrrp9UBCWD510IFlBqh
         U0B8iA/IRjfZAR+ydVq7PeFIOipi3WGpPaYyKTdEC7lONCCtfCt0Ox5m+rVg+rgJH76x
         mBLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736928921; x=1737533721;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wHy5fYWU5hSrZiPjz/cRAZdlEIdJ6rzOiNm1AqpNRDM=;
        b=ufIyugFiQmTfhBAhiODi3DdHWWRZbRrRT8t1TiGBg29jQSlSw6ls8ioQN9ZwPbCh1X
         Qd8Y4zWklkzu2iOjAYoOeMw9bvgas+ii+oRTtmoBvivzs5zCkLJq2qMdvyqqZTLqYkQG
         nPdxo9H3I4Fqns8IluyYdXfxrtqjSqTbF4/vtLG4d/+JBbo6tXFaY/Tbnk8gL0+d6byr
         zeuViqs3IOAE5fd0RqtSS2RDf26IRnzovEmG1cHkhc39AipBFL+Ju19Ts9xMYeOKWrXV
         AVIwJDyf6lCILCsSzj7/c4uCIMa8PxNcsbk6fioLAYjn2kNpZ2QWK2/NVuyUWMp0vLAA
         lE5w==
X-Gm-Message-State: AOJu0Yxo7KTwJPZi0VZO2FWkguLkNF7XNH3OtuSjFBsKkZKdYKcdUIHP
	bGB1At3gBmZ213mE8Nu3W6GdZBjbBqHoRBdQbTMWcxI5Ze7k+mPBU5mdbygXJfZXrKGYfS72uir
	NtYYV3MQl/M+BZMzZeuTy3zv4lnA=
X-Gm-Gg: ASbGncu3xylru0WZuA15dMXQ0/VOcZOa14XZ9UYN/Pd7wWq5d+eAqzBJ2vLfCO6vn+P
	hsl5aokJtB20Tqej6F43sEv6YCNmKs3zOEQCZxgQ=
X-Google-Smtp-Source: AGHT+IFsSRMNwZv7r4CBVVIQfnxsDUmlqMD7gXWpsOK7/bqJHWfBk1sTIBdnPcRe+OQkckozIxK8o7Bm6/gkG6G+RHE=
X-Received: by 2002:a17:90b:37c5:b0:2ea:3f34:f18d with SMTP id
 98e67ed59e1d1-2f548eae685mr42264598a91.10.1736928920973; Wed, 15 Jan 2025
 00:15:20 -0800 (PST)
MIME-Version: 1.0
References: <20250114161114.2731934-1-simon.eu@gmail.com> <CANNYZj_2JWnXepX4Pap2r=rhTr9+MPVOfHA=QXoD8wRSpQ1xQg@mail.gmail.com>
In-Reply-To: <CANNYZj_2JWnXepX4Pap2r=rhTr9+MPVOfHA=QXoD8wRSpQ1xQg@mail.gmail.com>
From: Simon Eugster <simon.eu@gmail.com>
Date: Wed, 15 Jan 2025 09:15:09 +0100
X-Gm-Features: AbW1kvZEeLhFwlBiFDhC2wRCtGUk1OCEh1Sp-0IkEwxSF78w9g9MQsZeQjj-ObI
Message-ID: <CAO8d5BZYhRUF6EgtMR2xthiN+fCrrRd9XhJ3ZwhqA-GRhrc+Ww@mail.gmail.com>
Subject: Re: [poky] [PATCH] grub-efi-cfg: add GRUB_TITLE for custom GRUB titles
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000055b96c062bba474f"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 15 Jan 2025 08:15:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13510

--00000000000055b96c062bba474f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex, thanks for the hint. In a few years I will probably understand
what to send to which of all those mailing lists. I'm more familiar with
modern workflows as on GitLab and similar.

I sent the separate patches to oe-core and docs.

Simon

On Tue, Jan 14, 2025 at 5:31=E2=80=AFPM Alexander Kanavin <alex.kanavin@gma=
il.com>
wrote:

> Thanks - these pieces should be split and sent to different mailing
> lists. meta/* to openembedded-core@, documentation/* to docs@
>
>
> Alex
>
> On Tue, 14 Jan 2025 at 17:11, Simon A. Eugster via
> lists.yoctoproject.org <simon.eu=3Dgmail.com@lists.yoctoproject.org>
> wrote:
> >
> > Until now, the default title of a boot entry is its label. The label is
> > a variable which determines the script to run during an early boot stag=
e
> > and is not necessarily human readable.
> >
> > This patch allows to provide a human-readable title for each boot entry=
.
> > ---
> >  documentation/ref-manual/classes.rst        | 17 ++++++++++++++++-
> >  meta/classes-recipe/grub-efi-cfg.bbclass    |  8 +++++++-
> >  meta/recipes-bsp/grub/grub-bootconf_1.00.bb |  2 +-
> >  3 files changed, 24 insertions(+), 3 deletions(-)
> >
> > diff --git a/documentation/ref-manual/classes.rst
> b/documentation/ref-manual/classes.rst
> > index 761be7b545..460f94b232 100644
> > --- a/documentation/ref-manual/classes.rst
> > +++ b/documentation/ref-manual/classes.rst
> > @@ -987,10 +987,14 @@ introspection. This functionality is only enabled
> if the
> >  The :ref:`ref-classes-grub-efi` class provides ``grub-efi``-specific
> functions for
> >  building bootable images.
> >
> > -This class supports several variables:
> > +This class supports several variables.
> > +The label specific override names are ``grub_LABEL``.
> > +To specificy an override for the label ``mylabel``, the override name
> is ``grub_mylabel``,
> > +for example ``APPEND:grub_mylabel =3D my-appends``.
> >
> >  -  :term:`INITRD`: Indicates list of filesystem images to
> >     concatenate and use as an initial RAM disk (initrd) (optional).
> > +   Can be specified for each ``LABEL``.
> >
> >  -  :term:`ROOTFS`: Indicates a filesystem image to include
> >     as the root filesystem (optional).
> > @@ -1004,6 +1008,9 @@ This class supports several variables:
> >  -  :term:`APPEND`: An override list of append strings for
> >     each ``LABEL``.
> >
> > +-  :term:`GRUB_TITLE`: A custom title for each ```LABEL``.
> > +   Defaults to ``LABEL`` if it is not defined.
> > +
> >  -  :term:`GRUB_OPTS`: Additional options to add to the
> >     configuration (optional). Options are delimited using semi-colon
> >     characters (``;``).
> > @@ -1011,6 +1018,14 @@ This class supports several variables:
> >  -  :term:`GRUB_TIMEOUT`: Timeout before executing
> >     the default ``LABEL`` (optional).
> >
> > +For the label ``factory``, a custom GRUB menu entry titled "Factory
> Install" with the additional parameter ``factory=3Dyes``
> > +can be achieved as follows::
> > +
> > +  LABELS:append =3D "factory"
> > +  APPEND:grub_factory =3D "factory=3Dyes"
> > +  GRUB_TITLE:grub_factory =3D "Factory Install"
> > +
> > +
> >  .. _ref-classes-gsettings:
> >
> >  ``gsettings``
> > diff --git a/meta/classes-recipe/grub-efi-cfg.bbclass
> b/meta/classes-recipe/grub-efi-cfg.bbclass
> > index 52e85a3bb0..9a5cb99c52 100644
> > --- a/meta/classes-recipe/grub-efi-cfg.bbclass
> > +++ b/meta/classes-recipe/grub-efi-cfg.bbclass
> > @@ -23,6 +23,7 @@ GRUB_TIMEOUT ?=3D "10"
> >  GRUB_OPTS ?=3D "serial --unit=3D0 --speed=3D115200 --word=3D8 --parity=
=3Dno
> --stop=3D1"
> >
> >  GRUB_ROOT ?=3D "${ROOT}"
> > +GRUB_TITLE ?=3D ""
> >  APPEND ?=3D ""
> >
> >  # Uses MACHINE specific KERNEL_IMAGETYPE
> > @@ -91,10 +92,15 @@ python build_efi_cfg() {
> >          if not overrides:
> >              bb.fatal('OVERRIDES not defined')
> >
> > +        localdata.need_overrides()
> >          localdata.setVar('OVERRIDES', 'grub_' + label + ':' + override=
s)
> >
> >          for btype in btypes:
> > -            cfgfile.write('\nmenuentry \'%s%s\'{\n' % (label, btype[0]=
))
> > +            title =3D localdata.getVar('GRUB_TITLE')
> > +            if not title or len(title) =3D=3D 0:
> > +                title =3D label
> > +
> > +            cfgfile.write('\nmenuentry \'%s%s\'{\n' % (title, btype[0]=
))
> >              lb =3D label
> >              if label =3D=3D "install":
> >                  lb =3D "install-efi"
> > diff --git a/meta/recipes-bsp/grub/grub-bootconf_1.00.bb
> b/meta/recipes-bsp/grub/grub-bootconf_1.00.bb
> > index 783e30bf38..7ed0877726 100644
> > --- a/meta/recipes-bsp/grub/grub-bootconf_1.00.bb
> > +++ b/meta/recipes-bsp/grub/grub-bootconf_1.00.bb
> > @@ -22,7 +22,7 @@ python do_configure() {
> >      bb.build.exec_func('build_efi_cfg', d)
> >  }
> >
> > -do_configure[vardeps] +=3D "APPEND ROOT"
> > +do_configure[vardeps] +=3D "APPEND ROOT GRUB_TITLE"
> >
> >  do_install() {
> >         install -d ${D}${EFI_FILES_PATH}
> > --
> > 2.43.0
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#13506):
> https://lists.yoctoproject.org/g/poky/message/13506
> > Mute This Topic: https://lists.yoctoproject.org/mt/110610053/1686489
> > Group Owner: poky+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--00000000000055b96c062bba474f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Alex, thanks for the hint. In a few years I will p=
robably understand what to send to which of all those mailing lists. I&#39;=
m more familiar with modern workflows as on GitLab and similar.</div><div><=
br></div><div>I sent the separate patches to oe-core and docs.<br></div><di=
v><br></div><div>Simon<br></div></div><br><div class=3D"gmail_quote gmail_q=
uote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 14, 2025 =
at 5:31=E2=80=AFPM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gma=
il.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Thanks - these pieces should be split and sen=
t to different mailing<br>
lists. meta/* to openembedded-core@, documentation/* to docs@<br>
<br>
<br>
Alex<br>
<br>
On Tue, 14 Jan 2025 at 17:11, Simon A. Eugster via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> &lt;<a href=3D"http://simon.eu" rel=3D"noref=
errer" target=3D"_blank">simon.eu</a>=3D<a href=3D"mailto:gmail.com@lists.y=
octoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt;=
<br>
wrote:<br>
&gt;<br>
&gt; Until now, the default title of a boot entry is its label. The label i=
s<br>
&gt; a variable which determines the script to run during an early boot sta=
ge<br>
&gt; and is not necessarily human readable.<br>
&gt;<br>
&gt; This patch allows to provide a human-readable title for each boot entr=
y.<br>
&gt; ---<br>
&gt;=C2=A0 documentation/ref-manual/classes.rst=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
| 17 ++++++++++++++++-<br>
&gt;=C2=A0 meta/classes-recipe/grub-efi-cfg.bbclass=C2=A0 =C2=A0 |=C2=A0 8 =
+++++++-<br>
&gt;=C2=A0 meta/recipes-bsp/grub/<a href=3D"http://grub-bootconf_1.00.bb" r=
el=3D"noreferrer" target=3D"_blank">grub-bootconf_1.00.bb</a> |=C2=A0 2 +-<=
br>
&gt;=C2=A0 3 files changed, 24 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/documentation/ref-manual/classes.rst b/documentation/ref-=
manual/classes.rst<br>
&gt; index 761be7b545..460f94b232 100644<br>
&gt; --- a/documentation/ref-manual/classes.rst<br>
&gt; +++ b/documentation/ref-manual/classes.rst<br>
&gt; @@ -987,10 +987,14 @@ introspection. This functionality is only enable=
d if the<br>
&gt;=C2=A0 The :ref:`ref-classes-grub-efi` class provides ``grub-efi``-spec=
ific functions for<br>
&gt;=C2=A0 building bootable images.<br>
&gt;<br>
&gt; -This class supports several variables:<br>
&gt; +This class supports several variables.<br>
&gt; +The label specific override names are ``grub_LABEL``.<br>
&gt; +To specificy an override for the label ``mylabel``, the override name=
 is ``grub_mylabel``,<br>
&gt; +for example ``APPEND:grub_mylabel =3D my-appends``.<br>
&gt;<br>
&gt;=C2=A0 -=C2=A0 :term:`INITRD`: Indicates list of filesystem images to<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0concatenate and use as an initial RAM disk (initrd)=
 (optional).<br>
&gt; +=C2=A0 =C2=A0Can be specified for each ``LABEL``.<br>
&gt;<br>
&gt;=C2=A0 -=C2=A0 :term:`ROOTFS`: Indicates a filesystem image to include<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0as the root filesystem (optional).<br>
&gt; @@ -1004,6 +1008,9 @@ This class supports several variables:<br>
&gt;=C2=A0 -=C2=A0 :term:`APPEND`: An override list of append strings for<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0each ``LABEL``.<br>
&gt;<br>
&gt; +-=C2=A0 :term:`GRUB_TITLE`: A custom title for each ```LABEL``.<br>
&gt; +=C2=A0 =C2=A0Defaults to ``LABEL`` if it is not defined.<br>
&gt; +<br>
&gt;=C2=A0 -=C2=A0 :term:`GRUB_OPTS`: Additional options to add to the<br>
&gt;=C2=A0 =C2=A0 =C2=A0configuration (optional). Options are delimited usi=
ng semi-colon<br>
&gt;=C2=A0 =C2=A0 =C2=A0characters (``;``).<br>
&gt; @@ -1011,6 +1018,14 @@ This class supports several variables:<br>
&gt;=C2=A0 -=C2=A0 :term:`GRUB_TIMEOUT`: Timeout before executing<br>
&gt;=C2=A0 =C2=A0 =C2=A0the default ``LABEL`` (optional).<br>
&gt;<br>
&gt; +For the label ``factory``, a custom GRUB menu entry titled &quot;Fact=
ory Install&quot; with the additional parameter ``factory=3Dyes``<br>
&gt; +can be achieved as follows::<br>
&gt; +<br>
&gt; +=C2=A0 LABELS:append =3D &quot;factory&quot;<br>
&gt; +=C2=A0 APPEND:grub_factory =3D &quot;factory=3Dyes&quot;<br>
&gt; +=C2=A0 GRUB_TITLE:grub_factory =3D &quot;Factory Install&quot;<br>
&gt; +<br>
&gt; +<br>
&gt;=C2=A0 .. _ref-classes-gsettings:<br>
&gt;<br>
&gt;=C2=A0 ``gsettings``<br>
&gt; diff --git a/meta/classes-recipe/grub-efi-cfg.bbclass b/meta/classes-r=
ecipe/grub-efi-cfg.bbclass<br>
&gt; index 52e85a3bb0..9a5cb99c52 100644<br>
&gt; --- a/meta/classes-recipe/grub-efi-cfg.bbclass<br>
&gt; +++ b/meta/classes-recipe/grub-efi-cfg.bbclass<br>
&gt; @@ -23,6 +23,7 @@ GRUB_TIMEOUT ?=3D &quot;10&quot;<br>
&gt;=C2=A0 GRUB_OPTS ?=3D &quot;serial --unit=3D0 --speed=3D115200 --word=
=3D8 --parity=3Dno --stop=3D1&quot;<br>
&gt;<br>
&gt;=C2=A0 GRUB_ROOT ?=3D &quot;${ROOT}&quot;<br>
&gt; +GRUB_TITLE ?=3D &quot;&quot;<br>
&gt;=C2=A0 APPEND ?=3D &quot;&quot;<br>
&gt;<br>
&gt;=C2=A0 # Uses MACHINE specific KERNEL_IMAGETYPE<br>
&gt; @@ -91,10 +92,15 @@ python build_efi_cfg() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if not overrides:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.fatal(&#39;OVERRIDE=
S not defined&#39;)<br>
&gt;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 localdata.need_overrides()<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 localdata.setVar(&#39;OVERRIDES&#39;=
, &#39;grub_&#39; + label + &#39;:&#39; + overrides)<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for btype in btypes:<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cfgfile.write(&#39;\nmenuen=
try \&#39;%s%s\&#39;{\n&#39; % (label, btype[0]))<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 title =3D localdata.getVar(=
&#39;GRUB_TITLE&#39;)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if not title or len(title) =
=3D=3D 0:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 title =3D lab=
el<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cfgfile.write(&#39;\nmenuen=
try \&#39;%s%s\&#39;{\n&#39; % (title, btype[0]))<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lb =3D label<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if label =3D=3D &quot;=
install&quot;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 lb =3D &=
quot;install-efi&quot;<br>
&gt; diff --git a/meta/recipes-bsp/grub/<a href=3D"http://grub-bootconf_1.0=
0.bb" rel=3D"noreferrer" target=3D"_blank">grub-bootconf_1.00.bb</a> b/meta=
/recipes-bsp/grub/<a href=3D"http://grub-bootconf_1.00.bb" rel=3D"noreferre=
r" target=3D"_blank">grub-bootconf_1.00.bb</a><br>
&gt; index 783e30bf38..7ed0877726 100644<br>
&gt; --- a/meta/recipes-bsp/grub/<a href=3D"http://grub-bootconf_1.00.bb" r=
el=3D"noreferrer" target=3D"_blank">grub-bootconf_1.00.bb</a><br>
&gt; +++ b/meta/recipes-bsp/grub/<a href=3D"http://grub-bootconf_1.00.bb" r=
el=3D"noreferrer" target=3D"_blank">grub-bootconf_1.00.bb</a><br>
&gt; @@ -22,7 +22,7 @@ python do_configure() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 bb.build.exec_func(&#39;build_efi_cfg&#39;, d)<br>
&gt;=C2=A0 }<br>
&gt;<br>
&gt; -do_configure[vardeps] +=3D &quot;APPEND ROOT&quot;<br>
&gt; +do_configure[vardeps] +=3D &quot;APPEND ROOT GRUB_TITLE&quot;<br>
&gt;<br>
&gt;=C2=A0 do_install() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -d ${D}${EFI_FILES_PATH}<br>
&gt; --<br>
&gt; 2.43.0<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#13506): <a href=3D"https://lists.yoctoproject.org/=
g/poky/message/13506" rel=3D"noreferrer" target=3D"_blank">https://lists.yo=
ctoproject.org/g/poky/message/13506</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/11061005=
3/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/110610053/1686489</a><br>
&gt; Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" ta=
rget=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" r=
el=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/u=
nsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.=
kanavin@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--00000000000055b96c062bba474f--

