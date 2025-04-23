Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C94C369D1
	for <webhook@archiver.kernel.org>; Wed, 23 Apr 2025 12:32:06 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web10.7280.1745411525287338206
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Apr 2025 05:32:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AGkrbxpx;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7370a2d1981so5138544b3a.2
        for <poky@lists.yoctoproject.org>; Wed, 23 Apr 2025 05:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745411525; x=1746016325; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qN/ZOJJzKk+pRM42gha4rkVVb/ynmpIhh8ry+E290NQ=;
        b=AGkrbxpxr7GME06ROcyvRakqQjY9Zok/2l0m0p7U3xBTeRzKFbRWgZdORNidiJHmb+
         4+bFo58YyRU4rZbX3dgwUW0isdOqNeUXBbzclAJHaah+eqmWFAmk+64Ug02KVovdyflj
         MVWv2tMGknJjbNoNQsGoFmwLECKqOvJe4VsZ2GYqEKyxIxFxF0uW0/Ooejz19ARG2MuZ
         Xi5yKavJ8O+QNyoWCIH5b1PTViu7b9z8vMv4GMWlU6ki1WE0w76JyXSYc+DQaAtwWHS2
         zV5q3m6pT696Md2/JTWsz5WrGUuV70uu6NWD7qYteYemr41UVHX7pBzz31IEoF4IXtQN
         iLaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745411525; x=1746016325;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qN/ZOJJzKk+pRM42gha4rkVVb/ynmpIhh8ry+E290NQ=;
        b=REK7qlM5eSxYSm/olO9F32loT4lZlH4YnE+eIyLXdLAO8rPNmAVUQU+dGj+GnoHfU2
         G1XzeGM5DmSya7ERwJvwp2Z4TFwcxYV3Imr/ToZbJ5d7TFKoMhHQpEfN8OEw/aaik2vs
         kTl5chumLwF29Dg6ERdgjayuCN7HYTA/2iXQNkZ5maIyBLG7jfBrLEG+C8CjQtEuVFGC
         Dv/a44O/XUXP8csCp/WnCh0+zbli7q8nRmYjcYZA5hScG/dxq5lyIpmkqdnLP4oRFqnF
         W/TltJa1uzucAhozG2FIfsKrR6fVf4XC9zS6jo78W85J/JKX2AI3zuFc3J6kkuBqAiXf
         5xqQ==
X-Forwarded-Encrypted: i=1; AJvYcCX46JaWnXsioMC5yMsCAtudzSu43QqcxkV2YdDxtWdLz56Q8q4bDfPTCz0cqzv1vi+QdVg5@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwtMKOxEJC3Xa7n5hGpmhQEYFu3NClg8JYK4YstUXaqdWpn1V+4
	Tt84cmVQVqNcsjkz0S9DiiHVEuuNvzRj0vUTi/oMNioL+U8uox3DuIUJgircSyaTTyP2CuLajDv
	A8J5JQOKo1lxGDDLqNufar2qOB4A=
X-Gm-Gg: ASbGncudvNx0NKtmRp64z6WFYiaHblWwVkFQY4EAGXf9Wk7TXMjcKyRaxkc4aEtFpcZ
	wOkQS9yNAv12wn8uO0Y4wMSToCTdz38cJFNRdNDxFKfWajOtS3c/9/xV8WoYT1OqJiXR/q4NNtd
	Tnz/Yz9aKWuS/DSzTnF7eYSzI=
X-Google-Smtp-Source: AGHT+IHamMdkcXbyxA+EJL8tcok0w/roPIf+XdoIvV6oAjJojyUv1whSTHtR72DgaRC8op/Z8RBPWKItZIcrkkevBr8=
X-Received: by 2002:a17:90a:c887:b0:2fa:15ab:4df5 with SMTP id
 98e67ed59e1d1-3087bccb042mr23419757a91.34.1745411524526; Wed, 23 Apr 2025
 05:32:04 -0700 (PDT)
MIME-Version: 1.0
References: <20250423080246.128723-1-mikko.rapeli@linaro.org> <20250423080246.128723-3-mikko.rapeli@linaro.org>
In-Reply-To: <20250423080246.128723-3-mikko.rapeli@linaro.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 23 Apr 2025 08:31:53 -0400
X-Gm-Features: ATxdqUFRxspxUfiyz0UyWNL9mzSBW1lGpWae5asd3UpaZHchQXF2Z-J1-Ermgjw
Message-ID: <CADkTA4OM83dmNKO-ocCRmoVzaMWCxvN0SYz7Yi3th58uPoSqHw@mail.gmail.com>
Subject: Re: [OE-core] [PATCH 3/3] linux-yocto: build modular kernel on genericarm64
To: mikko.rapeli@linaro.org
Cc: openembedded-core@lists.openembedded.org, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e80d0006337149c2"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 23 Apr 2025 12:32:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13603

