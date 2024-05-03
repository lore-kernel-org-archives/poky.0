Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA207C4345F
	for <webhook@archiver.kernel.org>; Fri,  3 May 2024 21:10:50 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web10.1318.1714770641860873697
 for <poky@lists.yoctoproject.org>;
 Fri, 03 May 2024 14:10:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=D2Gs3L+W;
 spf=pass (domain: gmail.com, ip: 209.85.128.170, mailfrom: ticotimo@gmail.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-61804067da0so758017b3.0
        for <poky@lists.yoctoproject.org>; Fri, 03 May 2024 14:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714770641; x=1715375441; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Msi2mlK4N0GWU4YtSpIepXQJFY4lQ6P8PtYIpiOkVXg=;
        b=D2Gs3L+W0+0MtquSPY41hW/rDUo78qA1RM/4Z/lIMQidgnIzoNVGeuSiZwaCgH6Tfi
         bK3qjyfvqiQwo9iW/dNqkcSQwSAjP+qzt6nVjBKBwTueK5ZUV4Yy4XuYEfVKaA317QKc
         cn1keDnjQQ7jX2SVvSv8IhPO9ViBaM0msk3qkOdAsL31TEBB5/nQPBKnApFSY3WiK8hM
         n6UAyVO+Q3QZe5Fiib22StvE6sInwZ6jKudvy38fDGXgOs/HFHhWxxf3ax1PSFtyedWj
         QBSYZADvo3CMB6f0jRHZlUZNoc7w36iTC1xvg+0Ixqgz83sJbPFmrzHHF0goADbkf4OU
         6CJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714770641; x=1715375441;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Msi2mlK4N0GWU4YtSpIepXQJFY4lQ6P8PtYIpiOkVXg=;
        b=TKLlyq5sQru1Hb6ZMFpFhyikcEO5FPRnxtFa6kXOuF4Z7wPGZ7x+iEh9q0tWxg9BdI
         jRvpQHhgx4ccuu8in7m/NzYF2PTmRt3DnyXjkK1ea3faC0Q5ONmeak10n1jPU7lnsdwu
         CRvPhABD2uujVGpeP3eiK3hBpcYg1xhQ24x/x2QU71U4HHpW5ZJfbxMBhd6RyYRBQDQ5
         3HF4PZiqM+ZN2XWZWGIXwC/+BCKn4dEfoFZXslatoH2yYbZPR4ygxYCQdE8tgItFKc3l
         3QILcDhIm06Cq5nK8SUrYqLWRpdKcZ2rYQtlCMJ/Nu5A3CSIJ2HQ/v062DCxCYvHhbcp
         KhUQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2l8CTD44OQwza9bDqEsBgivgpMVYnI0qSuDaeZLYCcgi7gYbgcFqMzTJFccXY1IFd667CSMs7rLJ8bVaieM2roX8Jq6KSbsLNsCA=
X-Gm-Message-State: AOJu0YwfuyZANaS+7EcDWjZV2B6z6JCk60OQUgszI9jLUW/demlO9UCW
	QkAQk/9q4lTNf1i0UHRpnF205521L7r5FGqQURaKDpuihrv1sE0qrV9jpQBggrjbmJT57qjS72t
	q/3jzypIDGfu2pjJ4ZnkFBHJ/6j08SA==
X-Google-Smtp-Source: AGHT+IFUFJOOiTWNqNyD0QOuo9mdfsSfWpJYEOn3LJPbMye0w37ockF163nfufwvG5RDd1sek6DxPaEfavt0h9uzBg4=
X-Received: by 2002:a0d:e6ca:0:b0:61a:b548:93a8 with SMTP id
 p193-20020a0de6ca000000b0061ab54893a8mr4032186ywe.1.1714770640967; Fri, 03
 May 2024 14:10:40 -0700 (PDT)
MIME-Version: 1.0
References: <qh3Z.1714769469064666711.FU9O@lists.yoctoproject.org> <17CC16C45BFE63A1.24380@lists.yoctoproject.org>
In-Reply-To: <17CC16C45BFE63A1.24380@lists.yoctoproject.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 3 May 2024 14:10:29 -0700
Message-ID: <CANx9H-D=YcoVUK+xJJdKTZg0haFeLZyojUvUuY2g_1UQjRo0pg@mail.gmail.com>
Subject: Re: [poky] Changing permission for udev file devices in poky
To: ticotimo@gmail.com
Cc: ruom9900@gmail.com, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ed1f980617932614"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 03 May 2024 21:10:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13345

--000000000000ed1f980617932614
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 3, 2024 at 2:09=E2=80=AFPM Tim Orling via lists.yoctoproject.or=
g
<ticotimo=3Dgmail.com@lists.yoctoproject.org> wrote:

>
>
> On Fri, May 3, 2024 at 1:51=E2=80=AFPM ruom9900 via lists.yoctoproject.or=
g
> <ruom9900=3Dgmail.com@lists.yoctoproject.org> wrote:
>
>> Hello,
>> I'm trying to change the file ownership rules for i2c devices by
>> specifying the group to be a custom group. Im creating the custom group =
in
>> my local.conf file with EXTRA_USER_PARAMS , is there a way to modify the
>> file permissions from the local.conf file instead of the devfs-udev.rule=
s
>> file ?
>
>
> You probably want to do a bbappend and modify the do_install with chmod
> command.
>
or chown might be more appropriate for your custom group use case.

>
>
>>
>>
>>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13344):
> https://lists.yoctoproject.org/g/poky/message/13344
> Mute This Topic: https://lists.yoctoproject.org/mt/105896480/924729
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000ed1f980617932614
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 3, 2024 at 2:09=E2=80=AFP=
M Tim Orling via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproje=
ct.org</a> &lt;ticotimo=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.or=
g">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Fri, May 3, 2024 at 1:51=E2=80=AFPM ruom9900 via <a href=3D"http://lists.y=
octoproject.org" target=3D"_blank">lists.yoctoproject.org</a> &lt;ruom9900=
=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"_blank">gm=
ail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">Hello,<br>I&#39;m trying to change the file o=
wnership rules for i2c devices by specifying the group to be a custom group=
. Im creating the custom group in my local.conf file with EXTRA_USER_PARAMS=
 , is there a way to modify the file permissions from the local.conf file i=
nstead of the devfs-udev.rules file ?</blockquote><div><br></div><div>You p=
robably want to do a bbappend and modify the do_install with chmod command.=
</div></div></div></blockquote><div>or chown might be more appropriate for =
your custom group use case.=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>
<br>
</blockquote></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13344): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13344" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13344</a><br>
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

--000000000000ed1f980617932614--

