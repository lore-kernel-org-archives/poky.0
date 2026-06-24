Return-Path: <ingonus@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539B1CDB479
	for <webhook@archiver.kernel.org>; Wed, 24 Jun 2026 15:17:39 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.9782.1782314255830649658
 for <poky@lists.yoctoproject.org>;
 Wed, 24 Jun 2026 08:17:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=k88RlQNb;
 spf=pass (domain: gmail.com, ip: 209.85.208.48, mailfrom: ingonus@gmail.com)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6980ae819f4so93877a12.0
        for <poky@lists.yoctoproject.org>; Wed, 24 Jun 2026 08:17:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782314254; cv=none;
        d=google.com; s=arc-20260327;
        b=TMBrso9kTgpMhQsxLFYezKpk1swBn5pLaffgCfHwmTRaB/U/aoymgnYUWJw6/e7mjx
         AGztDUo+E5MBG9aN6afvw2btIEKmv0bjObFvkxLRpo3K2kxnVhD8CR7l45MNA4z0Gx/M
         +O0R1mE+5iEcucJedRl4yYEy4m5VFtuciJHjzO0/p53Ek/AYiu6FOla5iTjDiEIIS4jd
         bGAhNUGSCyUx1hpJJzEg1UhdrkR1iW2gfFlEHpGg65NFTJ8MIkfhmBHwz/UsJZbnaqrr
         +7ITY0nHdsf5W6RWnG+qYtlk3tQBZHQezfwYaY5GI2Nf5d+KI7shNaY+3WuWkep0dH+C
         EOTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Z6u2JS3737O3bEq4mRfTrv7amjD1sapyglCoyew36iI=;
        fh=IDqW6ke3U66Ix9QBQZNW9/67zfgpCtBIsfAyJqu/sQc=;
        b=fng6ga8IGwMFZy17M6uk8GVchO1CvOjwDhXy9DO8r5f4AZqgo+TOdQI0WFBurawpVx
         pgLmM/NayNhrYpEtjMDhoej2KVN0oRbgcYV3qwJV4T6P/1nip9Cuz/Hhh9ll9sSzt37e
         +jsY0H7+UVE8bwTswFPgGdZE05wejfLexXICP6VxH/XkjHXhgBivoINLjnYmfA4A9vzB
         cpTqJ6FwmGmR/6a5Wa3DvMkeRsqf9jvkBlbhKNfuFqw/9WyETqvzmTP85p1XHxIkt1bO
         iGXpKLYqYXPKBtvj4D+9u8/2B8J9G0uEG1u3Q8x+GsRrPuhLRQtOVj+9lz6oVX11hOXF
         jjpQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782314254; x=1782919054; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Z6u2JS3737O3bEq4mRfTrv7amjD1sapyglCoyew36iI=;
        b=k88RlQNb1MDwRFgtKnTHgBz5pxFlAKDc60MuieqYKdUm0MybNd6s3bG6gn2ze2hdyn
         l2qd/ayybc9jp6j8/+5+6Hb4MIef/s5frdzJSpwMu4cRjygjWf17OZtm2NeBfpm7op96
         wgYBy97UWLUyfLjf8uTqyDCWsMWGCOsTIXzjfLtniTwV8q+YMmSz+xD61pdqDPSekEh+
         bRPel7GX8TP0hgTFVXOHaDGLUr5zusLSEYhaeyLqiouqD1olW2i2tcBEa/CPZjhjSx+l
         +bITbGuUurrO8OrNfl6jKCJQA37tgFjX/UV9t/jM0VjXBAyqDfsSXANXwbi+UlHummmE
         fO8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782314254; x=1782919054;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z6u2JS3737O3bEq4mRfTrv7amjD1sapyglCoyew36iI=;
        b=Ps48930lprYaNjQl+/odyvxPFSEAzUVDf7tZvBsLxnz2hJ7b12nLwdTucC7Zxtzvo9
         R0Y6IFWNms98BgJ4sOHeXUJLDNdUmpArfw1WMtbj87JzeyWekV80rPZswYB4qrSDew9x
         3iYDd0wKa504EQLsqpXjLRLHBozTmG5WdZNAGp/V4sFguWyPa7ixFgFtboH85Ijna0fe
         65Bfyobjq2ecwbDBJjiZPr1eEvy/ixZl7pvp7X/jLKpXdTCr4Xm5GfohlKUWYYN9q24S
         7DuZg6GPtrfA0USJ9zmJd95N8lLCm4xl/v633KGuI4owaG2M1l4hDwsmS9o7/kz8eUzv
         +EHg==
X-Forwarded-Encrypted: i=1; AHgh+RpAM3aSOkLPScSZsHS2XCLnaZ6ZmJqfQgASy6/O3YaY7Xk4zcJbtoV9IFywL3FmN/EFFPqG@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Ywqknh8MlaJn5BIsmgdDUMKCqXl8nL5/STz0mYFN3M1SS00z2OZ
	nAXgkPagUerGksaZEhZQIZJSGvpUQxkQ9ORA3LFyB85rQSuJl0j6xn7k8qZHUqfSSF6RCMnBpN0
	Jo580OMl+TivNZIbRj9PcAZIh+nonUtg=
