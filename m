Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D320E0098A; Sat, 28 Apr 2018 13:16:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32F3CE00595
	for <poky@yoctoproject.org>; Sat, 28 Apr 2018 13:16:15 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id f15so3919968pfn.0
	for <poky@yoctoproject.org>; Sat, 28 Apr 2018 13:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=e+brJDJUzf9GNTnzKTVGf4ttXUGbxj0ZLhYRJQLwQX4=;
	b=jEZth5/C4k+yYecd5hopcPHFUFkO0N0goBveqms0tpE5wnpT2xFiqJ8bgOpeMqW0+t
	0xjAXs5f03JOM0jaYRJXHiz2AJqmks+2x03mak57fvHq8+37qKZPXhHxil//BVlY9KUg
	ZBc13Mtv+I5W0jLK8ChgWu1jV6m5dMQaOn9jeGuXJq1h5z/oV7GnnsvaRPnPpiOIqeP+
	jL1r85uWPxIcIJNyG6ih2jLtUwas2SjNj9rf3sMYlKPwhxCEDss4dlbDfnF1WzBuUCqk
	LdZoY9TiXtgz9F5iug+PMu1+cC4vHx93k8Q5WKYLGvBbUMf+9j2hXcX4LvgQQJmjI+cf
	ubgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=e+brJDJUzf9GNTnzKTVGf4ttXUGbxj0ZLhYRJQLwQX4=;
	b=sCpO/HC0O7IYaob9k56YIr4mwEXP+6AOl/2yYtYUZwJ5fp5ldj3CNumv6yxhwrweRT
	Osin32jsA2HFBA8lHzJwcLrGYfTzOYRmUUW+xnPzmtqQkETz8obOahAa1AG0oDLBkC04
	+k5EPZGZylWimJznAKgo1dd7ZhDqAUBRCcDRR9R2GBA3/ghhi4qk5fRZDth5SIAJeCO0
	KVgRhLFd9jcZEpOi15JFjWve0wmSvN2XnilARhMDSm9XZIzr15p1gVxB/yXgZJO7VerQ
	CrcFV7KeKSGFj2mOOlHlVsyU4eJVtmop2qAnjypRDxNxb09clwsEAaAwZXIKV5xtXTnI
	dshQ==
X-Gm-Message-State: ALQs6tBIOQwxPJWC8F8xvNBcDglDjNp+xH0ERVdOYXmEn7umJQL+A7Bf
	WZxx4SCq73MFDOuWgEGuYWZipwnhQPaVI1kYkv4=
X-Google-Smtp-Source: AB8JxZp83AB9hxbqq82I53jP/veS9hSMhWsMje+7NVXgjTG39egf8p6WWrRs3DAYpwiWHapTDjWNytAVhTA3tFBYWTA=
X-Received: by 2002:a65:4b4a:: with SMTP id
	k10-v6mr6071662pgt.227.1524946575293; 
	Sat, 28 Apr 2018 13:16:15 -0700 (PDT)
MIME-Version: 1.0
References: <MAXPR01MB0348B611A9993EAC201769B4918F0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MAXPR01MB0348B611A9993EAC201769B4918F0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 28 Apr 2018 20:16:04 +0000
Message-ID: <CAMKF1sq_NrvEe4OnHGnSXP_J=Q01KzVah7KfeYjU-=miSoyaNw@mail.gmail.com>
To: Aditya Tayade <Aditya.Tayade@kpit.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: ./mosquitto_internal.h:40:20: fatal error: ares.h: No such file or directory
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
X-List-Received-Date: Sat, 28 Apr 2018 20:16:17 -0000
Content-Type: multipart/alternative; boundary="000000000000ec03e9056aee4a88"

--000000000000ec03e9056aee4a88
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 25, 2018 at 7:05 AM Aditya Tayade <Aditya.Tayade@kpit.com>
wrote:

> Hi,
>
> I was facing subject line issue while building mosquitto 1.14.14
>
> Modified config.mk file so that it should not build with SRV lookup
> support.
> from WITH_SRV:=yes to WITH_SRV:=no which resolved error.
>
> If it is valid, request to patch the same to upstream.
>

I suppose its missing a dependency on c-ares

>
>
> Regards,
> Aditya
>
> This message contains information that may be privileged or confidential
> and is the property of the KPIT Technologies Ltd. It is intended only for
> the person to whom it is addressed. If you are not the intended recipient,
> you are not authorized to read, print, retain copy, disseminate,
> distribute, or use this message or any part thereof. If you receive this
> message in error, please notify the sender immediately and delete all
> copies of this message. KPIT Technologies Ltd. does not accept any
> liability for virus infected mails.
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--000000000000ec03e9056aee4a88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Wed, Apr 25, 2018 =
at 7:05 AM Aditya Tayade &lt;<a href=3D"mailto:Aditya.Tayade@kpit.com">Adit=
ya.Tayade@kpit.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div>
<div id=3D"m_-4332852368543854414divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>Hi,<br>
<br>
I was facing subject line issue while building <span>mosquitto 1.14.14</spa=
n> <br>
<br>
Modified <a href=3D"http://config.mk" target=3D"_blank">config.mk</a> file =
so that it should not build with SRV lookup support.<br>
from <span>WITH_SRV:=3Dyes to </span>WITH_SRV:=3Dno which resolved error.<b=
r>
<br>
If it is valid, request to patch the same to upstream.<br>
</div></div></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto=
">I suppose its missing a dependency on c-ares=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div><div id=3D"m_-4332852368543854414divtagdefaultwrapper" s=
tyle=3D"font-size:12pt;color:#000000;font-family:Calibri,Helvetica,sans-ser=
if"><div><br>
<br>
Regards,<br>
Aditya<br>
</div>
<br>
<p></p>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</div>

-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div></div>

--000000000000ec03e9056aee4a88--
