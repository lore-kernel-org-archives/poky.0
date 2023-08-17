Return-Path: <jtilahun@astranis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43873C64EB4
	for <webhook@archiver.kernel.org>; Thu, 17 Aug 2023 20:54:08 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.web10.4769.1692305646181568234
 for <poky@lists.yoctoproject.org>;
 Thu, 17 Aug 2023 13:54:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@astranis.com header.s=google header.b=g5i6iBPd;
 spf=pass (domain: astranis.com, ip: 209.85.128.171, mailfrom: jtilahun@astranis.com)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-58d40c2debeso2504667b3.2
        for <poky@lists.yoctoproject.org>; Thu, 17 Aug 2023 13:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=astranis.com; s=google; t=1692305645; x=1692910445;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QGZgw9rIqTkWqnSYbxO18CuTJx8bcGzdlvU1Px2OWh0=;
        b=g5i6iBPdx5eXvOwpluwLfzz3SYa2qhy3wlCtm4OmKxZBDKSoUZYQSbdUj1v/JHXI+t
         NcfoeCvWXsVXPUfMeE1Fdyzlq4bca5/LDeXo8tsdD3sBEZvGTZ6YBmoE5ei3sPFuDIsa
         bJe0mYyR0yg+n8lRFS/rT4OpeRnNoSRuTTuFCKk5nIythSjeRpBd8Y7CRbGhBTm4CuTA
         CWWrdh5EQBuumhPyqGZXfKzu/WQkZf4vnu/8tIim1t+pK6w0Smk8sTTbwgKnG6M215dH
         A2L/zCGqypCtx3oOqJC2gdvEqBH/NiuqPm7m1CVseZllHAbLxH/JaCw2WV4w9GLoR4+i
         +lSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692305645; x=1692910445;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QGZgw9rIqTkWqnSYbxO18CuTJx8bcGzdlvU1Px2OWh0=;
        b=hjoVy9cl9eef6jZWHIyeeLQbqr1qSm8A/z3Z0YmQRKwerEbnJnMyV3jt+snKQx6CtH
         TJuOqiLTKMGo7WCHrY+lm1bsfpr0m++KGcOgF8DGEVU5tLzpkz7wXqllzmm3Ptut9pLN
         A2AmN2eG4fsselFZhdFQcpyUbFha0RvIHOXfFImp6nr9NvkXElNu/dW+qS07gOyKyeSz
         Sc+gHsNevi39nLnla34odd5ZGZNh0x82wndHuNVkgle11742ZHxRWxOfhfNwqqLx03LZ
         OaG2gX6Cv9sB1Jz11ObrP7/VyWCrbwEvPY4fgxU8o722WAYB3QXC46igrp8kkSWJrI+u
         1H2g==
X-Gm-Message-State: AOJu0YzHApxydRbbMOrAqy0K+UWmT9fCUWz1M1XplILNKTHOskJscwex
	y2mi67odp9lotqSpOJp7uAk8P5MocUpWZaKuzrIdl6C/PmYyooB0cl7S/QoPiHB/p/XnX1S25To
	EXVStU6ETkwX+UtOBE3sE+qn6Bud0D8ke
X-Google-Smtp-Source: AGHT+IFQ7UKbXykp17Dfx84loegcaTocWam8PWPgKnQ/4ur7oZPiyW5RBhYcFLD8MaB6puPZl+rw0Rzph4JFmor/mzc=
X-Received: by 2002:a81:4813:0:b0:589:e7ab:d4e5 with SMTP id
 v19-20020a814813000000b00589e7abd4e5mr624768ywa.0.1692305645370; Thu, 17 Aug
 2023 13:54:05 -0700 (PDT)
MIME-Version: 1.0
References: <20230817045433.495995-1-jtilahun@astranis.com>
 <d0d0a045-666b-47ea-9759-4d05f439fe36@bootlin.com> <b05667d60595cb9e96b2d1040d6bdc621a756399.camel@linuxfoundation.org>
 <CANhvTw4wAq9tD-xa9UCWAcv7CV_GJ3xd0DvtsFBH6QjF57mbPA@mail.gmail.com> <21de0cb6ea8e2ec6da9f3c158e34de312ef8c037.camel@linuxfoundation.org>
