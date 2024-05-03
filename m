Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1827DC4345F
	for <webhook@archiver.kernel.org>; Fri,  3 May 2024 21:09:51 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web10.1306.1714770590551542704
 for <poky@lists.yoctoproject.org>;
 Fri, 03 May 2024 14:09:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lFrAQMjT;
 spf=pass (domain: gmail.com, ip: 209.85.128.177, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-61e0f733e8aso829397b3.0
        for <poky@lists.yoctoproject.org>; Fri, 03 May 2024 14:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714770590; x=1715375390; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vCFhAJBAg+I2BBQPspdZIeeD5G3MnCNetiDN6DH/T7s=;
        b=lFrAQMjTeWrBOme8n1m11soUtqGqeIRRF1ol5GYcZaLRwe0sGd7hBkCIMCX6pdYyXt
         PYSmohMF9XrK+Ik31wr1C+hR8pAefHsoaDulTYT4p6vY/64U9KKbLa9l4N+hoNvXVu9W
         EPIbLUTSknmfWSBBOP+uZT3jYWO6XwzKKymL495d2x2WwXFulLsXixe0ulO4PdeAo3Rj
         VBDWJ272G+3gqmsxXwZgnslgPtsStJ6OLimx1ESeWpoZcLA/3Io89Nrie1sqSn0udo4V
         I8w1VJAhHhCF9IcHAVY715GDwNDWeKueQuU3yoIczPpy3SoItc4m5rhtgCSo/19fIz33
         F16w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714770590; x=1715375390;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vCFhAJBAg+I2BBQPspdZIeeD5G3MnCNetiDN6DH/T7s=;
        b=PmVA6xA0fWWTf0KHBgc1O8K7etqE4/AmU5+jtPbbx8nHcvu6aKwcfRqx8IymJRzrxM
         NSidjBW+39jc6ld59hdiew3rnSvj2rCnHZ+I/aomyJr8qciCHriFzggKy/qedplHzn8M
         yCy73rhMDxpOiKM34L5pqc7xUkCkJ4oQq0GnRIy13s/O1n1dBKiwOxC+ergnrD1ttHP+
         0yrQWn7RRNW8Zecv6Zq3WvXF1t1FRINT1yyzXaN0ASWqgqyzrApv01uqtgBJVnej4r5C
         XY7tWDrE0JWXDet21aq92v9lzGf286hE8Jr7aVuCjOIyqe7UVx2lVwklbOapjwTgZxQp
         NBSw==
X-Gm-Message-State: AOJu0YyjHUb8QkeJQ0TWLjBQxQWy/a59vIQ9VMVZMYR9UseKrI7lkOoz
	ZHaYiNJ6D7te+89BuySwu4cjarjoJAOV73dcn+LA+0NtcTdqdqtmlGAZaziQ8MIS/LHUruhPqha
	CHatxGE6J/XY2ghu+JURY2lJgjsg=
X-Google-Smtp-Source: AGHT+IFCSEskvOAVE2WuG/qN3Iw/CYKxm+9OjWE/YPF0eSVX6w8JqPWhiRW5KskUvmPpW5+KmkTKrp6B3laG1mlULxY=
X-Received: by 2002:a81:4895:0:b0:61a:af28:ed1a with SMTP id
 v143-20020a814895000000b0061aaf28ed1amr3728163ywa.31.1714770589671; Fri, 03
 May 2024 14:09:49 -0700 (PDT)
MIME-Version: 1.0
References: <qh3Z.1714769469064666711.FU9O@lists.yoctoproject.org>
In-Reply-To: <qh3Z.1714769469064666711.FU9O@lists.yoctoproject.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 3 May 2024 14:09:38 -0700
Message-ID: <CANx9H-DZ3GdmHp9KGGf3QDhxmf+FuRQSqOJd8LwWD_jb78f8DA@mail.gmail.com>
Subject: Re: [poky] Changing permission for udev file devices in poky
To: ruom9900@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000de661d0617932358"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 03 May 2024 21:09:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13344

--000000000000de661d0617932358
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 3, 2024 at 1:51=E2=80=AFPM ruom9900 via lists.yoctoproject.org
<ruom9900=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hello,
> I'm trying to change the file ownership rules for i2c devices by
> specifying the group to be a custom group. Im creating the custom group i=
n
> my local.conf file with EXTRA_USER_PARAMS , is there a way to modify the
> file permissions from the local.conf file instead of the devfs-udev.rules
> file ?


You probably want to do a bbappend and modify the do_install with chmod
command.


> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13343):
> https://lists.yoctoproject.org/g/poky/message/13343
> Mute This Topic: https://lists.yoctoproject.org/mt/105896480/924729
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000de661d0617932358
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 3, 2024 at 1:51=E2=80=AFP=
M ruom9900 via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject=
.org</a> &lt;ruom9900=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org"=
>gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hello,<br>I&#39;m trying to change the fil=
e ownership rules for i2c devices by specifying the group to be a custom gr=
oup. Im creating the custom group in my local.conf file with EXTRA_USER_PAR=
AMS , is there a way to modify the file permissions from the local.conf fil=
e instead of the devfs-udev.rules file ?</blockquote><div><br></div><div>Yo=
u probably want to do a bbappend and modify the do_install with chmod comma=
nd.</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13343): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13343" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13343</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/105896480/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/105896480/924729</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@gmail=
.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000de661d0617932358--

