Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52273C4345F
	for <webhook@archiver.kernel.org>; Fri,  3 May 2024 22:05:31 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
 by mx.groups.io with SMTP id smtpd.web11.2477.1714773926568418162
 for <poky@lists.yoctoproject.org>;
 Fri, 03 May 2024 15:05:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TW6SkG1h;
 spf=pass (domain: gmail.com, ip: 209.85.128.175, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-61af74a010aso1306387b3.0
        for <poky@lists.yoctoproject.org>; Fri, 03 May 2024 15:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714773926; x=1715378726; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+kTCucj2kX9/p70Sd+JxUHNJF5v5Dsr2fnM8RBmCBHo=;
        b=TW6SkG1hVj6zn7DRsmg9yVhy9cFLjvHr0YucCLO31eRQNjwdNH1ZEMpLhkfwgWOlhK
         qs2BzUjmA1ylbrKPQSJi0gEAEcIyUem56TQtDsN9NkhV5EVSw2hL27Y7SVcvHLPk5MrI
         Ad3Hj0/lQkThkCe1v2PXwr0pfcbpQh5N0wePkXpUfBdwKpmkrBSuHU499HhTAgs8IPIo
         fMJeHC/ALz1VKfy44XHhgrniNmjAvRnYYn53QMe6mBn01V7Z6v3z/UI1fjS472p+Wm99
         zujTP8itFRgNh/E00Wax19dh0bnfph4nPitVZjaHQeBJPifsUvvzrg0+/VKHklGqNDU9
         JCuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714773926; x=1715378726;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+kTCucj2kX9/p70Sd+JxUHNJF5v5Dsr2fnM8RBmCBHo=;
        b=K42DMm1p0Fq8a/W/3t6LhmNfe0RGnHAKTxqcs0LM/UYutHjxbrZiumEklx6DwD2o0r
         rkwmWgHjc+a5QMwAQAl1XlfH3a/3HKB/LpIP6xg/JdzDtDNLqqwlKHAgoJCjc1gq0GbB
         LZuu0Hb0zagCixiq9kXQw/t6X08jzQspstfBaHMfUZ5joBfHCRjhkzGQolevh+s2kEV0
         Y+KFpHrDPe21SYbjRFYLjIWjV3VWMwozjq7f7OUTvM3mIQ/cnQhqV1gPDNbyRVSPJuWz
         4CxQ1rw7ZvsLUclp7v2Ve8QRaX9IiSqoQHKPG+2QhwiAPfuxPpjkq/jnashflk6rOwm3
         Mw1g==
X-Forwarded-Encrypted: i=1; AJvYcCU/q0hMFAgb+8axEd+lHkV/rjJ7bhUPAjW8hSZiLfWe/FDz+m/+DX3W9lKxyfr06oxJe3glkruwPNE6rTpr0LvtJOH6WOg3aM1ebl8=
X-Gm-Message-State: AOJu0Yx4XFbAwLN79YVzgTXjRpth+z05m8fEDegZxbDy6iuzMl8hW79M
	3ymWOz0FiymvLs0v0JoQSOH9FdddMacFcW8IRhljbQS3s7K4WohwG3zt5Jqqcns5Z5SVpYlUrWT
	+FM6Qervo+LHpo9WaU7lQOS2tZ6U=
X-Google-Smtp-Source: AGHT+IFC+xlX596EGlL+vs9tT+Vin0q8QWdy+/U9kP/dMbq5vEr5wfBbWgauv4mPUP3ZPzcpu3DI6KaMgh45UAfC/fs=
X-Received: by 2002:a81:8496:0:b0:61b:3356:d28c with SMTP id
 u144-20020a818496000000b0061b3356d28cmr3595848ywf.2.1714773925660; Fri, 03
 May 2024 15:05:25 -0700 (PDT)
MIME-Version: 1.0
References: <qh3Z.1714769469064666711.FU9O@lists.yoctoproject.org>
 <17CC16C45BFE63A1.24380@lists.yoctoproject.org> <17CC16D04DD31A27.11769@lists.yoctoproject.org>
In-Reply-To: <17CC16D04DD31A27.11769@lists.yoctoproject.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 3 May 2024 15:05:14 -0700
Message-ID: <CANx9H-BgMauQu6pOPpfgE3VhFoQ0yrznOe982dWBpFiKmmi2Og@mail.gmail.com>
Subject: Re: [poky] Changing permission for udev file devices in poky
To: ticotimo@gmail.com
Cc: ruom9900@gmail.com, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b58f8f061793ea05"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 03 May 2024 22:05:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13346

--000000000000b58f8f061793ea05
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 3, 2024 at 2:10=E2=80=AFPM Tim Orling via lists.yoctoproject.or=
g
<ticotimo=3Dgmail.com@lists.yoctoproject.org> wrote:

>
>
> On Fri, May 3, 2024 at 2:09=E2=80=AFPM Tim Orling via lists.yoctoproject.=
org
> <ticotimo=3Dgmail.com@lists.yoctoproject.org> wrote:
>
>>
>>
>> On Fri, May 3, 2024 at 1:51=E2=80=AFPM ruom9900 via lists.yoctoproject.o=
rg
>> <ruom9900=3Dgmail.com@lists.yoctoproject.org> wrote:
>>
>>> Hello,
>>> I'm trying to change the file ownership rules for i2c devices by
>>> specifying the group to be a custom group. Im creating the custom group=
 in
>>> my local.conf file with EXTRA_USER_PARAMS , is there a way to modify th=
e
>>> file permissions from the local.conf file instead of the devfs-udev.rul=
es
>>> file ?
>>
>>
>> You probably want to do a bbappend and modify the do_install with chmod
>> command.
>>
> or chown might be more appropriate for your custom group use case.
>

On further thought, I think you should add your custom group/user to the
existing udev group. Do not reinvent the wheel.

Perhaps you could share some more details about what you are trying to
achieve and why you are asking these questions. It is possible you are
going down the less-optimal path and we might be able to help you more with
more information.


>
>>
>>>
>>>
>>>
>>
>>
>>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13345):
> https://lists.yoctoproject.org/g/poky/message/13345
> Mute This Topic: https://lists.yoctoproject.org/mt/105896480/924729
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000b58f8f061793ea05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 3, 2024 at 2:10=E2=80=AFP=
M Tim Orling via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproje=
ct.org</a> &lt;ticotimo=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.or=
g">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Fri, May 3, 2024 at 2:09=E2=80=AFPM Tim Orling via <a href=3D"http://lists=
.yoctoproject.org" target=3D"_blank">lists.yoctoproject.org</a> &lt;ticotim=
o=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"_blank">g=
mail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On F=
ri, May 3, 2024 at 1:51=E2=80=AFPM ruom9900 via <a href=3D"http://lists.yoc=
toproject.org" target=3D"_blank">lists.yoctoproject.org</a> &lt;ruom9900=3D=
<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"_blank">gmail=
.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Hello,<br>I&#39;m trying to change the file owne=
rship rules for i2c devices by specifying the group to be a custom group. I=
m creating the custom group in my local.conf file with EXTRA_USER_PARAMS , =
is there a way to modify the file permissions from the local.conf file inst=
ead of the devfs-udev.rules file ?</blockquote><div><br></div><div>You prob=
ably want to do a bbappend and modify the do_install with chmod command.</d=
iv></div></div></blockquote><div>or chown might be more appropriate for you=
r custom group use case.</div></div></div></blockquote><div><br></div><div>=
On further thought, I think you should add your custom group/user to the ex=
isting udev group. Do not reinvent the wheel.</div><div><br></div><div>Perh=
aps you could share some more details about what you are trying to achieve =
and why you are asking these questions. It is possible you are going down t=
he less-optimal path and we might be able to help you more with more inform=
ation.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>
<br>
</blockquote></div></div>
<br>
<br>
<br>
</blockquote></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13345): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13345" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13345</a><br>
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

--000000000000b58f8f061793ea05--

