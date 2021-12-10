Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web09.5781.1639135262823021144
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Dec 2021 03:21:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=KYeydcD4;
 spf=pass (domain: gmail.com, ip: 209.85.208.44, mailfrom: bewithsathish@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id l25so29067042eda.11
        for <poky@lists.yoctoproject.org>; Fri, 10 Dec 2021 03:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LDiKfOInIxA4NAWodBi5POrjQuJpSDn5EsVJ9iW5rg4=;
        b=KYeydcD451E+4+v7wSoEsLucjSgw9La47E0D+kazNx0Oo0oQtVEcpudPCSE9/rcXUg
         XVEhcf90M78HG2g4SLwUckYVeH4y3RsN00Edc5j5ND5h1DQR0ZptnHf8ES29ll7Qaqcz
         rBDrOowCL5gR/HVqVQkpAHuKIlMhcmZlJQ1HwBeDoJpFAZGY0epW7bQXCPoGQQVB2xXW
         pyWcujuTmDtxUlip2EZZyFBhmp7Ajnkq9AiuUSSw5T7F6yjhKCAhR2c2vVLy50UNmaAM
         Qejn1IthiesR409japzHsNvMYIkbbPsasC+jMbsVfjAbN9ES8mGA6nQv8XOIwx4dpzxY
         hIPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LDiKfOInIxA4NAWodBi5POrjQuJpSDn5EsVJ9iW5rg4=;
        b=QzmcprUYZeLmqBx1cO0CsdSxGg70Rkt6E9Y/C1w4ItaGDDOVaMW7psNS9rTthbWSBH
         9sZkClgCF3OVG1RB1C46wqpli7dvesk2qogxtPZ61czUGjoHVZpWwJ4Pdqh4EP36uHob
         qtE/SM7SL3Hyad7589/AD/barwUhnX5IjA3uapQChurPRPzBIRVzqfp9X+t/7cVhp1Dt
         chIFaAJTBXrIbYoZw54IvPnfkCmK3tSvszITu1FBz6xGx+Sqwlidj4VFyRKU5d9UZyeG
         zZXHSHEWZYix3bwjYwID4HQT9D2mlg3dO5sdcPm2EnfulgnnIt36nH072zLtQHJxI9CO
         POdA==
X-Gm-Message-State: AOAM530VxlTbDuxPcmYH7RLkjib/DHdxwSSy6mlxSjcYsrsLAvBkzXjN
	hJdkOAJbOTW+mfsGr5GhNwNkRd+IMAyKKZxxB+w=
X-Google-Smtp-Source: ABdhPJz1NSfSdi3eM777eH59dLwoswZy3VXJsTkylwdPxaFiTYLGCDnHgLIuCifwm7DaH+9/RmIU5SYa4r0i1ZxSf24=
X-Received: by 2002:a05:6402:42d5:: with SMTP id i21mr37977595edc.373.1639135261156;
 Fri, 10 Dec 2021 03:21:01 -0800 (PST)
MIME-Version: 1.0
References: <CANJvwR9F1Dpw6WUwXm1vV=0V_u51Y7huoAZiBP4YpF56L_peKg@mail.gmail.com>
 <CAAnfSTtpC58iCUGto9-kmf5WDj9SVpwE0PX2HxPMjrtEURhRSg@mail.gmail.com>
In-Reply-To: <CAAnfSTtpC58iCUGto9-kmf5WDj9SVpwE0PX2HxPMjrtEURhRSg@mail.gmail.com>
From: "Sathishkumar Duraisamy" <bewithsathish@gmail.com>
Date: Fri, 10 Dec 2021 16:50:49 +0530
Message-ID: <CANJvwR8LUY4+Qv4+OodzmWHjTc3BG2ckv=ZdeM+oaZd1H_GKxg@mail.gmail.com>
Subject: Re: [poky] Linux time is initialized as build time
To: Ross Burton <ross@burtonini.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000fae8ff05d2c8ea99"

--000000000000fae8ff05d2c8ea99
Content-Type: text/plain; charset="UTF-8"

Hi Ross,

Thank you for your quick reply. I am able to set my preferred time with the
rootfs_update_timestamp function. And I found
further the rootfs-postcommands.bbclass with which I can tweak a little
more.

Thank you,
Regards,
Sathishkumar D

On Fri, Dec 10, 2021 at 4:28 PM Ross Burton <ross@burtonini.com> wrote:

> On Fri, 10 Dec 2021 at 09:24, Sathishkumar Duraisamy
> <bewithsathish@gmail.com> wrote:
> > The time in the hardware is initialized as build time. How to change
> this, say set it to 1970/01/01 during yocto build.
>
> The init scripts do this by reading /etc/timestamp, so remove
> rootfs_update_timestamp from ROOTFS_POSTPROCESS_COMMAND and
> /etc/timestamp won't be created.
>
> Ross
>

--000000000000fae8ff05d2c8ea99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Ross,<div><br></div><div>Thank you for=
 your quick reply. I am able to set my preferred time with the rootfs_updat=
e_timestamp function. And I found further=C2=A0the=C2=A0rootfs-postcommands=
.bbclass with which I can tweak a little more.=C2=A0</div><div><br></div><d=
iv>Thank you,</div><div>Regards,<br>Sathishkumar D</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 10, 202=
1 at 4:28 PM Ross Burton &lt;<a href=3D"mailto:ross@burtonini.com">ross@bur=
tonini.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On Fri, 10 Dec 2021 at 09:24, Sathishkumar Duraisamy<br>
&lt;<a href=3D"mailto:bewithsathish@gmail.com" target=3D"_blank">bewithsath=
ish@gmail.com</a>&gt; wrote:<br>
&gt; The time in the hardware is initialized as build time. How to change t=
his, say set it to 1970/01/01 during yocto build.<br>
<br>
The init scripts do this by reading /etc/timestamp, so remove<br>
rootfs_update_timestamp from ROOTFS_POSTPROCESS_COMMAND and<br>
/etc/timestamp won&#39;t be created.<br>
<br>
Ross<br>
</blockquote></div></div>

--000000000000fae8ff05d2c8ea99--
