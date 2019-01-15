Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D195E00CE0; Mon, 14 Jan 2019 16:35:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29B20E007B3
	for <poky@yoctoproject.org>; Mon, 14 Jan 2019 16:35:34 -0800 (PST)
Received: by mail-it1-f177.google.com with SMTP id m62so2516086ith.5
	for <poky@yoctoproject.org>; Mon, 14 Jan 2019 16:35:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=WNlfRuzfnjVEJ5gjtr+1/qDWjSZATc0DIRPLXocPJ9o=;
	b=1SJa3Ls1FOhZUg1YN8c7VqHvXA9DApxeX9QrjYR8oiv7MuFfCmWTVV8G6T5NoHettC
	5sRsL9bMOIqFZHd57Md9Zn2aEd/wFrYsKKDYaImhfYduy2plxU/NIbhHkINhDRUWQZV0
	XK5xrz9Kh3BCvMdWy8P/6NG1ZS4oOfK1gNcT5X0ZKfAYhE3ubalvL2pSNPsUmD6jJDnz
	XC1XQOz2qshzXWMRi9EpbbSWJLykeYN9G9fFqJjwoWgZ6hAMSktJBfjy3PhbsMXWDrc8
	XUaArV+Fy1H/7SWt3ZcWPNIjNUE4BfUMZP8c6LiI4vVNqZ0mj9ihkvv0ugz/vvtgzfJS
	6Qmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=WNlfRuzfnjVEJ5gjtr+1/qDWjSZATc0DIRPLXocPJ9o=;
	b=D/IGlxYwQ59RgXZRQ7Iolv92g6CjWh0Um4DiBuwflX8iKeqtY+KomgsYp6a/nCCSJn
	A8huecUEAz84k1gJUR3fFaBs1upVIERO6fvH0bKKXubnXixr0IDq7UbyJzYt2Qbsmm1f
	fkYccr6A5hME4Gd2+BGZSHS3aFHkZsg5y0mkt4Nzvn7cddBLjbDcF4tryi84P0bxkJ1X
	a71eAmntVjxavyCzrk3brpI6TkNYS365oepnRt4lMQNistJWbN98xPTFmQqV6UvxGkEo
	Ncu0LiLBeRisIjyzbUnyG41QextKcvXKGAmtbcHaODo4CqkdcVEZu5s84kXXybG5Lm5x
	03Ng==
X-Gm-Message-State: AJcUukf04v/ntMTZJ1exONDWPy18vhcLGPvRHQ9yF3aBmnvBrfRvbzXh
	Z1H9v9JkXGIa7gT9Fw02r3uhynwfeHc2wYL6upb/Pj0c
X-Google-Smtp-Source: ALg8bN4I0O/3SPWuNbUsQ1VPK36is4DvXeb8neI3qLrFuz13hH/OAuBK9n5rU2/4v/uo1vNCWKnWEteQzsDUMpdO+ms=
X-Received: by 2002:a02:9c53:: with SMTP id h19mr733325jal.31.1547512534505;
	Mon, 14 Jan 2019 16:35:34 -0800 (PST)
MIME-Version: 1.0
References: <7d48f265-39e9-663c-f229-8dadfc22083f@ikatu.com>
In-Reply-To: <7d48f265-39e9-663c-f229-8dadfc22083f@ikatu.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 15 Jan 2019 00:35:23 +0000
Message-ID: <CAJTo0Lbpgpv98hiSdNV1Ja6TJQ-TV5CgjpQxYxhoyW4+-fL58Q@mail.gmail.com>
To: Hector Almeida <hector@ikatu.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: systemd and sysvinit enabled in DISTRO_FEATURES
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
X-List-Received-Date: Tue, 15 Jan 2019 00:35:36 -0000
Content-Type: multipart/alternative; boundary="000000000000e7b22d057f7456f0"

--000000000000e7b22d057f7456f0
Content-Type: text/plain; charset="UTF-8"

On Tue, 15 Jan 2019 at 00:19, Hector Almeida <hector@ikatu.com> wrote:

> But I end up with the /etc/init.d folder with a lot of sysvinit scripts in
> my main image. Also I have some systemd files on my rescue image under
> /etc/systemd.
>

What files are in each place?  It's entirely possible that you're using
recipes that ship just one or the other, or recipes that don't correctly
use the classes.

Ross

--000000000000e7b22d057f7456f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Tue, 15 Jan 2019 at 00:19, Hector Alme=
ida &lt;<a href=3D"mailto:hector@ikatu.com">hector@ikatu.com</a>&gt; wrote:=
<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid=
;border-left-color:rgb(204,204,204);padding-left:1ex">
 =20

   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>But I end up with the /etc/init.d folder with a lot of sysvinit
      scripts in my main image. Also I have some systemd files on my
      rescue image under /etc/systemd.</p></div></blockquote><div><br></div=
><div>What files are in each place?=C2=A0 It&#39;s entirely possible that y=
ou&#39;re using recipes that ship just one or the other, or recipes that do=
n&#39;t correctly use the classes.</div><div><br></div><div>Ross</div></div=
></div>

--000000000000e7b22d057f7456f0--