In-Reply-To: <21de0cb6ea8e2ec6da9f3c158e34de312ef8c037.camel@linuxfoundation.org>
From: Joseph Tilahun <jtilahun@astranis.com>
Date: Thu, 17 Aug 2023 13:53:54 -0700
Message-ID: <CANhvTw58xJ0GCkcPQxS9EARPccNSL9oQTD9_esk_MJ0dsi2LPg@mail.gmail.com>
Subject: Re: [poky] [PATCH] scripts: use the monotonic clock to compute time elapsed
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: michael.opdenacker@bootlin.com, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d825bc0603249c27"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 17 Aug 2023 20:54:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13134

--000000000000d825bc0603249c27
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The point about consistency is fair enough. time.time() is already used in
many places, so it's understandable if the desire is to continue using
time.time() throughout. I do think these usages of time in scripts are
isolated enough to where it's not as much of a concern. The time deltas are
computed purely within those functions and simply printed out, with nothing
else done with that information.

That being said, if you still insist that monotonic is not the way to go
for the sake of consistency, then fine.

Thanks,
Joseph

On Thu, Aug 17, 2023 at 1:32=E2=80=AFPM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Thu, 2023-08-17 at 13:28 -0700, Joseph Tilahun wrote:
> > Thank you for the background Michael. I sent this patch to
> > openembedded-core@lists.openembedded.org per your message.
> >
> > Richard, I understand the point you cite from the Python manual page.
> > Regarding this patch specifically, only the difference between the
> > results of two calls is used. So the concern you raise is not
> > applicable to this patch specifically. Given that, I'd appreciate it
> > if you could take a look.
>
> Alex's point stands though and relates to my concern. If we use
> time.time() everywhere we're consistent and less likely to confuse the
> two and get interesting results.
>
> Is there a real world problem this change is solving? Did you have a
> build machine where you changed the time part way through a build?
>
> I'm leaning towards being consistent as this time change would seem to
> be something very rare compared to the risks of people copy and pasting
> and confusing the usage.
>
> Cheers,
>
> Richard
>

--=20


________
This email and any attachments may contain Astranis confidential=20
and/or proprietary information governed by a non-disclosure agreement, and=
=20
are intended solely for the individual or entity specified by the message.

--000000000000d825bc0603249c27
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The point about consistency is fair enough. time.time=
() is already used in many places, so it&#39;s understandable if the desire=
 is to continue using time.time() throughout. I do think these usages of ti=
me in scripts are isolated enough to where it&#39;s not as much of a concer=
n. The time deltas are computed purely within those functions and simply pr=
inted out, with nothing else done with that information.</div><div><br></di=
v><div>That being said, if you still insist that monotonic is not the way t=
o go for the sake of consistency, then fine.</div><div><br></div><div>Thank=
s,</div><div>Joseph<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Aug 17, 2023 at 1:32=E2=80=AFPM Richa=
rd Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard=
.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">On Thu, 2023-08-17 at 13:28 -0700, Joseph Tilahu=
n wrote:<br>
&gt; Thank you for the background Michael. I sent this patch to<br>
&gt; <a href=3D"mailto:openembedded-core@lists.openembedded.org" target=3D"=
_blank">openembedded-core@lists.openembedded.org</a> per your message.<br>
&gt; <br>
&gt; Richard, I understand the point you cite from the Python manual page.<=
br>
&gt; Regarding this patch specifically, only the difference between the<br>
&gt; results of two calls is used. So the concern you raise is not<br>
&gt; applicable to this patch specifically. Given that, I&#39;d appreciate =
it<br>
&gt; if you could take a look.<br>
<br>
Alex&#39;s point stands though and relates to my concern. If we use<br>
time.time() everywhere we&#39;re consistent and less likely to confuse the<=
br>
two and get interesting results.<br>
<br>
Is there a real world problem this change is solving? Did you have a<br>
build machine where you changed the time part way through a build?<br>
<br>
I&#39;m leaning towards being consistent as this time change would seem to<=
br>
be something very rare compared to the risks of people copy and pasting<br>
and confusing the usage.<br>
<br>
Cheers,<br>
<br>
Richard<br>
</blockquote></div>

<br>
<font size=3D"2"><br><br>________<br>This email and any attachments may con=
tain Astranis confidential and/or proprietary information governed by a non=
-disclosure agreement, and are intended solely for the individual or entity=
 specified by the message.</font><br>
--000000000000d825bc0603249c27--

