Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6223.1594460290919874429
 for <poky@lists.yoctoproject.org>;
 Sat, 11 Jul 2020 02:38:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=xq6AtLFa;
 spf=none, err=SPF record not found (domain: srin.me, ip: 140.211.169.56, mailfrom: s@srin.me)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5EE1E01E4C; Sat, 11 Jul 2020 02:38:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BC22E01E07
	for <poky@yoctoproject.org>; Sat, 11 Jul 2020 02:38:08 -0700 (PDT)
Received: by mail-ej1-f50.google.com with SMTP id w16so8614442ejj.5
        for <poky@yoctoproject.org>; Sat, 11 Jul 2020 02:38:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=THi3ehyBhvR5DRgdO6CtA74Zkx0CwBMtoemitTs8x+o=;
        b=xq6AtLFaKumkgM2Ea1u4dpUl87ryO5WGnIJqWvLQSP/Wmz9CuOk6dIw+ibXy/rD8DW
         JWAiGqNIU+R+dVvOwNuLNIcF7BYYgMAe9BKLHTjhONfo8IyiU05OD4fcXZcF8ARa+hoQ
         p983c7CAIQF4G6yB7uswe7PNPdfYqUPWsIfc9IsJbL+S+8AYTZ2oVvkprq3t655xy1U8
         TaKPl0gTpGmqw17Qn8/zsIAZTJ48mtMSJuOImt/odGwEEe/Oe0CXaSKRKEZcxx0SdUwl
         VPRUvH5vitllGTQwneUfZNFZsHzVDDSJtw5eoB6w9CuSdsCYQaZOAAh0Zf86C0ExHr/p
         SAHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=THi3ehyBhvR5DRgdO6CtA74Zkx0CwBMtoemitTs8x+o=;
        b=Tk279yc4R6b+PkBc0ZF9p1WLt/VLBRBZT5TY6oS2cu5CZtzDWdh4Fl6YgO/h4T1ced
         OZHOlAbrl0qU2VneeWCAis7vpAUyRS3acAaK6kBY8Zdx/VjbL65XWji9gLCQhhBNvXkR
         Dib0x16TPFvJySXc+ZhfEYRMfHXgrtfNz9wDRStQvLnUWrKmq6NH0EeWJHjlTZDG2HP+
         yZn8i2IcNFw7GY147jJLB3MRl3+UsR3faODu2E+fRuuhlPGRoFyGUCQW8//1I7xUcFyx
         zrMEv2NKz1Pr0aL9YdAJ7v23xQio5rtsypu3gJ5UxR89+ThbFGdRyxSJi/uqWt5yQrQV
         dg3w==
X-Gm-Message-State: AOAM5328rip495wnNVVgl8iav3HwZM3dLQKDg9dIVBLjdUZMvIq1/lfT
	DB9TWDMUsftJtul2cD5IpWcAaj60Qa5unOBhtdeDp38nKnc=
X-Google-Smtp-Source: ABdhPJxYU4C/6gV59pXnn+cagmdebv8pVKAdqDXcwwiCf1zIunUdtR8FYqmVbhwtKrP4DrLfKY7lwo7aUx4xRaRevdw=
X-Received: by 2002:a17:906:2b04:: with SMTP id a4mr62375194ejg.199.1594460287808;
 Sat, 11 Jul 2020 02:38:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAGNn0hYDMk+pSXarT1XbUOPmhyajUvcwTt7FmD78BEmeqZySzg@mail.gmail.com>
 <6753B8CB-00FC-44E2-821D-59E58DA45DE1@berg-solutions.de>
In-Reply-To: <6753B8CB-00FC-44E2-821D-59E58DA45DE1@berg-solutions.de>
From: "R Srinivasan" <s@srin.me>
Date: Sat, 11 Jul 2020 05:37:56 -0400
Message-ID: <CAGNn0hZ5VcKRx7uq1P1Ome-TP9FF9zmudRDaCHO39u1M=VvH3A@mail.gmail.com>
Subject: Re: [poky] yocto under WSL
To: Roelof Berg <rberg@berg-solutions.de>
Cc: poky@yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000010508105aa2737bf"

--00000000000010508105aa2737bf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Awesome, thanks!

On Sat, Jul 11, 2020 at 5:36 AM Roelof Berg <rberg@berg-solutions.de> wrote=
:

> Hi Srini,
>
> you can use docker on: Linux, Windows, Mac OS for Yocto development. It's
> better than a full VM. It starts in seconds, can easily exchange files an=
d
> is probably also faster in build times.
>
> Now it depends on what system you=E2=80=99re running on the laptop:
>
> On Linux: Just install docker, add an image based on ubuntu, mount your
> working directory into docker with -v
>
> On Windows: Upgrade Win 10 to Build 2004 (at least), install WSL2, instal=
l
> docker for windows, configure WSL2 in docker for windows, then call =E2=
=80=9Ebash=E2=80=9C
> in a console. From there proceed as on linux (call "docker build" etc.)
>
> On Mac: Install docker for mac, create a volume (this is not needed on
> Windows WSL2 and Linux), use docker on the command line as in Linux/Windo=
ws
> (docker build etc.), mount the volume with -v. Also mount an output
> directory, not as a volume, with a second -v, that can be used for
> outputting/inputting files to the docker image. For speed purposes two -v
> are needed on Mac.
>
> Best regards,
> R.
>
>
> >
> > I got myself a new laptop. Trying to decide whether to setup a VM for
> yocto development.
> >
> > Will the above work?
> >
> > thanks, srini
>
>

--00000000000010508105aa2737bf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Awesome, thanks!=C2=A0<br></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jul 11, 2020 at 5:36 AM =
Roelof Berg &lt;<a href=3D"mailto:rberg@berg-solutions.de">rberg@berg-solut=
ions.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;bord=
er-left-color:rgb(204,204,204);padding-left:1ex">Hi Srini,<br>
<br>
you can use docker on: Linux, Windows, Mac OS for Yocto development. It&#39=
;s better than a full VM. It starts in seconds, can easily exchange files a=
nd is probably also faster in build times.<br>
<br>
Now it depends on what system you=E2=80=99re running on the laptop:<br>
<br>
On Linux: Just install docker, add an image based on ubuntu, mount your wor=
king directory into docker with -v<br>
<br>
On Windows: Upgrade Win 10 to Build 2004 (at least), install WSL2, install =
docker for windows, configure WSL2 in docker for windows, then call =E2=80=
=9Ebash=E2=80=9C in a console. From there proceed as on linux (call &quot;d=
ocker build&quot; etc.)<br>
<br>
On Mac: Install docker for mac, create a volume (this is not needed on Wind=
ows WSL2 and Linux), use docker on the command line as in Linux/Windows (do=
cker build etc.), mount the volume with -v. Also mount an output directory,=
 not as a volume, with a second -v, that can be used for outputting/inputti=
ng files to the docker image. For speed purposes two -v are needed on Mac.<=
br>
<br>
Best regards,<br>
R.<br>
<br>
<br>
&gt; <br>
&gt; I got myself a new laptop. Trying to decide whether to setup a VM for =
yocto development.<br>
&gt; <br>
&gt; Will the above work?<br>
&gt; <br>
&gt; thanks, srini<br>
<br>
</blockquote></div>

--00000000000010508105aa2737bf--
