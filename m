Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB008FA1FFA
	for <webhook@archiver.kernel.org>; Wed, 22 Apr 2026 21:23:40 +0000 (UTC)
Received: from mail-yx1-f46.google.com (mail-yx1-f46.google.com [74.125.224.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.93316.1776893018360232426
 for <poky@lists.yoctoproject.org>;
 Wed, 22 Apr 2026 14:23:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=apyiJ08P;
 spf=pass (domain: gmail.com, ip: 74.125.224.46, mailfrom: raj.khem@gmail.com)
Received: by mail-yx1-f46.google.com with SMTP id 956f58d0204a3-651c7ddf514so5562195d50.1
        for <poky@lists.yoctoproject.org>; Wed, 22 Apr 2026 14:23:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776893017; cv=none;
        d=google.com; s=arc-20240605;
        b=ImXnCQNNJoEVRzkJ526ZSHC2UVmChyEhVbNwtbwB7L8SkRg7ZAz1tyn3sfIWlI+pGR
         tND6g/zIVovbAb2stRC4s6KR24yKKwC6Vz9vcQblJph/zHKhj9awXsfAzSaYI7Iz/fpF
         27mXSgMrJ5sdcAqwgiCwLnoDWcwHPpaUc3nvbd5mO4/2FXYLYTn7aBnHShf6wwjJL8Dr
         PmqHpXCCQld0PTurG8Owwk9jHSx+rifRVNgByfrMzQmcPDv6kvUUi/9pNYXmOvdpVlRV
         8TRLcyBBgewHX1N5zLjtPrrzG+REwjtefzWebcywIxklnibSQJlRKNpy70EJfVOYNBiE
         gSkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=s14F4+U+fiOO5z9PX8mQNSNJuLu++CLvQdDLMxGrhzg=;
        fh=l72yueyB99PNpHfbi8smftIqVo+OdKAxOBDWH1AI86M=;
        b=h6Dfa0oJ0nbpjJFIMrR4K9Vji9nL9lMaAjKogAg+z2s4OW/LD/43EovU7icb/fEL7H
         jJpdNghBB/IWFIIN3FOc9O44Li0dEHwIlmboHuwAtUPOP4H/3Vetfz4umsGj583p4xuw
         QTH3O5pEM6Q9eaeZ1r5eyVD+aqfggVbxQ68WJlElq4G5esMUpvHu5+SREzXS5VRWLTCk
         7RF3XWKQ8v/pYHEYBMqUJiTGfAQ6eMCk5+6HPNkqLoiUDtpZyA7rArEcoI0JVRvEv3Gm
         P3gtSuETpZ0xPHpD/b+nudb1+IIPBfp6PpfQFAtxYryF34eFOVvHNcSH4XG0yMnfYmOr
         vZng==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776893017; x=1777497817; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=s14F4+U+fiOO5z9PX8mQNSNJuLu++CLvQdDLMxGrhzg=;
        b=apyiJ08PIDjt+s1PrqXWodWQkKDtVl0IiHCWzkezu6rJ3QvnaQ1Nh+O6qCGCowlMKQ
         eix/77K2SXa+LzesSgoMmUify0TS0VmDDNcXxtzUGfoBaL0xpQmN/wQjTe7vafI6xn7/
         6Eh1uG2bDDPHLVV9oZEWZtDtgN9d/vefgdYtnV7lhptt4ftl/ej4IO8mgG2E/lJln1ws
         7FeZcd5ZnKlrjVQ69kb2pPJaAaiacMUhhMlyz9ceJRp7fTTF3XUMvOnEKgracrPGJgNr
         60TrY2FMMcl/CHu1x8V55+VnCW50P2ExeCbI0XclwR622k9A0lXzu1fT4ykMM41MKC2/
         +a8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776893017; x=1777497817;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s14F4+U+fiOO5z9PX8mQNSNJuLu++CLvQdDLMxGrhzg=;
        b=j8NTDS6oaZg322SnK1uZmx+A4F6tJNOX7Lh1/FMFmAKeslxIBqZRbDNwGODH1ASUku
         0dfVIG3g3F/hlj8C7zAvr+f3ZjzEnUh/qAL5Xxlcjxe+EdXxoXdBgRVCf2h8gZKX4+wc
         bt+z6F6LkVsxIAZYisC7eakQUF4b19TMV6r+jeLKVtpo3RdPgIYWmRZS3Lqh2POJ+HHL
         DMeBDVC1DyFrAy3BQYREF8RcPSMjpqI/l4VSDbg5uIzLm/CW8OlxWn6002hJkjlqU8NT
         JR3S4XchJeVFLJzNQ0UZcVf2Jc3LflIK1v0sB+p5yfK4SJPgmSmSxSH9VoNHlSAR+eI2
         tvVQ==
X-Gm-Message-State: AOJu0Yx+kHDOaXsmqm/f4Mas7FErg/QW8cE6ld7zR857+8Itb1RBkaV5
	ohV75Mp/nor/mHjKCw0v0VYrkapYWs+y7H1eVwhJwYofuElMNr4gnAsqJjWdxntDMv7F0FmFdRV
	JY/UovFD7FI4PM4AB0XmEWwgQoW/CU+Y=
X-Gm-Gg: AeBDietg9XH6pF3gWywI6+rKXtd+W37Rql83w8PAQk/1LAj41qj3voTcU7/M9e5E3EP
	2Z2Fh+KYwKk2XXf+MlZgu9oYCF/z9K/vGT0WyY47z5SeKZa0KCWNgjfuq2QFwK4ZRTua2mRkguK
	lzU6yzuyrRzlGY4PG+VGpqFIMDCdbMBB3pacoW1KFn7iQ4qoHYFSYamuj4E4DuIEwB1SshqM/0k
	67t/5zS7AxsSE89FwfY8guy3+agaRvkAFP0wljTd9oaF210NSXz6x293zK80fs9+lnqynQuMkS+
	FgX95x2MLiWYN5ihGQgJ29oAFFznYyZH8CoMVZHDfR6EsMkj4Nx4/QWOhVrd1pEr8beKODhNAZB
	4qoMjJZLAojZ3PeVXO8ZR8PCbC/vCco/9MrXo/PtG7RM8cBWOo2LNLminNoaai0HI3+GLgAuEeD
	YeFpNwvH4njmgzVQk=
X-Received: by 2002:a05:690e:438e:b0:651:d05f:1db4 with SMTP id
 956f58d0204a3-65310aa9487mr16440810d50.53.1776893017326; Wed, 22 Apr 2026
 14:23:37 -0700 (PDT)
MIME-Version: 1.0
References: <d63R.1776892621156872677.1gEq@lists.yoctoproject.org>
In-Reply-To: <d63R.1776892621156872677.1gEq@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 22 Apr 2026 14:23:11 -0700
X-Gm-Features: AQROBzB6hrdfezxiAQWM8jsXCrNNqDpPwV1-_-Jm9523UNBA77VD9SiHVtRUv7c
Message-ID: <CAMKF1sqWw+F=66NAqch8QxrNM6cYc1uc-Y7eaoiZ9vY0k7vvTg@mail.gmail.com>
Subject: Re: [poky] Installing a third-party package
To: rustyhowell@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001a074a06501325a6"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 22 Apr 2026 21:23:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13913

--0000000000001a074a06501325a6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 22, 2026 at 2:17=E2=80=AFPM Rusty Howell via lists.yoctoproject=
.org
<rustyhowell=3Dgmail.com@lists.yoctoproject.org> wrote:

> I could use some help with the scenario I have.   We have a 3rd-party
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
> package on first boot?
>

bin_package is best effort, since packages from binary distros have
dependencies and configuration metadata that might not match OE
provided dependencies. In short, there is no magic switch to ingest a deb
or rpm and magically get the deps fixes and spit our YP compliant package.


> Thanks in advance.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13912):
> https://lists.yoctoproject.org/g/poky/message/13912
> Mute This Topic: https://lists.yoctoproject.org/mt/118962603/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000001a074a06501325a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 22,=
 2026 at 2:17=E2=80=AFPM Rusty Howell via <a href=3D"http://lists.yoctoproj=
ect.org">lists.yoctoproject.org</a> &lt;rustyhowell=3D<a href=3D"mailto:gma=
il.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>I could=
 use some help with the scenario I have.=C2=A0 =C2=A0We have a 3rd-party ve=
ndor that has provided us with a debian package for us to include in our OS=
 image.=C2=A0 The vendor maintains the package feed and provides updates pe=
riodically.=C2=A0 I need to find a way to get the their package installed i=
nto our OS image.=C2=A0 Not just extracted into, but installed with dpkg me=
tadata and everything.=C2=A0 =C2=A0Using bin_package works... kinda. It lea=
ves out some things like postinst and the versioning can change. Is there a=
nother way to incorporate a third-party package that would be closer to ins=
talling the package on first boot?=C2=A0 </div></blockquote><div><br></div>=
<div>bin_package is best effort, since packages from binary distros have de=
pendencies and configuration metadata that might not match OE</div><div>pro=
vided dependencies. In short, there is no magic switch to ingest a deb or r=
pm and magically get the deps fixes and spit our=C2=A0YP compliant package.=
</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv>Thanks in advance.</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13912): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13912" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13912</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/118962603/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/118962603/1997914</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail=
.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000001a074a06501325a6--

