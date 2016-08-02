Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB385E009CE; Tue,  2 Aug 2016 13:04:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25709E0099B
	for <poky@yoctoproject.org>; Tue,  2 Aug 2016 13:04:10 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id f6so43403397ith.0
	for <poky@yoctoproject.org>; Tue, 02 Aug 2016 13:04:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Arhxvpma9c+zWi2S2NEKbIv2QLbVzGL0AefJuDTIjMA=;
	b=j6zY7Yb9g4zae0PqdYQeGQQ91kI0qp9prZUDt+qkL0N6uEu23k9D9M6c+o9bQ6NhHK
	OyHUMoFDIyy787DzBMexOzzM+SsoBqlw199iSIWbwCuk8JQyAcfixm30/Cl/El3scskn
	aXOGpTw1nKaI0H40gBLOQOGMPp7X220qn+Zm5ANSlkClknkBnyoSYoipgvckCBEkiNqV
	DdcyBwcBaJOLrM2goeW/rxHD+sCgQgfCmsRxdcR1IkqcPVaoLTxX23tLNd4STc3o1L2N
	dY8vrrPM6YXY5W8mc6qg0SG0SeSzRAjARQPcgFF4zejahPGLhcFQHFyH/XQ8qn3wr2Ys
	en2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Arhxvpma9c+zWi2S2NEKbIv2QLbVzGL0AefJuDTIjMA=;
	b=TKZtvSE9CkQqkhrjA5DKRqah13RdxfJYHy6suEKxf+L4vlg7mAOlRRyrbfgSaNDU1z
	AS3wkupPj9CEJVZ881ToQm4T+ii6A+iAWsqYvArSOXVkiDlaFHU18yAuw5vL3lK+6ZLt
	Mz/c5n02uEdzU3SigzjQORyS1N3WUXZL1ogkj+VO3QP6895bORq2PaajORHo3g7zlpYR
	RSZkPueo5Drg/QW2DauRa5X7fXJ4OHxLLb/2FPJAiWTkEi/2MAUDpDJXHi4rUsoxw6Zu
	wE8E614dZYco2QqJRtqgRyWiwoqP9eR2CpFVrEig4QUuxjSNOFTpKSbmMG9T99ksqUWt
	hz4g==
X-Gm-Message-State: AEkoousbUzH+Gbb3kB2ld2/BIkWF8PFbIR+qezoY4cQUwzIUIxRjEX+oQ1K9nBhaQl1UjXXXsWA1qmKpYkjLz/6p
X-Received: by 10.36.131.194 with SMTP id d185mr21984850ite.38.1470168249854; 
	Tue, 02 Aug 2016 13:04:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Tue, 2 Aug 2016 13:03:49 -0700 (PDT)
In-Reply-To: <2802570.EZ4bYpm4Up@peggleto-mobl.ger.corp.intel.com>
References: <1470143175-16752-1-git-send-email-ross.burton@intel.com>
	<2802570.EZ4bYpm4Up@peggleto-mobl.ger.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 2 Aug 2016 21:03:49 +0100
Message-ID: <CAJTo0Lb3KZUy2ZQrF=JosPtv1oBtHFj9q3sPxzZpanpJ2WuKaQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] maintainers.inc: remove augeas
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
X-List-Received-Date: Tue, 02 Aug 2016 20:04:13 -0000
Content-Type: multipart/alternative; boundary=94eb2c0496524b28e805391c3899

--94eb2c0496524b28e805391c3899
Content-Type: text/plain; charset=UTF-8

On 2 August 2016 at 20:59, Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> Missing commit message - every commit needs an explanation, even if it's a
> short one.
>

Indeed it does, will update.

Ross

--94eb2c0496524b28e805391c3899
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 August 2016 at 20:59, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.=
intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=
=3D":sq" class=3D"a3s aXjCH m1564cd8466b57f01">Missing commit message - eve=
ry commit needs an explanation, even if it&#39;s a<br>
short one.<br></div></blockquote></div><br>Indeed it does, will update.</di=
v><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div=
></div>

--94eb2c0496524b28e805391c3899--
