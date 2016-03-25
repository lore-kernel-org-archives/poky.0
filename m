Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1168E00CA1; Fri, 25 Mar 2016 13:19:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99A56E00C6E
	for <poky@yoctoproject.org>; Fri, 25 Mar 2016 13:18:50 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id v187so93036754ioe.2
	for <poky@yoctoproject.org>; Fri, 25 Mar 2016 13:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NoM7cPPLk95gfMkBntSIEiScN1TCmdDwwyTW/2DA3T4=;
	b=uozrIoyu6TOvqMcDJHAGQ3e3zmHhA2BRw2fhmJD+lBY7Ms3q9Q1WBdc8aD1r86E/f3
	weQFCexdXrkCp3yXABpYPmOWCvzRFQalDxc8qQp8H+iY1STeOfSL1/gNUXD1tl9D7Qpr
	DVIGAZ6mIrGspHppekzwlUF/9jZj4uV603/DFY3KvOCfjGruCE6dTlipCEHh2aG6cqv4
	7Idp8oXd1eO/ybqnncvHcDDJnt0xD2ZTpM4I/5gny1/5H5omM9RhaIzNVj27QrInWXr5
	QVbZ6S0Id9RYQxm7Ii5F5mtHHBldEQVAXWwb8rVxTF98D4kS+ckH8pn2LAIn3/MTzS04
	pULQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NoM7cPPLk95gfMkBntSIEiScN1TCmdDwwyTW/2DA3T4=;
	b=ObZkhn0L5WxhcM/eZux6Kv4v/EnPRqoPlTerbSxpPBZqVnWCs4/nDaxPnO7MfYdCj4
	NWIPSRRdZazJhZyfHux91Vb9v8wHqmHWldpVpl13+gxb7LD/K+9EbRIvO5UqU1pGm17d
	dzsGRevHprm0vFwq0FJ0KSeHQzoHpw1BZlXGpBz4oH+JVFSdw9ErgX/9MPyuzpoglGTt
	q8cdMi8BW+fZs7mAcEvtO4JraaIlx2L+8IFw0Sf6mER3Z4vI4rCUWM8n0d/pgKT9GUg1
	bzAsZQgJZ/rivKKNmts49uyTJbL3or26B12ZRGSUaeaWnuUwkkSIxqdSnv37michGyDL
	aL/Q==
X-Gm-Message-State: AD7BkJL04QhUmY1ZDSZumCqD7M6ldxCQYl8kQUaPN30g3pvTUDzbxzYuDgs66kxhZ6nQeYH5HJRqwYqfvor2OnWA
X-Received: by 10.107.134.153 with SMTP id q25mr2720824ioi.99.1458937130460;
	Fri, 25 Mar 2016 13:18:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 25 Mar 2016 13:18:30 -0700 (PDT)
In-Reply-To: <CAA2DH4sMcG46HmMX2+2bx9s03SmVAza0yoX=aYsGkHsyw5sBHw@mail.gmail.com>
References: <CAA2DH4sMcG46HmMX2+2bx9s03SmVAza0yoX=aYsGkHsyw5sBHw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 25 Mar 2016 20:18:30 +0000
Message-ID: <CAJTo0LagkLzEnyQ0AFR2ww9gYvfUtrmV115V+emTEe+Byisa=w@mail.gmail.com>
To: Prasant J <pj0585@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Zeroconf for embedded linux devices
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
X-List-Received-Date: Fri, 25 Mar 2016 20:19:05 -0000
Content-Type: multipart/alternative; boundary=001a113f9212695483052ee54522

--001a113f9212695483052ee54522
Content-Type: text/plain; charset=UTF-8

On 25 March 2016 at 10:09, Prasant J <pj0585@gmail.com> wrote:

> I would like to know the following:
> - Which all zeroconf implementations are available in poky ?
> (avahi-autoipd, any other?)
> - Which is the recommended one by yocto community?
>

Avahi is part of oe-core, so this is exactly what you're after.

Ross

--001a113f9212695483052ee54522
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 25 March 2016 at 10:09, Prasant J <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:pj0585@gmail.com" target=3D"_blank">pj0585@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div id=3D":ilm" class=3D"a3s" style=3D=
"overflow:hidden">I would like to know the following:<br>
- Which all zeroconf implementations are available in poky ?<br>
(avahi-autoipd, any other?)<br>
- Which is the recommended one by yocto community?<br></div></blockquote></=
div><br>Avahi is part of oe-core, so this is exactly what you&#39;re after.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross<=
/div></div>

--001a113f9212695483052ee54522--
