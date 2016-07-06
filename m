Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99C35E00DE1; Wed,  6 Jul 2016 03:55:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8881E00DDE
	for <poky@yoctoproject.org>; Wed,  6 Jul 2016 03:55:47 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id f6so103029691ith.0
	for <poky@yoctoproject.org>; Wed, 06 Jul 2016 03:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=gb0xzpql2sxRfvnEltbNLnD1taNFGQ89MlfuaMBICU8=;
	b=QRa2zR8wJp2KV1Vesdii4dxtyBID7D0OO1LUE9kbc9v9T50jCw0JFbs3oRsp/l0d+p
	2335wdeqndTpplFcTfS8Nkf8ZHsoML1CCfGPW48i5nK8bciEObJKsTX/QGKiwjfmIGdZ
	mT1x/NrgH2KsIj1IDKcbLu9U84on4V7HCr4MKEWhswDnQ4YC5q5NCEMprRQo6OTBRTqb
	teBE3kmJLRXRBqF056bh36Ysnaqih1upSz/eo+n/u+sxnFCJC7tUhTuQBy7fIOCCikSn
	eaQLF32PNblSHfGI0JAiq1GRGycaY9Xgm5DLTB1NL43QOC312R5YzyMmExQTWfD0UBZu
	BvSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=gb0xzpql2sxRfvnEltbNLnD1taNFGQ89MlfuaMBICU8=;
	b=dZ1NnawcEQ4oFXmOTJgt7tPGJ/MNrnKBzNVbSHr335gombXpqIKdBlV4hR998S6uFy
	PtW/zAZKyBB/x7oph28viJ9LbFjJv1txKBXFgYLr+iZ3+Oy8QGBs48YYr9+f41m2KpIJ
	yVcPsGA7ua8zUg1qQ/TLuNg4/tSM8Okh4pxEJKTtEAikztGYs1/SV4jdfSfKTZxyP3XO
	7jHFjwQGrnn6TC5vOfDauCBL/NYHmDimnRRFuQCTKK872Yts4E+gLzeE+aL4EAW10CXH
	qbXonM/mUNtJNzbryXG5TTsouMkyz4LOqzEz8vPhttf2d8eZ5w2qc7fapp65HhrJTjNF
	bPIQ==
X-Gm-Message-State: ALyK8tKU+Bo0oBMyo33MmqPDYzcWiGcH1sv7ysJ7dvnPCfyPPIPVMR9wqsO/YnnEQxaKk2H/rOk+feujnyv8tYr3
X-Received: by 10.36.147.198 with SMTP id y189mr16410911itd.83.1467802547142; 
	Wed, 06 Jul 2016 03:55:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Wed, 6 Jul 2016 03:55:27 -0700 (PDT)
In-Reply-To: <20160706105202.GC23993@ad.chargestorm.se>
References: <1464718260-8333-1-git-send-email-anders@chargestorm.se>
	<CAJTo0LZiqq2kqrzGs-9_9d5Oi0D9q4FAmOCV7=YA9YWCzPeNQA@mail.gmail.com>
	<20160706105202.GC23993@ad.chargestorm.se>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Jul 2016 11:55:27 +0100
Message-ID: <CAJTo0LawQHOkYEOidj=qyRxah-+oXWyd5otCQmKF9OFpZZVKhQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] yocto-bsp: add BBG dtb
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
X-List-Received-Date: Wed, 06 Jul 2016 10:55:48 -0000
Content-Type: multipart/alternative; boundary=94eb2c089e146c55980536f56902

--94eb2c089e146c55980536f56902
Content-Type: text/plain; charset=UTF-8

On 6 July 2016 at 11:52, Anders Darander <anders@chargestorm.se> wrote:

> How does the autobuilder select the 4.1-kernel? I guess it wouldn't be
> possible to remove the BBG at the same time...
>

The AB just selected the poky-lsb distribution, which in turn sets
PREFERRED_VERSION.

Ross

--94eb2c089e146c55980536f56902
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 July 2016 at 11:52, Anders Darander <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:anders@chargestorm.se" target=3D"_blank">anders@chargestorm.se</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2fo" class=3D=
"a3s aXjCH m155bfd66cbc2a306">How does the autobuilder select the 4.1-kerne=
l? I guess it wouldn&#39;t be<br>
possible to remove the BBG at the same time...<br></div></blockquote></div>=
<br>The AB just selected the poky-lsb distribution, which in turn sets PREF=
ERRED_VERSION.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra">Ross</div></div>

--94eb2c089e146c55980536f56902--
