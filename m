Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
 by mx.groups.io with SMTP id smtpd.web12.6627.1652437183456685478
 for <poky@lists.yoctoproject.org>;
 Fri, 13 May 2022 03:19:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@google.com header.s=20210112 header.b=Vf+8vhG5;
 spf=pass (domain: google.com, ip: 209.85.128.173, mailfrom: jackwa@google.com)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-2f7bb893309so85026397b3.12
        for <poky@lists.yoctoproject.org>; Fri, 13 May 2022 03:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=f+A9xCjp41sDO3Oh19xmqFJY1e3eAU/cBKRy+AosfLo=;
        b=Vf+8vhG5rA7MxLpHjjNMSOBeT0Ik7m/+b9Rfz7GAMyLpnGrWyeXJw/zmDzn3w5Mj3q
         0P6Z19dhArNKxtbVzFEWt2O5UnJJCbysgXARspI2TVEBh6Ll1JLho6Iz91n4zUeEDVDi
         JUFspYTD1AwiynUTQZad/cEmkPd1eXQe3UcAPwou9nmtS55+KpNmU3SyZekxMf33YC3E
         srWNIyX9LrvTBLqlc9Ld6E+Zdwba2ABOeUlpoTud/LIHx6TPsq1xYpitWVvmFWsDq3Bx
         LZtL2n7s2FgP/5Byy0E4eteHjWwF6JnMj/HSURkLLcs9oA6u++DE9vcKPtvlsGm7qdih
         226Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=f+A9xCjp41sDO3Oh19xmqFJY1e3eAU/cBKRy+AosfLo=;
        b=cvujxiptH9+WOJU60BpXZrv2AtEjFw7NXOoX5Y/HWM6ovihrFXGtZNMn4ZCn5WPp3R
         uynHMV11H7GMzWG9jzRMN7bpen7CG7Dfv43CNce0Iq9P1iyPosSBLQfuDQqBytj5UH6a
         M5ftx+eK8UJ68Kd5eyeuO/v22VUGoqYO1V6+q5uSQclXAvMdJhWbeve0ts3hm2lCayBg
         Fu/kMMHhNmD0OY5Lzd26Go+QG+sKiJHgU7ARcxk6KZl3U1czrKIRa1WASyr/1m2w1Eg8
         hXM2NyrKZmR8FxEhNUmdCKiDQCNZ9cbB9yvhPIR6JlrZahtCHgZGWDl3qqlkURmQ2j48
         U8Eg==
X-Gm-Message-State: AOAM530huBUP0+N/b1e+A/0ljmtt352J2KT4YnZCkNVrd7O7FqVgfo9o
	/zAQwgdf9fjGBMQ73BfWkRgTzSvT0Pf0O0XxSyHZPw==
X-Google-Smtp-Source: ABdhPJwFL7AQxcOG7tTGoAYYa3F9KPeMN38yUMxikMQr2cMF9NAq75346wuhcp+VPvzK+NaFbbNSFOX3JVp5aRFhUHs=
X-Received: by 2002:a81:7e0a:0:b0:2ec:e0ab:d19c with SMTP id
 o10-20020a817e0a000000b002ece0abd19cmr4773238ywn.465.1652437182503; Fri, 13
 May 2022 03:19:42 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1652432972.git.jackwa@google.com> <0feb67b5ab444dc14b5b37f1eae761543f531079.camel@linuxfoundation.org>
In-Reply-To: <0feb67b5ab444dc14b5b37f1eae761543f531079.camel@linuxfoundation.org>
From: "Jack (Szu-Chieh) Wang" <jackwa@google.com>
Date: Fri, 13 May 2022 18:19:06 +0800
Message-ID: <CAGv+sjGDFDRnNXHWsxAe1PJh+msS-mogN3ojDsG3-TaaYgN-YA@mail.gmail.com>
Subject: Re: [poky] [PULL][PATCH 0/1] Do setuid before git operations
To: richard.purdie@linuxfoundation.org
Cc: poky@lists.yoctoproject.org, "Ryan O'Leary" <ryanoleary@google.com>
Content-Type: multipart/alternative; boundary="000000000000474d7205dee203bd"

--000000000000474d7205dee203bd
Content-Type: text/plain; charset="UTF-8"

Hi Richard,

Thanks for your prompt reply.
We're using the dunfell branch and the git issues remain.
I see the patch is only on master not on dunfell, is this correct?

Sincerely,
Jack


On Fri, May 13, 2022 at 6:14 PM <richard.purdie@linuxfoundation.org> wrote:

> On Fri, 2022-05-13 at 10:03 +0000, Jack (Szu-Chieh) Wang via
> lists.yoctoproject.org wrote:
> > From: "Jack (Szu-Chieh) Wang" <jackwa@google.com>
> >
> > /etc/build information missing is because the new git thinks it's
> > unsafe to do git operations if the directory has a different uid from
> > the executing process'. However, there are still cases that we are
> > building the image with a different uid, making git reporting false
> > alarms. This patch identifies the cases by attempting to setuid to the
> > owner of the git directory and if this works, it should be the
> > expected git repo thus safe to do git operations.
>
> This should have been fixed in master or in the process of being fixed
> on the stable branches by the git wrapper we've recently merged?
>
>
> https://git.yoctoproject.org/poky/commit/?id=4d7383aefb391a5a998454c70feb96127951ca0a
>
> and several other related commits.
>
> Which release are you seeing that with?
>
> Cheers,
>
> Richard
>

--000000000000474d7205dee203bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Richard,<div><br></div><div>Thanks for your prompt repl=
y.</div><div>We&#39;re using the dunfell branch and the git issues remain.<=
br></div><div>I see the patch is only on master not on dunfell, is this cor=
rect?</div><div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Sincerely,<div>J=
ack</div></div></div></div><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Fri, May 13, 2022 at 6:14 PM &lt;<a=
 href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfou=
ndation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On Fri, 2022-05-13 at 10:03 +0000, Jack (Szu-Chieh) Wang via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> wrote:<br>
&gt; From: &quot;Jack (Szu-Chieh) Wang&quot; &lt;<a href=3D"mailto:jackwa@g=
oogle.com" target=3D"_blank">jackwa@google.com</a>&gt;<br>
&gt; <br>
&gt; /etc/build information missing is because the new git thinks it&#39;s<=
br>
&gt; unsafe to do git operations if the directory has a different uid from<=
br>
&gt; the executing process&#39;. However, there are still cases that we are=
<br>
&gt; building the image with a different uid, making git reporting false<br=
>
&gt; alarms. This patch identifies the cases by attempting to setuid to the=
<br>
&gt; owner of the git directory and if this works, it should be the<br>
&gt; expected git repo thus safe to do git operations.<br>
<br>
This should have been fixed in master or in the process of being fixed<br>
on the stable branches by the git wrapper we&#39;ve recently merged?<br>
<br>
<a href=3D"https://git.yoctoproject.org/poky/commit/?id=3D4d7383aefb391a5a9=
98454c70feb96127951ca0a" rel=3D"noreferrer" target=3D"_blank">https://git.y=
octoproject.org/poky/commit/?id=3D4d7383aefb391a5a998454c70feb96127951ca0a<=
/a><br>
<br>
and several other related commits.<br>
<br>
Which release are you seeing that with?<br>
<br>
Cheers,<br>
<br>
Richard<br>
</blockquote></div>

--000000000000474d7205dee203bd--
