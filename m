Return-Path: <bhstalel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 467D0CE7A8A
	for <webhook@archiver.kernel.org>; Sun, 24 Sep 2023 15:14:53 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web10.41250.1695568486272668980
 for <poky@lists.yoctoproject.org>;
 Sun, 24 Sep 2023 08:14:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lgZFBBQs;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: bhstalel@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-533c5d10dc7so2169396a12.3
        for <poky@lists.yoctoproject.org>; Sun, 24 Sep 2023 08:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695568485; x=1696173285; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=c96w3KLGj0TAnjtDuP9IJpiFtrI9XCdH25Fq435GXbo=;
        b=lgZFBBQs3r/VZAZNOdSjbO73GvdvfdPvy6LtnyfSxE5gc9RIlrsMhVxqoZmZg0+ODY
         919F12QGa7ulwzTvJcWKd9mLmXgoEj9ZSi+FlE2/r67o8q1hT5spc3ilhXT//GxBhu8e
         fsP+ITy55519vd5Pdwrvhbm4b0+APWMKGjvooDFhRAIkhs+SlOSAOqZzCymYmlTIF9IS
         gqdpDto9BLmMZUP/SMveJ74pbq14AqPGEKqXFTeg4KmLtkGyagalHYUD8yMqTLpPbCW/
         xy9bksI3VtfAdmeilA6vmKYZXw3GVHh4lQNGHqMO3dPQ9qW7cznJKIxEJgZTbEoah2qG
         4q3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695568485; x=1696173285;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c96w3KLGj0TAnjtDuP9IJpiFtrI9XCdH25Fq435GXbo=;
        b=CohMht7OT3hmASshVaKDf0Rb+1DV225pw2R4bcTbSJaURZT0Yk/wskEKdWgkt0WLkT
         WWYulMkOgbtmXDfifwmYgIC7gccUzPedcmGfGjbM4LmH5qcI1J+Gef0iQ+7hVmsM5bBz
         UiaWWhSVF/l/F04EecbGRhZ8epmCjR+LD1bVg6Az9SRP0uVuMtit3I6HIhpAYWF0lGCG
         lVyQ2pSOEEsEVv35o7PAGm8y4RAG8HTqSonTV93DJ1ytxBHCRMph7/OTg/RT37z3Sv46
         gzNfHN6PsA4bVLCgLxuhD+f1ApRJahLb+uhJlhsuG+uK6M4ZXF9ecKl3KXg9qe/5U9Y7
         5ssQ==
X-Gm-Message-State: AOJu0YwTSgMlplDJAqyy4VGLFXx7Exka9dtW5ydwhyk7Y+lzxwnsL7N+
	Gq++8V2cyKI3l/yvNNuB5/am2pFu9DYAB4rZEBc=
X-Google-Smtp-Source: AGHT+IFaAjP/ptV6ikvVa0Gvu03IX7BszQ7tdMqwmgNpCJtcxfrYdKgVOEEk2RDI/JDFou5dQB0FdDAwi8BkfCrl+6U=
X-Received: by 2002:a05:6402:28e:b0:522:2d1b:5a38 with SMTP id
 l14-20020a056402028e00b005222d1b5a38mr3850813edv.10.1695568484428; Sun, 24
 Sep 2023 08:14:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230924122259.2697980-1-bhstalel@gmail.com> <CANNYZj_HQA2SM+a8wZRBQs204RLV2srX5gBaB2W3=FyoNu2hgQ@mail.gmail.com>
In-Reply-To: <CANNYZj_HQA2SM+a8wZRBQs204RLV2srX5gBaB2W3=FyoNu2hgQ@mail.gmail.com>
From: Talel BELHADJ SALEM <bhstalel@gmail.com>
Date: Sun, 24 Sep 2023 16:14:33 +0100
Message-ID: <CAOgG7m0Fg++aG43D1SjtX55h-PH6MUe5AmhJ1UJaARRfcyogsw@mail.gmail.com>
Subject: Re: [poky] [PATCH] scripts/oe-setup-builddir: Add option to force
 TEMPLATECONF on existing configs
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000034f1cf06061c4de2"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 24 Sep 2023 15:14:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13165

--00000000000034f1cf06061c4de2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I, totally agree with you, I did thought about adding the variable to the
documentation page, but I forgot that developers can easily forget about it
since they do not dig into the documentation well, but if you forget to set
the variable, the script will behave the same way, hince [ -n ] option.

So, only who knows about the variable will use it correctly and explicitly.
This is maybe the last argument that I have for introducing this new
variable.

