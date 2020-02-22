Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com [209.85.217.65])
 by mx.groups.io with SMTP id smtpd.web09.4106.1582356470875101588
 for <poky@lists.yoctoproject.org>;
 Fri, 21 Feb 2020 23:27:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oYNn2iiI;
 spf=pass (domain: gmail.com, ip: 209.85.217.65, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f65.google.com with SMTP id c18so2733097vsq.7
        for <poky@lists.yoctoproject.org>; Fri, 21 Feb 2020 23:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jCc7yDEEVsOTPzJGpn8Vge5/lHrovrXAHZuWEArxEvY=;
        b=oYNn2iiIrMWsUvgJGZlKzI/rvqAibG9RUxS/JXWmHLp4WsHn40fAf0ctC9AK3z2Bkn
         rLbEFm80TSvR+nM2Be18Td3eONPsatArSl3C0d623LRDUzxJjcweZn3yZNBNIXgCpTlZ
         88QxwPH45+7vhoIEuRFa88MxcuXbXGNZnbTzTTeUfOUm9jOtTqJxUHuQrd60j8BEeGE5
         r6002ZTBcIyyTkTeCFb+pCkEOHggPbRRxeePdKsTo7SOJ3cGTcbb/iyRTxapucVDOSgP
         fFRTaLzpEXv6xTPmiH+M7vRiTf5KYPqv+o7NbQVVs3K3SUPKx3OpMLC+ThA3AvZkfcms
         jBQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jCc7yDEEVsOTPzJGpn8Vge5/lHrovrXAHZuWEArxEvY=;
        b=pc7B5FEF98YbP1Gsmgon66jzAqWYzugfhg3Ssubi3KzWNo6bvSKp08Dfs3Xk2M5aze
         lQ23gvjIbxsmIYf2lukAogGwGXy0KGR2wqKY9x53pFNWNzHLnb8EqWBgGn5B0vxS0TR1
         lgglzs2SpJ6P4O+ATz/giIctp+2rN7R7gxHHw1x/AJK8tmlOBhO9bWJcvcyZF8YybW25
         fzKM7ZchNoLgS6ePLx6b6MwHnnuMw414gCzD/bgO1lhoDkVuLkI+9TF1ide92rApjl2D
         A5mAxSTspKxebA+o6UP/+GaooB5FajyXFqXtd9lyu/lhOoCuj2jd7IfvLP+L0u2lUvjS
         DKPg==
X-Gm-Message-State: APjAAAUiiZfTT6KE0WpKAyfQSJJ8GUGmvFWH1cEkL+wpPzQXcQZmI4K4
	14R0UmCgw1tvxp7JY0rRDbjcwpEJunQYCZHe390=
X-Google-Smtp-Source: APXvYqyPTZHxoq+yW01mr6a6IkAPnSCJwdqbo/jJEHQs1+LCTCOthm2urnaSgI7ydbCCSReAaO+GA9Qa5QSb2miX5/k=
X-Received: by 2002:a67:7987:: with SMTP id u129mr22464331vsc.83.1582356469942;
 Fri, 21 Feb 2020 23:27:49 -0800 (PST)
MIME-Version: 1.0
References: <zYsX.1582324514042415680.U6E7@lists.yoctoproject.org>
 <f590f3b1920170f0aae2f4f3047430799cd34faf.camel@linuxfoundation.org> <08b1015e-d4ce-cf04-1360-a2a33cbdad46@gmail.com>
In-Reply-To: <08b1015e-d4ce-cf04-1360-a2a33cbdad46@gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sat, 22 Feb 2020 08:27:38 +0100
Message-ID: <CANNYZj_9UG1wdUD2JTt5hgAT+YG2gMpxEEj8rj51BP40sz0TeA@mail.gmail.com>
Subject: Re: [poky] zeus build ubuntu 18.04
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004c8d77059f2513fa"

--0000000000004c8d77059f2513fa
Content-Type: text/plain; charset="UTF-8"

I think this is actually a X client permissions problem.

'xhost +' is the quick way to fix it.

Alex

On Fri, 21 Feb 2020 at 23:51, Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On 2/21/20 2:49 PM, Richard Purdie wrote:
> > On Fri, 2020-02-21 at 14:35 -0800, R Srinivasan wrote:
> >> I just changed my system to Ubuntu 1804 and did my first yocto build
> >> - totally vanilla. bitbake core-image-minimal
> >>
> >> When I tried to run qemu - I get this error:
> >>
> >> Failed to run qemu: Could not initialize SDL(x11 not available) -
> >> exiting
> >>
> >> Never seen this before in my previous environments.
> >>
> >> i have now installed xorg on my host but does not appear to change
> >> anything.
> >>
> >> Help please
> >
> > How are you trying to run qemu? Are you expecting graphical qemu or a
> > console? Have you tried adding "nographic" as an option to runqemu?
> >
>
> I am sure nographic will work.
>
> I think the problem is that qemu still tries to launch with sdl backend
> when SDL is not present, so I wonder if qemu detects this during build
> then runqemu should not launch qemu with a backend perhaps default to
> nographic automatically
>
> > Cheers,
> >
> > Richard
> >
> >
> >
> >
> 
>

--0000000000004c8d77059f2513fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think this is actually a X client permissions probl=
em.</div><div><br></div><div>&#39;xhost +&#39; is the quick way to fix it.<=
/div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 21 Feb 2020 at 23:51, Khem R=
aj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 2/21/20 2:49 PM, Richard Purdie wrote:<br>
&gt; On Fri, 2020-02-21 at 14:35 -0800, R Srinivasan wrote:<br>
&gt;&gt; I just changed my system to Ubuntu 1804 and did my first yocto bu=
ild<br>
&gt;&gt; - totally vanilla. bitbake core-image-minimal<br>
&gt;&gt;<br>
&gt;&gt; When I tried to run qemu - I get this error:<br>
&gt;&gt;<br>
&gt;&gt; Failed to run qemu: Could not initialize SDL(x11 not available) -=
<br>
&gt;&gt; exiting<br>
&gt;&gt;<br>
&gt;&gt; Never seen this before in my previous environments.<br>
&gt;&gt;<br>
&gt;&gt; i have now installed xorg on my host but does not appear to chang=
e<br>
&gt;&gt; anything.<br>
&gt;&gt;<br>
&gt;&gt; Help please<br>
&gt; <br>
&gt; How are you trying to run qemu? Are you expecting graphical qemu or a=
<br>
&gt; console? Have you tried adding &quot;nographic&quot; as an option to =
runqemu?<br>
&gt; <br>
<br>
I am sure nographic will work.<br>
<br>
I think the problem is that qemu still tries to launch with sdl backend <b=
r>
when SDL is not present, so I wonder if qemu detects this during build <br=
>
then runqemu should not launch qemu with a backend perhaps default to <br>
nographic automatically<br>
<br>
&gt; Cheers,<br>
&gt; <br>
&gt; Richard<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div>

--0000000000004c8d77059f2513fa--
