Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE496E0071E; Mon,  6 Feb 2017 07:06:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27C5BE00519
	for <poky@yoctoproject.org>; Mon,  6 Feb 2017 07:06:16 -0800 (PST)
Received: by mail-qk0-f173.google.com with SMTP id s186so57470509qkb.1
	for <poky@yoctoproject.org>; Mon, 06 Feb 2017 07:06:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yGp3oB538Si8ZKLL57jMTe73f1GmdzNgIUXdMxI3Pls=;
	b=W1+Uh1bJP0Ww0SFJhx00UVRiaCBkkiW6ANwPMUbSKC+8B/VuXEVO6Iba2iYVByr80o
	dL8sOryA3J+LOIyP0YtQ3sJj3DythCENokuXpeySMqnRmkG/ck8QHOufG5k4T1BCKOC0
	co4peMlwUQQPP65nLi7scYDKyFpusreF2gjsO8UrBkbP7/TgQzr4d5hp1PUQ1UQEzncW
	f4yGeNPAzQG1zhCLYiRwH8xjjODDNEbqfdSO7plWk42Fq3mvLfU+UsS/Y5c53HXLiJmT
	x9UFFrO9qv+yTUfqtZ6N+jepsGBrsT1G+xGM2ZLuTUjMxUF7+mCj/janKoWQF1vEmw/J
	twEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yGp3oB538Si8ZKLL57jMTe73f1GmdzNgIUXdMxI3Pls=;
	b=mC+nc4vwE1h+TAq5LpRsnBd7/8cnPUBIWyeJX3KJqmJlDGR1+mALnn7EC2iCPvYvlF
	exCuN7g6tD5KqiR4j7ET+baHpmUOGJ5ljH72LBh89RszOLJni75ZLp3FKJtsknFeGR9R
	G62K54aaBn2w/dVgkdACHo5OUxonJkqSBUJxKqa7ZNwEa2yCEyHMFtnb0/THOIycnpIG
	KsQMnXwOVWsay3PQmNPZ0AeKagGfy0SHCWmUxM+kb+sCst/OqIPABnnWBzCTuIvnIrBW
	Ybe1QtXcgclna5U6/ou28blWe4N7bSE8ObpGBAYJXJdGt6tWbfXxb4unYl0gPETNVERL
	Q5dA==
X-Gm-Message-State: AMke39lyn7CrUiCYcDduIRM17aIJ3pEcd3fcKg5TxkUvALWgdE7CQ+3tc/srT1br74rHKokNdCRmJEw52Nl22sje
X-Received: by 10.55.3.67 with SMTP id 64mr1121400qkd.244.1486393576028; Mon,
	06 Feb 2017 07:06:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Mon, 6 Feb 2017 07:05:55 -0800 (PST)
In-Reply-To: <20170206084152.223852-1-kexin.hao@windriver.com>
References: <20170206084152.223852-1-kexin.hao@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 6 Feb 2017 15:05:55 +0000
Message-ID: <CAJTo0LYbhmK_Oi9Zy5M6=X6xfpY=Kk9=Sm1270R+t4RjgZbcgg@mail.gmail.com>
To: Kevin Hao <kexin.hao@windriver.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-yocto-bsp: bump to the latest linux stable kernel for the non-x86 BSPs
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
X-List-Received-Date: Mon, 06 Feb 2017 15:06:19 -0000
Content-Type: multipart/alternative; boundary=001a114c81ca18973f0547ddf902

--001a114c81ca18973f0547ddf902
Content-Type: text/plain; charset=UTF-8

On 6 February 2017 at 08:41, Kevin Hao <kexin.hao@windriver.com> wrote:

> Bump to the latest stable kernel for 4.1, 4.4, 4,8 and 4.9. Also set
> the default kernel to 4.9.
>

Bruce also sent a series to upgrade various kernels which has been merged,
can you rebase please.

Ross.

--001a114c81ca18973f0547ddf902
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 February 2017 at 08:41, Kevin Hao <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:kexin.hao@windriver.com" target=3D"_blank">kexin.hao@windriver.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1un" class=
=3D"a3s aXjCH m15a1298a42761a82">Bump to the latest stable kernel for 4.1, =
4.4, 4,8 and 4.9. Also set<br>
the default kernel to 4.9.<br></div></blockquote></div><br>Bruce also sent =
a series to upgrade various kernels which has been merged, can you rebase p=
lease.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>Ross.</div></div>

--001a114c81ca18973f0547ddf902--
