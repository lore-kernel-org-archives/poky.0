Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8913EE006EA; Thu, 19 Jan 2017 02:50:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.171 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f171.google.com (mail-qt0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2CF1E00546
	for <poky@yoctoproject.org>; Thu, 19 Jan 2017 02:50:14 -0800 (PST)
Received: by mail-qt0-f171.google.com with SMTP id k15so61692876qtg.3
	for <poky@yoctoproject.org>; Thu, 19 Jan 2017 02:50:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZBXIi1fCbRysGUor7G2SlbUX0qgT72nUL/GLh4dCPUA=;
	b=b3Z3xpCHKuUHGgLiVhyMlU7LzW3f1jmRwethlrUGFEmClgKPkfp0dKzQR/ForZ9GYd
	hjPhHTgGqjyK/QTEJTdSrW14huhJ1qNs+m28NYo48s7Q56Bmsu/8OaSpTDVISoHRKgk+
	W5M2M55wD+vNefnhl1Vyqd+Q2+1uv4KPqPp13tSXch22/hpaIzAPbYMt/Rbv2HVZtgWb
	4syJ8CuhnAg5raJR4SUhGGDoDJtumaCN7r4jnCVwmFj0cHaEdxad7r99YO8y32Qv6x8U
	8FooT6fT28aypJTAichANuyDi+K2UXNg1ByrTW92Qt88eyQyf8YQsbicSINneIu/ahpS
	jgaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZBXIi1fCbRysGUor7G2SlbUX0qgT72nUL/GLh4dCPUA=;
	b=qd0lBq9Q48X0f8QTx/mFDHbkwtTq3gNA0d3R+Q2BD8YaHXK6oj5fhihOy2kpRvZs9t
	PZeDCktAmgF12bGZsHOmOUjqr+geiN3OTRgYQWFDmBU5wYCz1zu6civ+NalWyPmfx5XA
	ePwnS9rBN3PKlVyvQjC/nNn0dRZ905kOg0vlbPB/SMqMAo4lVvlJKXCjp2Kch3Qz/yW7
	1RYyue0qljQtLOqEwdJo9/gnRySamRYD+zY+cb8PNyFaYv833MoVschMlFXF3/ZtdJC7
	l7M2GLONmDpLHzqkDkBbvIuHm4ml92P0yh6N9QLzHw1lKyoRCv04YAo0x3PuAmyH6tyy
	0ehQ==
X-Gm-Message-State: AIkVDXIn+LWmL/CzOs12yItsnFz0oiSNX/1zpR2kyD+9z3xDetdSDHFwJyYxqev3SQ4CfnOj7WHFKB9QOo3YwD3l
X-Received: by 10.55.47.4 with SMTP id v4mr7221383qkh.77.1484823013909; Thu,
	19 Jan 2017 02:50:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Thu, 19 Jan 2017 02:49:53 -0800 (PST)
In-Reply-To: <2c4eb5acb08c4038878801c3143d070b@asem.it>
References: <2c4eb5acb08c4038878801c3143d070b@asem.it>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 19 Jan 2017 10:49:53 +0000
Message-ID: <CAJTo0Lb6fxjas0roAmXwFosHtRb+jrLG85uzbc5yC1xF76i0xw@mail.gmail.com>
To: Flavio Suligoi <f.suligoi@asem.it>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: connman 1.33 takes very long time to start
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 19 Jan 2017 10:50:15 -0000
Content-Type: multipart/alternative; boundary=001a114f41084c7d520546704cc9

--001a114f41084c7d520546704cc9
Content-Type: text/plain; charset=UTF-8

On 19 January 2017 at 10:01, Flavio Suligoi <f.suligoi@asem.it> wrote:

> Using the previous "Krogoth" version, with "connman 1.31", the boot speed
> was always fast, so the problem is related to the new connman version.
>
> Unless you can demonstrate that running connman 1.31 on morty with
everything else the same is also slow then this is unlikely: a change in
kernel behaviour for random numbers is more likely.

If you have low entropy then rng-tools is one solution, or persist the
value of /dev/urandom when shutting down to carry some entropy between
boots (
https://git.kernel.org/cgit/linux/kernel/git/stable/linux-stable.git/tree/drivers/char/random.c
).

Ross

--001a114f41084c7d520546704cc9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 January 2017 at 10:01, Flavio Suligoi <span dir=3D"ltr">&lt;<a href=
=3D"mailto:f.suligoi@asem.it" target=3D"_blank">f.suligoi@asem.it</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-le=
ft-style:solid;padding-left:1ex"><p>Using the previous &quot;Krogoth&quot; =
version, with &quot;connman 1.31&quot;, the boot speed was always fast, so =
the problem is related to the new connman version.</p>
<p></p></blockquote></div>Unless you can demonstrate that running connman 1=
.31 on morty with everything else the same is also slow then this is unlike=
ly: a change in kernel behaviour for random numbers is more likely.</div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">If you have l=
ow entropy then rng-tools is one solution, or persist the value of /dev/ura=
ndom when shutting down to carry some entropy between boots (<a href=3D"htt=
ps://git.kernel.org/cgit/linux/kernel/git/stable/linux-stable.git/tree/driv=
ers/char/random.c">https://git.kernel.org/cgit/linux/kernel/git/stable/linu=
x-stable.git/tree/drivers/char/random.c</a>).</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114f41084c7d520546704cc9--