What do you think?

Kind regards
Talel

On Sun, Sep 24, 2023 at 2:06=E2=80=AFPM Alexander Kanavin <alex.kanavin@gma=
il.com>
wrote:

> But is it really that difficult to remove the files? Adding variables
> needs documentation, and tests, and adds complexity, and this one in
> particular can be easily avoided.
>
> Alex
>
> On Sun, 24 Sept 2023 at 14:24, BELHADJ SALEM Talel <bhstalel@gmail.com>
> wrote:
> >
> > Since we cannot force overriding of the config samples created based on
> TEMPALTECONF variable,
> > and that's because it may remove any custom configuration done on
> local.conf or bblayers.conf,
> > and that's also because TEMPALTECONF is, usually, used to create new
> builds.
> >
> > But, when the developer wants to recreate the build after changing the
> sample files, the developer
> > must remove the files manually.
> >
> > I think introducing another variable FORCE_TEMPLATECONF can help when
> override is wanted.
> >
> > Signed-off-by: Talel BELHAJSALEM <bhstalel@gmail.com>
> > ---
> >  scripts/oe-setup-builddir | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/scripts/oe-setup-builddir b/scripts/oe-setup-builddir
> > index 678aeac4be..3bd3df0930 100755
> > --- a/scripts/oe-setup-builddir
> > +++ b/scripts/oe-setup-builddir
> > @@ -64,7 +64,7 @@ unset SHOWYPDOC
> >  if [ -z "$OECORELOCALCONF" ]; then
> >
> OECORELOCALCONF=3D"$OEROOT/meta/conf/templates/default/local.conf.sample"
> >  fi
> > -if [ ! -r "$BUILDDIR/conf/local.conf" ]; then
> > +if [ ! -r "$BUILDDIR/conf/local.conf" ] || [ -n "$FORCE_TEMPLATECONF"
> ]; then
> >      cat <<EOM
> >  You had no conf/local.conf file. This configuration file has therefore
> been
> >  created for you from $OECORELOCALCONF
> > @@ -79,7 +79,7 @@ fi
> >  if [ -z "$OECORELAYERCONF" ]; then
> >
> OECORELAYERCONF=3D"$OEROOT/meta/conf/templates/default/bblayers.conf.samp=
le"
> >  fi
> > -if [ ! -r "$BUILDDIR/conf/bblayers.conf" ]; then
> > +if [ ! -r "$BUILDDIR/conf/bblayers.conf" ] || [ -n
> "$FORCE_TEMPLATECONF" ]; then
> >      cat <<EOM
> >  You had no conf/bblayers.conf file. This configuration file has
> therefore been
> >  created for you from $OECORELAYERCONF
> > @@ -101,7 +101,7 @@ fi
> >  if [ -z "$OECORENOTESCONF" ]; then
> >      OECORENOTESCONF=3D"$OEROOT/meta/conf/templates/default/conf-notes.=
txt"
> >  fi
> > -if [ ! -r "$BUILDDIR/conf/conf-notes.txt" ]; then
> > +if [ ! -r "$BUILDDIR/conf/conf-notes.txt" ] || [ -n
> "$FORCE_TEMPLATECONF" ]; then
> >      [ ! -r "$OECORENOTESCONF" ] || cp "$OECORENOTESCONF"
> "$BUILDDIR/conf/conf-notes.txt"
> >  fi
> >
> > --
> > 2.25.1
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#13162):
> https://lists.yoctoproject.org/g/poky/message/13162
> > Mute This Topic: https://lists.yoctoproject.org/mt/101554603/1686489
> > Group Owner: poky+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--00000000000034f1cf06061c4de2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I, totally agree with you, I did thought about adding the =
variable to the documentation page, but I forgot that developers can easily=
 forget about it since they do not dig into the documentation well, but if =
you forget to set the variable, the script will behave the same way, hince =
[ -n ] option.<div><br></div><div>So, only who knows about the variable wil=
l use it correctly and explicitly. This is maybe the last argument that=C2=
=A0I have for introducing this new variable.<div><br></div><div>What=C2=A0d=
o you think?</div></div><div><br></div><div>Kind=C2=A0regards</div><div>Tal=
el</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Sun, Sep 24, 2023 at 2:06=E2=80=AFPM Alexander Kanavin &lt;<a hr=
ef=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">But is it really=
 that difficult to remove the files? Adding variables<br>
