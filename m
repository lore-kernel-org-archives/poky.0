Return-Path: <simon.eu@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37D26C02180
	for <webhook@archiver.kernel.org>; Wed, 15 Jan 2025 08:12:37 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web11.16321.1736928748747682193
 for <poky@lists.yoctoproject.org>;
 Wed, 15 Jan 2025 00:12:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c5Bv58O5;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: simon.eu@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2ef28f07dbaso8505756a91.2
        for <poky@lists.yoctoproject.org>; Wed, 15 Jan 2025 00:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736928748; x=1737533548; darn=lists.yoctoproject.org;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UVnK/+uR5rCHxQpIc3NDaytDvWzdD9Qm9fytZOevtBc=;
        b=c5Bv58O5asaZ0oRgkQa/b30XOIPHYQvw8JQqWkYlo0ZhJjZ1QxmAIYevZaADgcPmLO
         8HeF4dRDk68dAnzyJxBGBuBf22o5bIfL7gq9i+GfGVpi0o0rSM3u5grMWLAIun9IRteT
         +rsVPC2vGehppzrWNdENAo1WX2Kirb52QqgIZzYf4WF3KRldhee0hg2BTHcY3y7rvY1S
         +XIN2UQIuA7+9bg8D2WUULDMvAftKyYKx8iXGt9bIBfDjL9sdb1ozxRk7rRYlu2GeCFT
         51zG9fbZ+9XmE+m2IRvNSjKgMm3M8ivHu1rbdzetQkpnDylcsc2DsXsesDt0wJNm05xl
         K6tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736928748; x=1737533548;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UVnK/+uR5rCHxQpIc3NDaytDvWzdD9Qm9fytZOevtBc=;
        b=FXubwEJTBqC5+ICjbAaizgUyW4AFAzSai6CkVE0Ji9l1f+Dg23RDcVG5hd5iNiJUu5
         BtiauU7xM41kKu+ekfjRIPJCaU5IFzTDyaqs2k1/z7kcAw5sgRklFN8XUwIMKIAgyqFw
         6kx8ta9/znZK0iPtnnFGacjt8HSz+c9gd3auhjZ8hoZZMA5Syen0Qob7J4eZGHlv6cpD
         pu1KFMmx4/MGTSCuWm/vMMg49rfA6ENS7zvPKB94x1Smgb6Sr+2VGdgXSpCL8u2+BuPo
         tb+G9UDWn82HffyQ722laOTyomSq1DNQ7cI6iAAF1KlVnye373Nx8tJ+pogNSTEaBJFp
         6s2A==
X-Gm-Message-State: AOJu0Yz6a+5fBfUodAaEX2sGXrC3awfLeZ0i8ZsmAQBP2Qefi7F/ZoHq
	QS0n97HdxNtZjIzkz36YK5KfyjcjUx+cnHUOQDzXy4GJkWCQszwI5aWqZYdo6+y1d+P5h6wtM9x
	z0/2JcwbsdXiwfm8IImBagn6ZFYLC3g==
X-Gm-Gg: ASbGncueE5Ubc2NudJ8DyLBA84D3x/nnhspAURVXprkl0EUPgV8MClxUqO8p3+K2aWf
	XVY7VbeDkOg1Kbq8ANfmHJ4xWAlnhzhNr+sEK0xI=
X-Google-Smtp-Source: AGHT+IEHKWORB1Mi2p195WkBAR6rAY3hoMwLYEzF0Z8gBXsE2266mTrVbhJp/lvdl2QeLFl9V3DX+Rv7SyuiEBTUJWU=
X-Received: by 2002:a17:90b:540e:b0:2ee:a76a:830 with SMTP id
 98e67ed59e1d1-2f548f1b2bfmr43971904a91.24.1736928747750; Wed, 15 Jan 2025
 00:12:27 -0800 (PST)
MIME-Version: 1.0
References: <181ACF3150613AF1.1614@lists.yoctoproject.org>
In-Reply-To: <181ACF3150613AF1.1614@lists.yoctoproject.org>
From: Simon Eugster <simon.eu@gmail.com>
Date: Wed, 15 Jan 2025 09:12:16 +0100
X-Gm-Features: AbW1kvaqKzxj451M5_wUeCfIYV5O2U6T3869BMLrUNTZok7RfdU-dhAmGgMTfSE
Message-ID: <CAO8d5BaZpdWPfU=G3Kj8jyYDM5E5T2bq=GZ+us66pm+GY5iifA@mail.gmail.com>
Subject: Re: [poky] [PATCH] grub-efi-cfg: Add GRUB_TITLE for custom GRUB titles
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000028e1c062bba3d2d"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 15 Jan 2025 08:12:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13509

