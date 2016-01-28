Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE706E00948; Thu, 28 Jan 2016 01:17:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75577E00838
	for <poky@yoctoproject.org>; Thu, 28 Jan 2016 01:17:26 -0800 (PST)
Received: by mail-ig0-f178.google.com with SMTP id ik10so9220022igb.1
	for <poky@yoctoproject.org>; Thu, 28 Jan 2016 01:17:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=s7szlnSY9B1i8KYH1vfhOHprvjFaI2Kp+gxuzU8Gmk8=;
	b=iAkaVyq7ZEtNJXSAELL0O7lxNeDsYQhFw3ofAdMlsJXZr5hrc06+iyxZT05jY9KfCr
	FROifvFzMMt72fvTbjK92njpd8UjaMLhvnqPnkLDX+M6KzCNUpk4vrYpQOtQJxkgmeF+
	msk6BL7Dlxc30vKEyczzHduTx7ZJa0TaJY5f3VyItxrgZbHMWgIkpmz7LXn/tXVXWZRK
	3LbNaBa2mJuhghl931LO7cLn6U2npyZt2ANkyHBgk08imx+0tnD4AZ3GPU0sm+MQhoDv
	cosFi2xwzdXw+h+s5UT4dSvJnkFd0S8epDjoseKXFO4ARbOySeTUrhnCw5g/TTNkyhpt
	xUSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=s7szlnSY9B1i8KYH1vfhOHprvjFaI2Kp+gxuzU8Gmk8=;
	b=IlKtNmYE4jZoDwm6BrnExtF3PAGCQaSyeo72VsGq08xovW2+ZA7RTXondulJg/B3fT
	OSuyidrD+5rEPYJpk6r3LehnCe9DoET0VpR+EfrzGwpVVs4RSSOnW3cdw8r/Uol9yZ/x
	4maxvD8r4uK84CgqXrswDq/oSnRY5ulnEttxrcclCRSYyic26hQUQpix5PwYPlfnvK/+
	qWe1OBXUmNR9cMD9Mt1wrEa8EspJX8tBXBGPRw/vZ5DrBgeSCMWo6jOzc3ZF+MZDfrjb
	01xBXfmzTFf09w9eSb2rg11r7KwsqIRkcWrBvQ5nftffXgDyKimiOFAey47I/giLH0lq
	tJ7w==
X-Gm-Message-State: AG10YOSqxy+wdjXaiKmi8uBA9fF/cE/J6R7ApkAJ/PMSzoMKFT3HaASz8mpWyCQ4VwUbYqT6n5WpAQ383ONmspgh
X-Received: by 10.50.23.108 with SMTP id l12mr2233931igf.78.1453972645919;
	Thu, 28 Jan 2016 01:17:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Thu, 28 Jan 2016 01:17:06 -0800 (PST)
In-Reply-To: <56A9CA3B.4000704@windriver.com>
References: <1453818056-6498-1-git-send-email-ross.burton@intel.com>
	<56A9CA3B.4000704@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Jan 2016 09:17:06 +0000
Message-ID: <CAJTo0LZZga-97iUfP3MNtP=5fn4whhpB-0eLgedJTGEG4Ry8wA@mail.gmail.com>
To: Robert Yang <liezhi.yang@windriver.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] conf/distro/poky.conf: use google.com for connectivity check
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
X-List-Received-Date: Thu, 28 Jan 2016 09:17:29 -0000
Content-Type: multipart/alternative; boundary=089e0149cbe812e0d7052a616391

--089e0149cbe812e0d7052a616391
Content-Type: text/plain; charset=UTF-8

On 28 January 2016 at 07:58, Robert Yang <liezhi.yang@windriver.com> wrote:

> Sorry, but google.com is nearly unreachable in China as the reason you
> may know.
>
> How about 8.8.8.8 which is OK ?
>

That's a good point which I should have thought of.  I'm surprised the
Great Firewall lets 8.8.8.8 through, but as this check uses the fetcher
there needs to be a HTTP URL it can open and 8.8.8.8 doesn't respond to
HTTP.

Ross

--089e0149cbe812e0d7052a616391
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 January 2016 at 07:58, Robert Yang <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":zb" c=
lass=3D"a3s" style=3D"overflow:hidden">Sorry, but <a href=3D"http://google.=
com" rel=3D"noreferrer" target=3D"_blank">google.com</a> is nearly unreacha=
ble in China as the reason you may know.<br>
<br>
How about 8.8.8.8 which is OK ?</div></blockquote></div><br>That&#39;s a go=
od point which I should have thought of.=C2=A0 I&#39;m surprised the Great =
Firewall lets 8.8.8.8 through, but as this check uses the fetcher there nee=
ds to be a HTTP URL it can open and 8.8.8.8 doesn&#39;t respond to HTTP.</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</di=
v></div>

--089e0149cbe812e0d7052a616391--