X-Gm-Gg: AfdE7cnF1O6+bo8fnmKOSbtOAfMzHDyAofWBsrG8XeE28U8YZjixHDD0MJylygjPD8P
	3xBwvV2JsjFJkHl4lzLEx70QevUfkBWJ+573+h0YybvQxXF2nCA+F7JTYJriLm3jeMwTYPZfb8d
	wX+TStizbABGKGSpIxDkD2Z8op3s0/6SR6nUwPuOqLesUobXivI9pNU6momyeAA9L9mqdXvSwI4
	OdyZezcXDhX7fyigzuRdcSGlPwz2zq6PIBGUK5I/ICL6cqNjvHYYuXhA3UFjdOpgbCmuo51FFU5
	fBUHP2T3QAL8eUQYcoM43OjTs61fU/Y=
X-Received: by 2002:aa7:d70f:0:b0:68f:9fd9:435a with SMTP id
 4fb4d7f45d1cf-697d46111f2mr3438880a12.17.1782314252739; Wed, 24 Jun 2026
 08:17:32 -0700 (PDT)
MIME-Version: 1.0
References: <d63R.1776892621156872677.1gEq@lists.yoctoproject.org> <CANNYZj8BV8XxrCpoZWUM_qr+sca+XoWPcTriw7esDMNpgnWgSQ@mail.gmail.com>
In-Reply-To: <CANNYZj8BV8XxrCpoZWUM_qr+sca+XoWPcTriw7esDMNpgnWgSQ@mail.gmail.com>
From: Igor Santos <ingonus@gmail.com>
Date: Wed, 24 Jun 2026 12:17:21 -0300
X-Gm-Features: AVVi8Ce_HJKmLBWgfg6aBEguzsy4GxwcyrzZP9qvjUE4U_fl2YygMchB35gvAo4
Message-ID: <CALaoffOb5LPU79bSnBSMEAfN5QDp_rKAY0f8uvZ+F5jPzKmhNQ@mail.gmail.com>
Subject: Re: [poky] Installing a third-party package
To: alex.kanavin@gmail.com
Cc: rustyhowell@gmail.com, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e9a7450655015f1f"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 24 Jun 2026 15:17:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13928

--000000000000e9a7450655015f1f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, you can also create a recipe that downloads the original deb package,
unpack it and recreate it as a Yocto package.

Em qui., 23 de abr. de 2026 =C3=A0s 06:35, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
escreveu:

> Yocto is not Debian, and the runtime environment does not provide
> exactly same packages at the same versions. You can set the packaging
> backed to .deb, that does not in any way make the resulting
> distribution compatible with Debian.
>
> You need to convince the vendor to build their code using yocto, with
> a yocto recipe. Or have them deliver the source code, and build it
> yourself with a recipe.
>
> Alex
>
> On Wed, 22 Apr 2026 at 23:17, Rusty Howell via lists.yoctoproject.org
> <rustyhowell=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > I could use some help with the scenario I have.   We have a 3rd-party
> vendor that has provided us with a debian package for us to include in ou=
r
> OS image.  The vendor maintains the package feed and provides updates
> periodically.  I need to find a way to get the their package installed in=
to
> our OS image.  Not just extracted into, but installed with dpkg metadata
> and everything.   Using bin_package works... kinda. It leaves out some
> things like postinst and the versioning can change. Is there another way =
to
> incorporate a third-party package that would be closer to installing the
> package on first boot?  Thanks in advance.
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13914):
> https://lists.yoctoproject.org/g/poky/message/13914
> Mute This Topic: https://lists.yoctoproject.org/mt/118962603/3619403
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> ingonus@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000e9a7450655015f1f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, you can also create a recipe that downloads the origin=
al deb package, unpack it and recreate it as a Yocto package.</div><br><div=
 class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmai=
l_attr">Em qui., 23 de abr. de 2026 =C3=A0s 06:35, Alexander Kanavin via <a=
 href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;alex=
.kanavin=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@li=
sts.yoctoproject.org</a>&gt; escreveu:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">Yocto is not Debian, and the runtime environment doe=
s not provide<br>
exactly same packages at the same versions. You can set the packaging<br>
backed to .deb, that does not in any way make the resulting<br>
distribution compatible with Debian.<br>
<br>
You need to convince the vendor to build their code using yocto, with<br>
a yocto recipe. Or have them deliver the source code, and build it<br>
yourself with a recipe.<br>
<br>
Alex<br>
<br>
On Wed, 22 Apr 2026 at 23:17, Rusty Howell via <a href=3D"http://lists.yoct=
oproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</=
a><br>
&lt;rustyhowell=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" targe=
t=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; I could use some help with the scenario I have.=C2=A0 =C2=A0We have a =
3rd-party vendor that has provided us with a debian package for us to inclu=
de in our OS image.=C2=A0 The vendor maintains the package feed and provide=
s updates periodically.=C2=A0 I need to find a way to get the their package=
 installed into our OS image.=C2=A0 Not just extracted into, but installed =
with dpkg metadata and everything.=C2=A0 =C2=A0Using bin_package works... k=
inda. It leaves out some things like postinst and the versioning can change=
. Is there another way to incorporate a third-party package that would be c=
loser to installing the package on first boot?=C2=A0 Thanks in advance.<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13914): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13914</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/118962603/361=
9403" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/118962603/3619403</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:ingonus@gmail.com" target=3D"_blank">ingonus@gmail.c=
om</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000e9a7450655015f1f--