--000000000000e80d0006337149c2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is not the variable we'll be using for this, so again, do not apply
this patch.

Bruce

On Wed, Apr 23, 2025 at 4:03=E2=80=AFAM Mikko Rapeli via lists.openembedded=
.org
<mikko.rapeli=3Dlinaro.org@lists.openembedded.org> wrote:

> genericarm64 inteds to support many devices which are not even
> know at compile time and uses initramfs by default. Thus many
> drivers can be build as modules to reduce kernel binary size
> and boot time.
>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappen=
d
> b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
> index 831cb556be..cda7fef449 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend
> @@ -9,3 +9,5 @@ KMACHINE:genericx86-64 ?=3D "common-pc-64"
>
>  FILESEXTRAPATHS:prepend:genericarm64 :=3D "${THISDIR}/files:"
>  SRC_URI:append:genericarm64 =3D "
> file://0001-Revert-serial-8250_omap-Drop-pm_runtime_irq_safe.patch"
> +
> +MODULAR_KERNEL:genericarm64 =3D "true"
> --
> 2.43.0
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#215266):
> https://lists.openembedded.org/g/openembedded-core/message/215266
> Mute This Topic: https://lists.openembedded.org/mt/112410523/1050810
> Group Owner: openembedded-core+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-core/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000e80d0006337149c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Thi=
s=C2=A0is not the variable we&#39;ll be using for this, so again, do not ap=
ply this patch.</div><div class=3D"gmail_default" style=3D"font-size:small"=
><br></div><div class=3D"gmail_default" style=3D"font-size:small">Bruce</di=
v></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Apr 23, 2025 at 4:03=E2=80=AFAM Mikko Rapel=
i via <a href=3D"http://lists.openembedded.org">lists.openembedded.org</a> =
&lt;mikko.rapeli=3D<a href=3D"mailto:linaro.org@lists.openembedded.org">lin=
aro.org@lists.openembedded.org</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">genericarm64 inteds to support many devices w=
hich are not even<br>
know at compile time and uses initramfs by default. Thus many<br>
drivers can be build as modules to reduce kernel binary size<br>
and boot time.<br>
<br>
Signed-off-by: Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@linaro.org" =
target=3D"_blank">mikko.rapeli@linaro.org</a>&gt;<br>
---<br>
=C2=A0meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend | 2 ++<=
br>
=C2=A01 file changed, 2 insertions(+)<br>
<br>
diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend =
b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend<br>
index 831cb556be..cda7fef449 100644<br>
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend<br>
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_6.12.bbappend<br>
@@ -9,3 +9,5 @@ KMACHINE:genericx86-64 ?=3D &quot;common-pc-64&quot;<br>
<br>
=C2=A0FILESEXTRAPATHS:prepend:genericarm64 :=3D &quot;${THISDIR}/files:&quo=
t;<br>
=C2=A0SRC_URI:append:genericarm64 =3D &quot; file://0001-Revert-serial-8250=
_omap-Drop-pm_runtime_irq_safe.patch&quot;<br>
+<br>
+MODULAR_KERNEL:genericarm64 =3D &quot;true&quot;<br>
-- <br>
2.43.0<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#215266): <a href=3D"https://lists.openembedded.org/g/op=
enembedded-core/message/215266" rel=3D"noreferrer" target=3D"_blank">https:=
//lists.openembedded.org/g/openembedded-core/message/215266</a><br>
Mute This Topic: <a href=3D"https://lists.openembedded.org/mt/112410523/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.openembedded.org/m=
t/112410523/1050810</a><br>
Group Owner: <a href=3D"mailto:openembedded-core%2Bowner@lists.openembedded=
.org" target=3D"_blank">openembedded-core+owner@lists.openembedded.org</a><=
br>
Unsubscribe: <a href=3D"https://lists.openembedded.org/g/openembedded-core/=
unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.openembedded.org/=
g/openembedded-core/unsub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" =
target=3D"_blank">bruce.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div>

--000000000000e80d0006337149c2--

