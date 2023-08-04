Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D38C001DF
	for <webhook@archiver.kernel.org>; Fri,  4 Aug 2023 16:05:07 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.1099.1691165104015593336
 for <poky@lists.yoctoproject.org>;
 Fri, 04 Aug 2023 09:05:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=UT3iSovK;
 spf=pass (domain: gmail.com, ip: 209.85.221.54, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3128fcd58f3so2072557f8f.1
        for <poky@lists.yoctoproject.org>; Fri, 04 Aug 2023 09:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691165102; x=1691769902;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JyN0m3dZfbktBeSPQrFIO9ZUREy8eYYtTn+RtIjDnCk=;
        b=UT3iSovKUtPPWwv8WEEzL4X+QLR0HRNT8aFX4KYOHOVWvCdQGhsrG00oy5JffGSiaX
         yytmuNobNgoOyXIJzQkM38sjh04gJx38gZMeW6Lb/k633lgEXZLx7JXTJQalGr2RmBSl
         ayRCqFhMcF3oENBAv/YSK1/CFD/h8kfZxW5CLApiLRnwBH9VPfWVSjiJS159Wd2S+YP1
         p1aKqhgJFAXjk4SWRt56RQUSY+4U3m65yERbAQ8KBAMmiRqdEzwTgnXDLLSXBpx6BLMz
         JQmuc6PEu+Tacj8JZtUP7xBLK7jZmFQX+KvTzO0EfhF0cuYoMBPIhcCgXS4J5RY7c3zk
         Esfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691165102; x=1691769902;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JyN0m3dZfbktBeSPQrFIO9ZUREy8eYYtTn+RtIjDnCk=;
        b=IMb4ArMpkZVFvNkB+gy+cKmJJ+GnQy76AtUS1sGqyibYeE4LB6tIoUn314QQKpszP5
         SDZPTUm3ta2dZvOQTlq9gnw9NoWd5JbkOBGJn96spJcf+Wfqbm+HEDOXn/nZkmWdB9QI
         YMa3GvIQa+/GOlJrqv4om/umJ3WLw7DrTK8JapemHlptRJ+y0JH7ENzFVvWGshTJrzsR
         mXK/GQsuTQyP/l03KVC2+bN45QKhY4AOkZDMC2x05+dugjSCmu/egGKUt9WEWLiPA4NU
         Y+AwsgLTHF6lu6RUzjhpbLfhmmZdetPjqKzqHnXeUo6AMz5PZklnpCoOGozkD4N1z7Pc
         CgkQ==
X-Gm-Message-State: AOJu0YxBqkaiTJ/szHUoVVGid7qOTvdNdNlsoDQvJ7F2mIQoDfktGZHM
	MC7rWqhAUzOCLiLnSED9XuaMFMfWizdDD7v+RV8=
X-Google-Smtp-Source: AGHT+IGKLB1j7laU/vXW49RUO331kTrKnyo+CDCGVz3E/+YLwnTR4y5zmfq5ip/PYXR226AC5SYS00ordI2r4P0UQSY=
X-Received: by 2002:a5d:5242:0:b0:314:dc0:2fca with SMTP id
 k2-20020a5d5242000000b003140dc02fcamr1623563wrc.29.1691165102136; Fri, 04 Aug
 2023 09:05:02 -0700 (PDT)
MIME-Version: 1.0
References: <CA+chaQdz5BXB4OUXZYNT06MVN3K+43URB1jVA=DCodP0Ev7u9A@mail.gmail.com>
 <18445.1691163577621123503@lists.yoctoproject.org> <CANNYZj9gxHUE4jxgDXpJC7XNH8oQYO+bB8fX0KQF+6WabgBaqQ@mail.gmail.com>
In-Reply-To: <CANNYZj9gxHUE4jxgDXpJC7XNH8oQYO+bB8fX0KQF+6WabgBaqQ@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Fri, 4 Aug 2023 18:04:43 +0200
Message-ID: <CA+chaQcem=5gayGPOC5EDYM-usk4Yy3NY=z0bTwSGmbFAYcvcg@mail.gmail.com>
Subject: Re: [poky] [LINUX-FIRMWARE] all pacakges in image
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: f.louveau@lacroix.group, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002b650a06021b0ffa"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 04 Aug 2023 16:05:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13114

--0000000000002b650a06021b0ffa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> So how to fix this in this poky.

I think if you update those packages to include not only the symlink but
also the target of the symlink in mediatek subdirectory, then it will work
fine.

Thank you for finding the root cause (you win 10 times more points than
previous guy :)).

Cheers,

On Fri, Aug 4, 2023 at 5:50=E2=80=AFPM Alexander Kanavin <alex.kanavin@gmai=
l.com>
wrote:

> Yes you can and it would be appreciated. The correct mailing list is
> openembedded-core@lists.openembedded.org.
>
> Alex
>
> On Fri, 4 Aug 2023 at 17:39, <f.louveau@lacroix.group> wrote:
> >
> > Many thanks,
> >
> > I didn't find in the correct mailing list :)
> >
> > Explanation: binaries for mediatek are moved inside a dedicated folder
> and symlinks are created to keep compatibility during transition.
> > This symlink causes the problem.
> >
> >
> https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.g=
it/commit/?h=3D20230515&id=3D8451c2b1d529dc1a49328ac9235d3cf5bb8a8fcb
> >
> > So how to fix this in this poky. Can I propose a patch ?
> > As you can imagine, I'm new to this
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13113):
> https://lists.yoctoproject.org/g/poky/message/13113
> Mute This Topic: https://lists.yoctoproject.org/mt/100545329/3617156
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000002b650a06021b0ffa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; So how to fix this in this poky.=C2=A0<br><div><br></=
div><div>I think if you update those packages to include not only the symli=
nk but also the target of the symlink in mediatek subdirectory, then it wil=
l work fine.</div><div><br></div><div>Thank you for finding the root cause =
(you win 10 times more points than previous guy :)).</div><div><br></div><d=
iv>Cheers,</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Aug 4, 2023 at 5:50=E2=80=AFPM Alexander Kanavin &l=
t;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Yes you c=
an and it would be appreciated. The correct mailing list is<br>
<a href=3D"mailto:openembedded-core@lists.openembedded.org" target=3D"_blan=
k">openembedded-core@lists.openembedded.org</a>.<br>
<br>
Alex<br>
<br>
On Fri, 4 Aug 2023 at 17:39, &lt;f.louveau@lacroix.group&gt; wrote:<br>
&gt;<br>
&gt; Many thanks,<br>
&gt;<br>
&gt; I didn&#39;t find in the correct mailing list :)<br>
&gt;<br>
&gt; Explanation: binaries for mediatek are moved inside a dedicated folder=
 and symlinks are created to keep compatibility during transition.<br>
&gt; This symlink causes the problem.<br>
&gt;<br>
&gt; <a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/firmware/li=
nux-firmware.git/commit/?h=3D20230515&amp;id=3D8451c2b1d529dc1a49328ac9235d=
3cf5bb8a8fcb" rel=3D"noreferrer" target=3D"_blank">https://git.kernel.org/p=
ub/scm/linux/kernel/git/firmware/linux-firmware.git/commit/?h=3D20230515&am=
p;id=3D8451c2b1d529dc1a49328ac9235d3cf5bb8a8fcb</a><br>
&gt;<br>
&gt; So how to fix this in this poky. Can I propose a patch ?<br>
&gt; As you can imagine, I&#39;m new to this<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13113): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13113" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13113</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/100545329/361=
7156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/100545329/3617156</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin.Jan=
sa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000002b650a06021b0ffa--