needs documentation, and tests, and adds complexity, and this one in<br>
particular can be easily avoided.<br>
<br>
Alex<br>
<br>
On Sun, 24 Sept 2023 at 14:24, BELHADJ SALEM Talel &lt;<a href=3D"mailto:bh=
stalel@gmail.com" target=3D"_blank">bhstalel@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Since we cannot force overriding of the config samples created based o=
n TEMPALTECONF variable,<br>
&gt; and that&#39;s because it may remove any custom configuration done on =
local.conf or bblayers.conf,<br>
&gt; and that&#39;s also because TEMPALTECONF is, usually, used to create n=
ew builds.<br>
&gt;<br>
&gt; But, when the developer wants to recreate the build after changing the=
 sample files, the developer<br>
&gt; must remove the files manually.<br>
&gt;<br>
&gt; I think introducing another variable FORCE_TEMPLATECONF can help when =
override is wanted.<br>
&gt;<br>
&gt; Signed-off-by: Talel BELHAJSALEM &lt;<a href=3D"mailto:bhstalel@gmail.=
com" target=3D"_blank">bhstalel@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 scripts/oe-setup-builddir | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/scripts/oe-setup-builddir b/scripts/oe-setup-builddir<br>
&gt; index 678aeac4be..3bd3df0930 100755<br>
&gt; --- a/scripts/oe-setup-builddir<br>
&gt; +++ b/scripts/oe-setup-builddir<br>
&gt; @@ -64,7 +64,7 @@ unset SHOWYPDOC<br>
&gt;=C2=A0 if [ -z &quot;$OECORELOCALCONF&quot; ]; then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 OECORELOCALCONF=3D&quot;$OEROOT/meta/conf/template=
s/default/local.conf.sample&quot;<br>
&gt;=C2=A0 fi<br>
&gt; -if [ ! -r &quot;$BUILDDIR/conf/local.conf&quot; ]; then<br>
&gt; +if [ ! -r &quot;$BUILDDIR/conf/local.conf&quot; ] || [ -n &quot;$FORC=
E_TEMPLATECONF&quot; ]; then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 cat &lt;&lt;EOM<br>
&gt;=C2=A0 You had no conf/local.conf file. This configuration file has the=
refore been<br>
&gt;=C2=A0 created for you from $OECORELOCALCONF<br>
&gt; @@ -79,7 +79,7 @@ fi<br>
&gt;=C2=A0 if [ -z &quot;$OECORELAYERCONF&quot; ]; then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 OECORELAYERCONF=3D&quot;$OEROOT/meta/conf/template=
s/default/bblayers.conf.sample&quot;<br>
&gt;=C2=A0 fi<br>
&gt; -if [ ! -r &quot;$BUILDDIR/conf/bblayers.conf&quot; ]; then<br>
&gt; +if [ ! -r &quot;$BUILDDIR/conf/bblayers.conf&quot; ] || [ -n &quot;$F=
ORCE_TEMPLATECONF&quot; ]; then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 cat &lt;&lt;EOM<br>
&gt;=C2=A0 You had no conf/bblayers.conf file. This configuration file has =
therefore been<br>
&gt;=C2=A0 created for you from $OECORELAYERCONF<br>
&gt; @@ -101,7 +101,7 @@ fi<br>
&gt;=C2=A0 if [ -z &quot;$OECORENOTESCONF&quot; ]; then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 OECORENOTESCONF=3D&quot;$OEROOT/meta/conf/template=
s/default/conf-notes.txt&quot;<br>
&gt;=C2=A0 fi<br>
&gt; -if [ ! -r &quot;$BUILDDIR/conf/conf-notes.txt&quot; ]; then<br>
&gt; +if [ ! -r &quot;$BUILDDIR/conf/conf-notes.txt&quot; ] || [ -n &quot;$=
FORCE_TEMPLATECONF&quot; ]; then<br>
&gt;=C2=A0 =C2=A0 =C2=A0 [ ! -r &quot;$OECORENOTESCONF&quot; ] || cp &quot;=
$OECORENOTESCONF&quot; &quot;$BUILDDIR/conf/conf-notes.txt&quot;<br>
&gt;=C2=A0 fi<br>
&gt;<br>
&gt; --<br>
&gt; 2.25.1<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#13162): <a href=3D"https://lists.yoctoproject.org/=
g/poky/message/13162" rel=3D"noreferrer" target=3D"_blank">https://lists.yo=
ctoproject.org/g/poky/message/13162</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10155460=
3/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/101554603/1686489</a><br>
&gt; Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" ta=
rget=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" r=
el=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/u=
nsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.=
kanavin@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--00000000000034f1cf06061c4de2--