--000000000000028e1c062bba3d2d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry, that was supposed to go to oe-core, will re-send the patch there.

On Wed, Jan 15, 2025 at 9:07=E2=80=AFAM Simon A. Eugster via lists.yoctopro=
ject.org
<simon.eu=3Dgmail.com@lists.yoctoproject.org> wrote:

> Until now, the default title of a boot entry is its label. The label is
> a variable which determines the script to run during an early boot stage
> and is not necessarily human readable.
>
> This patch allows to provide a human-readable title for each boot entry.
> ---
>  meta/classes-recipe/grub-efi-cfg.bbclass    | 8 +++++++-
>  meta/recipes-bsp/grub/grub-bootconf_1.00.bb | 2 +-
>  2 files changed, 8 insertions(+), 2 deletions(-)
>
> diff --git a/meta/classes-recipe/grub-efi-cfg.bbclass
> b/meta/classes-recipe/grub-efi-cfg.bbclass
> index 52e85a3bb0..9a5cb99c52 100644
> --- a/meta/classes-recipe/grub-efi-cfg.bbclass
> +++ b/meta/classes-recipe/grub-efi-cfg.bbclass
> @@ -23,6 +23,7 @@ GRUB_TIMEOUT ?=3D "10"
>  GRUB_OPTS ?=3D "serial --unit=3D0 --speed=3D115200 --word=3D8 --parity=
=3Dno
> --stop=3D1"
>
>  GRUB_ROOT ?=3D "${ROOT}"
> +GRUB_TITLE ?=3D ""
>  APPEND ?=3D ""
>
>  # Uses MACHINE specific KERNEL_IMAGETYPE
> @@ -91,10 +92,15 @@ python build_efi_cfg() {
>          if not overrides:
>              bb.fatal('OVERRIDES not defined')
>
> +        localdata.need_overrides()
>          localdata.setVar('OVERRIDES', 'grub_' + label + ':' + overrides)
>
>          for btype in btypes:
> -            cfgfile.write('\nmenuentry \'%s%s\'{\n' % (label, btype[0]))
> +            title =3D localdata.getVar('GRUB_TITLE')
> +            if not title or len(title) =3D=3D 0:
> +                title =3D label
> +
> +            cfgfile.write('\nmenuentry \'%s%s\'{\n' % (title, btype[0]))
>              lb =3D label
>              if label =3D=3D "install":
>                  lb =3D "install-efi"
> diff --git a/meta/recipes-bsp/grub/grub-bootconf_1.00.bb
> b/meta/recipes-bsp/grub/grub-bootconf_1.00.bb
> index 783e30bf38..7ed0877726 100644
> --- a/meta/recipes-bsp/grub/grub-bootconf_1.00.bb
> +++ b/meta/recipes-bsp/grub/grub-bootconf_1.00.bb
> @@ -22,7 +22,7 @@ python do_configure() {
>      bb.build.exec_func('build_efi_cfg', d)
>  }
>
> -do_configure[vardeps] +=3D "APPEND ROOT"
> +do_configure[vardeps] +=3D "APPEND ROOT GRUB_TITLE"
>
>  do_install() {
>         install -d ${D}${EFI_FILES_PATH}
> --
> 2.43.0
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13508):
> https://lists.yoctoproject.org/g/poky/message/13508
> Mute This Topic: https://lists.yoctoproject.org/mt/110624104/6562396
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> simon.eu@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000028e1c062bba3d2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry, that was supposed to go to oe-core, will re-send th=
e patch there.<br></div><br><div class=3D"gmail_quote gmail_quote_container=
"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 15, 2025 at 9:07=E2=80=
=AFAM Simon A. Eugster via <a href=3D"http://lists.yoctoproject.org">lists.=
yoctoproject.org</a> &lt;<a href=3D"http://simon.eu">simon.eu</a>=3D<a href=
=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">Until now, the default title of a boot entry is its label. The label is<b=
r>
a variable which determines the script to run during an early boot stage<br=
>
and is not necessarily human readable.<br>
<br>
This patch allows to provide a human-readable title for each boot entry.<br=
>
---<br>
=C2=A0meta/classes-recipe/grub-efi-cfg.bbclass=C2=A0 =C2=A0 | 8 +++++++-<br=
>
=C2=A0meta/recipes-bsp/grub/<a href=3D"http://grub-bootconf_1.00.bb" rel=3D=
"noreferrer" target=3D"_blank">grub-bootconf_1.00.bb</a> | 2 +-<br>
=C2=A02 files changed, 8 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/meta/classes-recipe/grub-efi-cfg.bbclass b/meta/classes-recipe=
/grub-efi-cfg.bbclass<br>
index 52e85a3bb0..9a5cb99c52 100644<br>
--- a/meta/classes-recipe/grub-efi-cfg.bbclass<br>
+++ b/meta/classes-recipe/grub-efi-cfg.bbclass<br>
@@ -23,6 +23,7 @@ GRUB_TIMEOUT ?=3D &quot;10&quot;<br>
=C2=A0GRUB_OPTS ?=3D &quot;serial --unit=3D0 --speed=3D115200 --word=3D8 --=
parity=3Dno --stop=3D1&quot;<br>
<br>
=C2=A0GRUB_ROOT ?=3D &quot;${ROOT}&quot;<br>
+GRUB_TITLE ?=3D &quot;&quot;<br>
=C2=A0APPEND ?=3D &quot;&quot;<br>
<br>
=C2=A0# Uses MACHINE specific KERNEL_IMAGETYPE<br>
@@ -91,10 +92,15 @@ python build_efi_cfg() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if not overrides:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.fatal(&#39;OVERRIDES not=
 defined&#39;)<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 localdata.need_overrides()<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0localdata.setVar(&#39;OVERRIDES&#39;, &#3=
9;grub_&#39; + label + &#39;:&#39; + overrides)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for btype in btypes:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cfgfile.write(&#39;\nmenuentry \=
&#39;%s%s\&#39;{\n&#39; % (label, btype[0]))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 title =3D localdata.getVar(&#39;=
GRUB_TITLE&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if not title or len(title) =3D=
=3D 0:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 title =3D label<br=
>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cfgfile.write(&#39;\nmenuentry \=
&#39;%s%s\&#39;{\n&#39; % (title, btype[0]))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lb =3D label<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if label =3D=3D &quot;insta=
ll&quot;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lb =3D &quot;=
install-efi&quot;<br>
diff --git a/meta/recipes-bsp/grub/<a href=3D"http://grub-bootconf_1.00.bb"=
 rel=3D"noreferrer" target=3D"_blank">grub-bootconf_1.00.bb</a> b/meta/reci=
pes-bsp/grub/<a href=3D"http://grub-bootconf_1.00.bb" rel=3D"noreferrer" ta=
rget=3D"_blank">grub-bootconf_1.00.bb</a><br>
index 783e30bf38..7ed0877726 100644<br>
--- a/meta/recipes-bsp/grub/<a href=3D"http://grub-bootconf_1.00.bb" rel=3D=
"noreferrer" target=3D"_blank">grub-bootconf_1.00.bb</a><br>
+++ b/meta/recipes-bsp/grub/<a href=3D"http://grub-bootconf_1.00.bb" rel=3D=
"noreferrer" target=3D"_blank">grub-bootconf_1.00.bb</a><br>
@@ -22,7 +22,7 @@ python do_configure() {<br>
=C2=A0 =C2=A0 =C2=A0bb.build.exec_func(&#39;build_efi_cfg&#39;, d)<br>
=C2=A0}<br>
<br>
-do_configure[vardeps] +=3D &quot;APPEND ROOT&quot;<br>
+do_configure[vardeps] +=3D &quot;APPEND ROOT GRUB_TITLE&quot;<br>
<br>
=C2=A0do_install() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 install -d ${D}${EFI_FILES_PATH}<br>
-- <br>
2.43.0<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13508): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13508" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13508</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/110624104/656=
2396" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/110624104/6562396</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:simon.eu@gmail.com" target=3D"_blank">simon.eu@gmail=
.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000028e1c062bba3d2d--

