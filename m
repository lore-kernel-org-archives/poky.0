Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.7488.1676643891569521996
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 06:24:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LoY0OMUS;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id e4-20020a05600c4e4400b003dc4050c94aso1078108wmq.4
        for <poky@lists.yoctoproject.org>; Fri, 17 Feb 2023 06:24:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6p39AYisWMYmp95LgBIrFbpjZjmYnFEgSYHl81QKXXQ=;
        b=LoY0OMUSxZBq7hpysI2Gl4B/1UmDdPZlSQEtcnhG6S5bgbQwxlmkf7uBYOQR4pIgnv
         aHUl2FltFiL3FlMZL1xEHYE0S4c28oO4BYdFvTYpscEMs4IEFQw1jfryyI33+X6q9DJn
         /go5wZ/PRYM054xpKERd/AvzZkZXfdanrzazhJ6QPB3L9uL7TuZTbNlSR4zcKJX2nFro
         3URpZQdxH1wjspirdA6N9YTVhvTdLEyGS0K+iTR9PZeKti/K9uvvhbhayMXyL/WikUv7
         GUlkzMEwNXxmKeuu+yhvkxvC1TiyJhQq18C7X+FiOZCYDwfDE4qeXFWj5GpVHqkmkICw
         Nm8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6p39AYisWMYmp95LgBIrFbpjZjmYnFEgSYHl81QKXXQ=;
        b=x1QIWj3g5ENJjXuVxnP55Qw/ewljZcEsl/1YkZAxZj7jraTsBYPQMn+IFk5RyupjzF
         oT4P7pzU3fyTMMS7f3fB5Veuz9Dh/Pd2Dw/SxFgYRSCDElv0PqFzxMfEH+x33e9YLVT0
         CVpXxlv//I51/5SO+L4yxkRpm2We3G5WRw+bP0znXPREGg0PYlmld0Ive+GtC/7fqOAK
         KUz9mfyq0BgHHWOHXVQwzmgjsOd+NTt1mZ4xvBhNph+g3ALeQBh4YQwsLQIdCrHdBv20
         pVXoGubujpi2ctOx85TPOaSqiV3U6e0ZS/2m1BPoYNys2vQO4WRFYfHFKrcLw1+mFEVY
         1tdA==
X-Gm-Message-State: AO0yUKV/Yn0QWZq6WYcbIy28MLoLu0ieQbcqx0Hqb9Ia6qMtMP6E8bsJ
	khQ+eH2TO7yHDMtxNYB9TdZpAxasKkylS5dxoUM=
X-Google-Smtp-Source: AK7set9chVly0mUspuQfHSXVLh6Bcdyg/VeIwFA/uvViHc7bh8cges+RoroE2HD3MnXue7+0WsypwhOPiX8KiAapZ5U=
X-Received: by 2002:a05:600c:1e85:b0:3dc:546c:b2ec with SMTP id
 be5-20020a05600c1e8500b003dc546cb2ecmr566234wmb.32.1676643889955; Fri, 17 Feb
 2023 06:24:49 -0800 (PST)
MIME-Version: 1.0
References: <BooD.1676632109346078064.HPtY@lists.yoctoproject.org>
 <CANNYZj8DU7twqWsXKq3F95efV80i3jQHRF1bBnNk8kZR_xR+pA@mail.gmail.com> <CAOSpxdZsZ-LE6-y-M3=0Tg79=UYNX61v3F+WhomwHEheQp83JA@mail.gmail.com>
In-Reply-To: <CAOSpxdZsZ-LE6-y-M3=0Tg79=UYNX61v3F+WhomwHEheQp83JA@mail.gmail.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Fri, 17 Feb 2023 15:24:34 +0100
Message-ID: <CA+chaQeZAaN=yxcsv_Jp8AOuF9GdTA0wmesp-ttzXczs6N2qGw@mail.gmail.com>
Subject: Re: [poky] Test dunfell LTS release on UBUNTU LTS 22.04 #yocto
To: Steve Sakoman <steve@sakoman.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, Kamel Fezzani <kamfezz@gmail.com>, 
	poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000079c81405f4e61350"

--00000000000079c81405f4e61350
Content-Type: text/plain; charset="UTF-8"

On Fri, Feb 17, 2023 at 3:22 PM Steve Sakoman <steve@sakoman.com> wrote:

> On Fri, Feb 17, 2023 at 2:24 AM Alexander Kanavin
> <alex.kanavin@gmail.com> wrote:
> >
> > The list of distributions is simply what the yocto CI is using to run
> > test builds. It doesn't mean that 22.04 will not work, but you may run
> > into issues, mostly caused by newer ubuntu compiler building an older
> > set of native recipes in dunfell. If you have compelling reasons to
> > move to 22.04, you can also install buildtools tarball which will
> > insulate you from the host tools: scripts/install-buildtools
>
> You should be fine with 22.04 and dunfell.
>
> I've been using it for my local test builds for a few weeks now, and
> was just preparing a patch to enable it on the autobuilder.
>
> Once I have a week or two of testing on the autobuilder I'll send a
> patch to add 22.04 to the "officially supported" list.
>

I'm using unrelased ubuntu 23.04 in container and dunfell still builds with
it fine, needs only small fix in bitbake I've sent after seeing this
question (I've already forgot that I still have it in my jansa/1.46 branch).

Regards,

--00000000000079c81405f4e61350
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Feb 17, 2023 at 3:22 PM Steve Sak=
oman &lt;<a href=3D"mailto:steve@sakoman.com">steve@sakoman.com</a>&gt; wro=
te:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">On Fri, Feb 17, 2023 at 2:24 AM Alexander Kanavin<br>
&lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavi=
n@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; The list of distributions is simply what the yocto CI is using to run<=
br>
&gt; test builds. It doesn&#39;t mean that 22.04 will not work, but you may=
 run<br>
&gt; into issues, mostly caused by newer ubuntu compiler building an older<=
br>
&gt; set of native recipes in dunfell. If you have compelling reasons to<br=
>
&gt; move to 22.04, you can also install buildtools tarball which will<br>
&gt; insulate you from the host tools: scripts/install-buildtools<br>
<br>
You should be fine with 22.04 and dunfell.<br>
<br>
I&#39;ve been using it for my local test builds for a few weeks now, and<br=
>
was just preparing a patch to enable it on the autobuilder.<br>
<br>
Once I have a week or two of testing on the autobuilder I&#39;ll send a<br>
patch to add 22.04 to the &quot;officially supported&quot; list.<br></block=
quote><div><br></div><div>I&#39;m using unrelased ubuntu 23.04 in container=
 and dunfell still builds with it fine, needs only small fix in bitbake I&#=
39;ve sent after seeing this question (I&#39;ve already forgot that I still=
 have it in my jansa/1.46 branch).</div><div><br></div><div>Regards,</div><=
/div></div>

--00000000000079c81405f4e61350--
