Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEAD7E007BA; Sun, 23 Apr 2017 12:50:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73A64E00349
	for <poky@yoctoproject.org>; Sun, 23 Apr 2017 12:50:32 -0700 (PDT)
Received: by mail-qk0-f182.google.com with SMTP id u75so6060349qka.3
	for <poky@yoctoproject.org>; Sun, 23 Apr 2017 12:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tSe69F4M9fac7vx+DdFgeDV87c6AiSOq/cHKC44V43Q=;
	b=zEIOE/1toVRdZjMNttj0NveMh9PxAPRaDa875RchpRsXakyOLG27PHIP1mUh7feL47
	8Phw08igw5EK27YYOfEa+A6eFsSl+p6pH8Xtn6FG0f2t4YXubWzluTiqFdyomyLi7geF
	TzcucHTsTqWXTsLbGVj2pAtJKI1XBXRzNOUqCzXRz7z336oYgH5HpWa3DBLn+EJfzp9M
	+8GOoJR372WBy8/Eoire9puzqdJGxKzzYIzLH6AAfkq3G7gDTP7b1vCAEICbpzM70Ewz
	kUbz3StnhOb38/db+kEnd1vjDNNienTl6ke8h6TmLeBsb9CpcNc2crxRUUtRI2zG6ZSD
	fUlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tSe69F4M9fac7vx+DdFgeDV87c6AiSOq/cHKC44V43Q=;
	b=kpEidwqcpFX2sJEktDZy9mqmS1tmdppzfNtRZ/inUozP6OLPqFBN3grNwEX0TexiWc
	pTpp+HZSGtwjdCOTb0zAEMqWE4658uksUW5Y5TDlZBqEvKoM0TDzYtj8O0zRQ6U+e9Ig
	P8l8B3qRaH243hOOcPZHfHwzRfW2QPINzFmuCLyK8pCag05vRqQt/fkchfG4u6rA8yj/
	wMu3sVs3A3sW2eKAlUYPpIYWPdE1yp4EO4cXCwnoLHLGgkNb+Sm8LBHGHF9vyfGNjypx
	tq/PpMNiQRR+oiGcRnbFPKQIM6O4LVI4Lfaz1QUG/qEzB/gOKcc+0yIVAU8ZqTo4+gY5
	eVKQ==
X-Gm-Message-State: AN3rC/4f92ftnAe//xyLVJSdUvmTOBxYEScfnxmIKrw/jDQ/tDUfYwSg
	WAMWAW8eMg549fWnkNs3fYIswfVHJSOR
X-Received: by 10.55.40.41 with SMTP id o41mr23762908qkh.3.1492977032254; Sun,
	23 Apr 2017 12:50:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Sun, 23 Apr 2017 12:50:11 -0700 (PDT)
In-Reply-To: <1492820479-2808-1-git-send-email-mkelly@xevo.com>
References: <1492820479-2808-1-git-send-email-mkelly@xevo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 23 Apr 2017 20:50:11 +0100
Message-ID: <CAJTo0LZzqY+=b2r-9HOBepR-_bZPnXHA0NQn-5v5K2UhhasiLQ@mail.gmail.com>
To: Martin Kelly <mkelly@xevo.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] qemuboot.conf: make cpus match built artifacts
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
X-List-Received-Date: Sun, 23 Apr 2017 19:50:36 -0000
Content-Type: multipart/alternative; boundary=001a1140a35aaa6d29054ddacde2

--001a1140a35aaa6d29054ddacde2
Content-Type: text/plain; charset=UTF-8

On 22 April 2017 at 01:21, Martin Kelly <mkelly@xevo.com> wrote:

> Currently, the qemu CPUs for are specified as generic, but the built
> artifacts are not. For example, we build x86-64 artifacts targeting
> core2duo but run them in qemu with generic qemu/kvm CPUs.
>

What MACHINE specifically are you referring to here?

Ross

--001a1140a35aaa6d29054ddacde2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 April 2017 at 01:21, Martin Kelly <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:mkelly@xevo.com" target=3D"_blank">mkelly@xevo.com</a>&gt;</span> wrot=
e:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div id=3D":36w" class=3D"a3s aXjCH m1=
5b93598f6c48991">Currently, the qemu CPUs for are specified as generic, but=
 the built<br>
artifacts are not. For example, we build x86-64 artifacts targeting<br>
core2duo but run them in qemu with generic qemu/kvm CPUs.</div></blockquote=
><div><br></div><div>What MACHINE specifically are you referring to here?</=
div><div><br></div><div>Ross=C2=A0</div></div></div></div>

--001a1140a35aaa6d29054ddacde2--
