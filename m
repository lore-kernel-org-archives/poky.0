Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA000C02194
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 17:43:06 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web11.48163.1738863781976665471
 for <poky@lists.yoctoproject.org>;
 Thu, 06 Feb 2025 09:43:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EboXxNV8;
 spf=pass (domain: gmail.com, ip: 209.85.214.174, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-21f49bd087cso7308235ad.0
        for <poky@lists.yoctoproject.org>; Thu, 06 Feb 2025 09:43:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738863781; x=1739468581; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qS9o9UMiJI0ZMfa7PomXBdbc/ogZA1Ytvdd5cXJQHUc=;
        b=EboXxNV8pqScWHF2ozzSIRNpNwI7UaA1AMrYCsoC+W3PXsInOYB6fIgT8dDAjraRFK
         rxaqJSulbjgwd+hydLsPm+4xU1+szS44YnNr6ZP5V5oYgNYzrDA9Yxn+6F+vc/7o+u+H
         vSUsvEGqROyDmNvMgT01MwJMOKsegpZCtvz4uNd4PjUMBm2DSacZLL5vtQmvziucfJRK
         UjV2GKBR8FOqq3uwkCOQbHm+6IPgFT3S6tCv1CpI+I9ky1d2lHLYoVCCDvvcyrR5sEdQ
         ttwDdNlfoEWhCL44T62WeRHXsbHYrfngU7whFh1h2+ypNOnxvjSOB1fVPSxnKjIMxAub
         VmsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738863781; x=1739468581;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qS9o9UMiJI0ZMfa7PomXBdbc/ogZA1Ytvdd5cXJQHUc=;
        b=lskJYAvarJvGaRJH1Fw9noKWt/rTMZ/vEkcNSvmIkvShtfnZQNq5Hjn5c1e3WJdRdc
         3aw+sVJmcGkKrbULeLBbjUHQcXavzMqeMZXV50p/cOEMLE0uuH0uJSx+swcHsqqmXM6c
         1uFUOXys0zi0O19SY8k82Wye5ekoaaChlBnXlgDJRMvqwEt8aKbPdDSs6X9laj8YG4lw
         KHCdSEi3XjebfxzCnrs1PAX8yXB2SxQs+XH5zWs7PlDzsU9/HiGqLZIrzRjPTTUZWh+W
         BMo+UBV4p8oxAlHiPXxBi7sb7MbJ8gDOVUPml+fBBml5Z2YjVsyZ/yg4BG6P/RaRcoP3
         nA9w==
X-Gm-Message-State: AOJu0YzJKh66+iaX0C+qUKKeKuaIbPCoHsoXH3JpauoR+WM7ryJ3V7Eq
	ejs3oDe2E2fIK9HyBUCx0r35IgO1Q1bRJd6OUJxnO9g209zYRNoc/1kiB0Q3TkfYgpTqopkh0E2
	0lt6QPTg8ezpVidgzYrHp8jw8R5Kg0JPUkB4=
X-Gm-Gg: ASbGncsouXguh+mOzQC1mUhryHaew5X0AsiTA+MEk7pVW44IZcpHfShd6hfPqi/aAeR
	nXdtZwaCn891hvEyX8peSQTBcWbCVTgx+shG1A/jj+L35luA3F0mquNl5jTGFaaE1XTSwIps8og
	==
X-Google-Smtp-Source: AGHT+IEuA1ynKL8rB+2ckoz3pLi/1mgng9jrqHIzTFM/fCUd0eX241gozZV6kKou0gwxt0JdvtOfa1kDSKehdffni/Y=
X-Received: by 2002:a17:902:cf05:b0:216:4e9f:4ebe with SMTP id
 d9443c01a7336-21f17ecbc46mr124023025ad.42.1738863781294; Thu, 06 Feb 2025
 09:43:01 -0800 (PST)
MIME-Version: 1.0
References: <20250206172451.3843991-1-ross.burton@arm.com> <CADkTA4MGuh3msRuRpz47EeNRH7nPwD1pErYVKGfPu0pocRx_Rw@mail.gmail.com>
 <EFF7DAE7-034B-47DA-A77E-CD8464252749@arm.com>
In-Reply-To: <EFF7DAE7-034B-47DA-A77E-CD8464252749@arm.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 6 Feb 2025 12:42:50 -0500
X-Gm-Features: AWEUYZm7GRMIi2RRHR3E73tbUPQc4U093ARGHTCxHuK8YSQ3K0qqX5Va70WoGyc
Message-ID: <CADkTA4MM9FD2O4HfWeGbFNGR5yvycrUuOE5WgZRMDCxYCe=ydQ@mail.gmail.com>
Subject: Re: [poky] [PATCH][meta-yocto-bsp] linux-yocto: revert omap8250 power
 management changes on genericarm64
To: Ross Burton <Ross.Burton@arm.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ff3c3b062d7cc5c7"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 06 Feb 2025 17:43:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13527

--000000000000ff3c3b062d7cc5c7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 6, 2025 at 12:38=E2=80=AFPM Ross Burton <Ross.Burton@arm.com> w=
rote:

> On 6 Feb 2025, at 17:31, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
> > It isn't any extra work to just revert it in linux-yocto directly, vers=
us
> > doing this.
> >
> > Is there any particular reason we'd patch this, versus having the
> > revert in the tree ?
>
> Honestly, mainly because this is more ugly so it=E2=80=99s more obvious t=
hat we
> need to remove it asap. :)
>

Let's roll with this then!

I'm about to send a kernel pull request, so getting the fix via SRCREV
would also imply the -stable update. This will let it go into effect now,
and when I do my series.

Bruce



> I=E2=80=99m happy either way.
>
> Ross



--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000ff3c3b062d7cc5c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 6, 2025 at 12:38=
=E2=80=AFPM Ross Burton &lt;<a href=3D"mailto:Ross.Burton@arm.com">Ross.Bur=
ton@arm.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On 6 Feb 2025, at 17:31, Bruce Ashfield &lt;<a href=3D"mailto:br=
uce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt; =
wrote:<br>
&gt; It isn&#39;t any extra work to just revert it in linux-yocto directly,=
 versus<br>
&gt; doing this.<br>
&gt; <br>
&gt; Is there any particular reason we&#39;d patch this, versus having the<=
br>
&gt; revert in the tree ?<br>
<br>
Honestly, mainly because this is more ugly so it=E2=80=99s more obvious tha=
t we need to remove it asap. :)<br></blockquote><div><br></div><div><div cl=
ass=3D"gmail_default" style=3D"font-size:small">Let&#39;s roll with this th=
en!</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><=
div class=3D"gmail_default" style=3D"font-size:small">I&#39;m about to send=
 a kernel pull request, so getting the fix via SRCREV would also imply the =
-stable update. This will let it go into effect now, and when I do my serie=
s.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><d=
iv class=3D"gmail_default" style=3D"font-size:small">Bruce</div><br></div><=
div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
I=E2=80=99m happy either way.<br>
<br>
Ross</blockquote></div><div><br clear=3D"all"></div><div><br></div><span cl=
ass=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmai=
l_signature">- Thou shalt not follow the NULL pointer, for chaos and madnes=
s await thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Sta=
r Trek II<br><br></div></div>

--000000000000ff3c3b062d7cc5c7--

