Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5709.1579775102901784293
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 02:25:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DcZfA331;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kanavin@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73D46E015ED; Thu, 23 Jan 2020 02:25:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com [209.85.217.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE8DDE013DB
	for <poky@yoctoproject.org>; Thu, 23 Jan 2020 02:25:01 -0800 (PST)
Received: by mail-vs1-f68.google.com with SMTP id g23so1382564vsr.7
        for <poky@yoctoproject.org>; Thu, 23 Jan 2020 02:25:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=F+iygYiFWlg0/tHHtyrrsag1WflEFLAsz0g9PveUPFo=;
        b=DcZfA331R2vkcAreqDmqgjU9Giuh3wtiqeBXzPrDKKqGDlBbCam2rPwtLK7Qe6Rj2R
         r1C1hkzhXI1rGbXJw5CqLAMEjK34VDxoIyVJ/H8Sj1eairkNlSSjzzuI3sWcZMf0s5K7
         9ndbP0XqdvBUz+e4plUBWGakJjozSMZ9gm4/0uC2aUk9kW7ACnGgKy3cI0sRHUD5X2fj
         oLsKWvW3tRSZ8/91uvu1n1XXSu6r1k574I46H0VZ4H/WODZ3McZmF9xowAoUqrHuOYFD
         pIoRi5R/Md9Kk0cASHoQSQ1p2GHdyyW6x89AgW3Yl0urQkGL1G+4uQYnaUo3texFOo93
         q2tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=F+iygYiFWlg0/tHHtyrrsag1WflEFLAsz0g9PveUPFo=;
        b=Zm34+cpAt4dILnEGr2AkApK7BvIDlL/kkmmvjGStQA7TxvOMFbKQMDs4PTGW9AYCzR
         ItbnxiciZGmADKHc/t/4aOJ+eOPoGWTtSMP70XOeaidvoR0MTqncbjVkjdc01Fy1XnyX
         yHC3AcGWGvIMjf4JVBpCpNLjMkKyu0QG2aNEeYQvXQtvuObejPBEbCpKoKlVErYd5xMx
         XbsFWG9NxEb0V4nGkRf9RgHCvMRsjXbQX3K7LjcdFZNzVZkj7urfKPCLQkQ2jcX7FN9n
         U4Psj8H05+V1xpmB82bcCfxzuIYA1XR0PsLcRi8Qc7+sYJNzyd3X0HO8HDwzsr50ZQzz
         iong==
X-Gm-Message-State: APjAAAXzoY6ziKI/NzvaYMtW79UfLTzTkc/Fo7ss1YsZx/PL45dR6pzx
	3Wg/6jGoKLBUpmUxhqSrrXtq2B+mm4gEprEKtxA=
X-Google-Smtp-Source: APXvYqzhliZif6MkGSAIIj9A6Z/Y08fXk9bbXtT9eXF2jQ1C9wfCQXig0V/wm/WBoBb3Tz3m27umUvBFN8N4dMygAmc=
X-Received: by 2002:a67:314e:: with SMTP id x75mr5224347vsx.35.1579775101300;
 Thu, 23 Jan 2020 02:25:01 -0800 (PST)
MIME-Version: 1.0
References: <20200120172615.22811-1-alex.kanavin@gmail.com> <43709224-d16f-54d1-6540-6601351ac675@gmail.com>
In-Reply-To: <43709224-d16f-54d1-6540-6601351ac675@gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 23 Jan 2020 11:24:50 +0100
Message-ID: <CANNYZj_prqyR74PEo+L-NHwZAbf2TjiqGPwEKhb3XmSYE4S6Sw@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky.conf: add vfat to DISTRO_FEATURES
To: akuster808 <akuster808@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000bcf3df059ccc0daf"

--000000000000bcf3df059ccc0daf
Content-Type: text/plain; charset="UTF-8"

On Mon, 20 Jan 2020 at 19:06, akuster808 <akuster808@gmail.com> wrote:

>
>
> On 1/20/20 9:26 AM, Alexander Kanavin wrote:
>
> This is beneficial for parted ptests in particular, as
> they expect vfat functionality to work.
>
>
> Is that is the case then why not have it in OE core?
>

Right, I can add it there instead.

Alex

--000000000000bcf3df059ccc0daf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, 20 Jan 2020 at 19:06, akuster808 =
&lt;<a href=3D"mailto:akuster808@gmail.com">akuster808@gmail.com</a>&gt; wr=
ote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">
 =20
   =20
 =20
  <div>
    <br>
    <br>
    <div>On 1/20/20 9:26 AM, Alexander Kanavin
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <pre>This is beneficial for parted ptests in particular, as
they expect vfat functionality to work.</pre>
    </blockquote>
    <br>
    Is that is the case then why not have it in OE core?<br></div></blockqu=
ote><div><br></div><div>Right, I can add it there instead.</div><div><br></=
div><div>Alex<br></div></div></div>

--000000000000bcf3df059ccc0daf--
