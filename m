Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63DE6E00F08; Mon, 12 Sep 2016 01:40:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE63AE00E25
	for <poky@yoctoproject.org>; Mon, 12 Sep 2016 01:40:17 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id q188so183334292oia.3
	for <poky@yoctoproject.org>; Mon, 12 Sep 2016 01:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=X+MAqvopGqCsBLxg+a3DuCnbhCn2gm1NKJcc5xdOznM=;
	b=rGfhmiDZjWt95YoADu2Ht6ykXs1xohtafR5zdjf8MuwbVYycr6Ky3oiwPxkUznpdYM
	4vj1YcgdAsxMY4aOReE5zme1M4IcMOaVfk8AB/dKeNlQrjafcF9mkWmVvBCX+GAJi//s
	hexJWaZDNkRnyMEN2DosaxOl0wnTu59rZ/9iWtpUfQoPPvTRIiz0jseW1cmXagQo/7GO
	ftxaCW5rKgVNsGEzc4UGlfVWxM9UEKhq0A8jNiK0MkKrzDvfBgykmy4NrkALamZfHbWI
	Ia5RhfH/zNJyvsEzrd56A5KJ0iNWCRRJU8fbnTaLLtIHxUIkepvZjsGy1m+w9t1EihQY
	3x2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=X+MAqvopGqCsBLxg+a3DuCnbhCn2gm1NKJcc5xdOznM=;
	b=eWpz7jKZMrssvVyxIITfrGDXaL3Dey9UGZtH43Wl0RWbL/aO2gFPmjNzVErg/gaByq
	1grw9TVHbijGbRkjTET8elTh2NO6nHVMUahXmPaHGXUWQfWfacOc5dlA0vbUBq+Fijin
	mF4ejKzd73hqSlnYDCHfuPL8gMlbzDoE3MfSNlYI6l0HyV5KzLXbbmdxkF4UjcRncKyd
	YgY+tmEP1GYdDNHehfVggkMjvcY+hPweK685izhRz3GIjZ4ErlYLhEmsuwqZqNPuYnkK
	6oJC4S/A8XPFvx9MapvU0kar4L9tFQWB1JEFcQYdzTizDGL26BvqzVgzeLVhJneTzNfI
	F2bQ==
X-Gm-Message-State: AE9vXwO+exgJEqzheabOI7j2rPD4Abiq8yfawY4U5FUHdjg+8nHWrculX32TxvAbcUu/BeMWo5ejUUdWjbtSH9Wq
X-Received: by 10.202.240.134 with SMTP id o128mr25263121oih.166.1473669616701;
	Mon, 12 Sep 2016 01:40:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.27 with HTTP; Mon, 12 Sep 2016 01:39:56 -0700 (PDT)
In-Reply-To: <52b278723167707e032353daded2d1ccf0f44b59.1473668648.git.liezhi.yang@windriver.com>
References: <cover.1473668648.git.liezhi.yang@windriver.com>
	<52b278723167707e032353daded2d1ccf0f44b59.1473668648.git.liezhi.yang@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Sep 2016 09:39:56 +0100
Message-ID: <CAJTo0LYvLLvjJHNaA-JfZCGKGWDWNfdR5E9+rwHDXTMYuYPgow@mail.gmail.com>
To: Robert Yang <liezhi.yang@windriver.com>, 
	Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] poky-lsb.conf: use kernel 4.8
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
X-List-Received-Date: Mon, 12 Sep 2016 08:40:19 -0000
Content-Type: multipart/alternative; boundary=94eb2c09630e0529f1053c4b72e3

--94eb2c09630e0529f1053c4b72e3
Content-Type: text/plain; charset=UTF-8

On 12 September 2016 at 09:25, Robert Yang <liezhi.yang@windriver.com>
wrote:

>  # Use the LTSI Kernel for LSB Testing
> -PREFERRED_VERSION_linux-yocto_linuxstdbase ?= "4.1%"
> +PREFERRED_VERSION_linux-yocto_linuxstdbase ?= "4.8%"
>

As the comment says, poky-lsb uses the currently LTSI kernel, which is
4.1.17.   If this isn't booting for you then this needs to be fixed without
upgrading to 4.8, unless there's a new LTSI kernel on the horizon (Bruce?).

Ross

--94eb2c09630e0529f1053c4b72e3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 September 2016 at 09:25, Robert Yang <span dir=3D"ltr">&lt;<a href=3D=
"mailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":20z=
" class=3D"a3s aXjCH m1571d8140a4391b7">=C2=A0# Use the LTSI Kernel for LSB=
 Testing<br>
-PREFERRED_VERSION_linux-<wbr>yocto_linuxstdbase ?=3D &quot;4.1%&quot;<br>
+PREFERRED_VERSION_linux-<wbr>yocto_linuxstdbase ?=3D &quot;4.8%&quot;<br><=
/div></blockquote><div><br></div><div>As the comment says, poky-lsb uses th=
e currently LTSI kernel, which is 4.1.17. =C2=A0 If this isn&#39;t booting =
for you then this needs to be fixed without upgrading to 4.8, unless there&=
#39;s a new LTSI kernel on the horizon (Bruce?).</div><div><br></div><div>R=
oss</div></div></div></div>

--94eb2c09630e0529f1053c4b72e3--
