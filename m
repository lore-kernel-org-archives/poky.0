Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BFECC25B75
	for <webhook@archiver.kernel.org>; Fri, 31 May 2024 13:33:46 +0000 (UTC)
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
 by mx.groups.io with SMTP id smtpd.web11.12241.1717162420445796533
 for <poky@lists.yoctoproject.org>;
 Fri, 31 May 2024 06:33:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=d4GP7zqn;
 spf=pass (domain: gmail.com, ip: 209.85.160.47, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-250928a8580so221812fac.3
        for <poky@lists.yoctoproject.org>; Fri, 31 May 2024 06:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717162420; x=1717767220; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oC3mlJNwBCYMZnvoZRe5yd87CwmBzFcptirF7F/8+4s=;
        b=d4GP7zqnhzz2Syda2FY2DsyyJFx95DIJtsjyFxHyGpXZ/BcvCeT9cXg+yowJyHFE69
         fBTptyOnHZYMANf+9rOisfkWAHUuYWYE36+crC64JS8fy7+IyB+mPOWoxjJGw6YR1ntx
         ly4aeZ4kthm0j5qfo1txnjMFM9DztX0fKKQgGddNkabHF1M7wd1oCw3JrrLTOYxzkPqs
         71J8O1U1LsCS8xxnk9LvqyMxIQxf4SFE/yWku2gGxwIPUsviXwAqBPw/Dq06DcX39y82
         prVoF3Z9bDnxnTr6ig4q8QJmkNl+Gj60mveMWPg3p/QLB0O7W23VPMQcieCwRLGcM09r
         ZHpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717162420; x=1717767220;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oC3mlJNwBCYMZnvoZRe5yd87CwmBzFcptirF7F/8+4s=;
        b=RIgp234Uw9eKzNNMBDZHRgJYQSkjyFNLSr1G8ebHFXCtAHhtIpPtwTX4WBLt9WMzg8
         jfTtt3XjTYf+hYGp3hO/CKRf/7CuZVH8EQ1gdy04rZhKriB2bb6FuLOAHid2NELE3NDZ
         gmu0n07/bX2n4O17jSADP47JjDjS/hFcgY4xAI9TwTNWOApIMDk5KGgP6Aiq5Pg4lqDn
         qLW86zqVGqgBu2c8icWuxtLf3C1kA9sWZXC7pBGDlssfwibuu146epqbqbiJjR5pg6aR
         39fo4JtQQ/7fQ/DQtgeLyHK7c2Dr2n5Uh/9SkR3Qbdaxt8Me8vDCUP9E2UBgV0vp8znd
         aSdQ==
X-Gm-Message-State: AOJu0YzecD4KCnvr3Z0e68HVhQEoDX6V6vh+4Gwd69tM5Py75ctwKtp9
	TcmCFzryGXGg+FXaiZprZNp+ALKPAb2oe5YXTXL3WNndvcxcsmGj+VYrEvKqGkmy4GJ0EkkyMQG
	EJ5cX6LAMgTZnfddnu+nV/1G0HjA=
X-Google-Smtp-Source: AGHT+IHouPZs/FCqlYAwPjeTujvVYLvK/NxPncQqKt9m13iTCczFaJgXNRnA/0OKXhYc/LF9xeFacK4w+eKz8SaVEIk=
X-Received: by 2002:a05:6871:5ce:b0:24f:f566:644f with SMTP id
 586e51a60fabf-2508bc1e7fcmr1988033fac.41.1717162419202; Fri, 31 May 2024
 06:33:39 -0700 (PDT)
MIME-Version: 1.0
References: <20240531114357.3256740-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20240531114357.3256740-1-richard.purdie@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 31 May 2024 06:33:28 -0700
Message-ID: <CAMKF1sqVZY+CetzLGruRQ859AjNdDBxVrpPcuSdZ7SeRBY0V0g@mail.gmail.com>
Subject: Re: [poky] [PATCH] busybox: Disable CONFIG_TC for poky-tiny
To: richard.purdie@linuxfoundation.org
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000004b1870619c008a4"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 31 May 2024 13:33:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13363

--00000000000004b1870619c008a4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 31, 2024 at 4:44=E2=80=AFAM Richard Purdie via lists.yoctoproje=
ct.org
<richard.purdie=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote:

> it fails to build with 6.8 kernel headers onwards and is disabled in
> our standard builds.
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> index 6e9faa41196..245c4368fc2 100644
> --- a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> +++ b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
> @@ -937,7 +937,7 @@ CONFIG_FEATURE_FANCY_PING=3Dy
>  CONFIG_ROUTE=3Dy
>  # CONFIG_SLATTACH is not set
>  CONFIG_SSL_CLIENT=3Dy
> -CONFIG_TC=3Dy
> +# CONFIG_TC is not set
>  CONFIG_FEATURE_TC_INGRESS=3Dy


You want to disable this as well
adding error message to commit will be good
For future reference if we apply this patch

>
>  # CONFIG_TCPSVD is not set
>  # CONFIG_UDPSVD is not set
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13362):
> https://lists.yoctoproject.org/g/poky/message/13362
> Mute This Topic: https://lists.yoctoproject.org/mt/106406121/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000004b1870619c008a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, May 31, 2024 at 4:44=E2=80=AFAM Richard Purdie via =
<a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;ri=
chard.purdie=3D<a href=3D"mailto:linuxfoundation.org@lists.yoctoproject.org=
">linuxfoundation.org@lists.yoctoproject.org</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">it fails to build with 6.8 kernel headers onwards =
and is disabled in<br>
our standard builds.<br>
<br>
Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfou=
ndation.org" target=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;<b=
r>
---<br>
=C2=A0meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig b/m=
eta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig<br>
index 6e9faa41196..245c4368fc2 100644<br>
--- a/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig<br>
+++ b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig<br>
@@ -937,7 +937,7 @@ CONFIG_FEATURE_FANCY_PING=3Dy<br>
=C2=A0CONFIG_ROUTE=3Dy<br>
=C2=A0# CONFIG_SLATTACH is not set<br>
=C2=A0CONFIG_SSL_CLIENT=3Dy<br>
-CONFIG_TC=3Dy<br>
+# CONFIG_TC is not set<br>
=C2=A0CONFIG_FEATURE_TC_INGRESS=3Dy</blockquote><div dir=3D"auto"><br></div=
><div dir=3D"auto">You want to disable this as well</div><div dir=3D"auto">=
adding error message to commit will be good</div><div dir=3D"auto">For futu=
re reference if we apply this patch=C2=A0</div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x" dir=3D"auto"><br>
=C2=A0# CONFIG_TCPSVD is not set<br>
=C2=A0# CONFIG_UDPSVD is not set<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13362): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13362" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13362</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/106406121/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/106406121/1997914</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail=
.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000004b1870619c008a4--

