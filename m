Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 808E3E00B9E; Fri, 29 Jan 2016 02:48:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE6FE00A92
	for <poky@yoctoproject.org>; Fri, 29 Jan 2016 02:48:47 -0800 (PST)
Received: by mail-io0-f169.google.com with SMTP id d63so68011842ioj.2
	for <poky@yoctoproject.org>; Fri, 29 Jan 2016 02:48:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=rfI2MK7mbjV/aPy/D8+wENe2G30ysEpO9w9AvVEG2f0=;
	b=Qxus8SabOQkZr104ljgM6qTyDB0ReAXSBthUFwFcIOVbcmD5toVTUAgqUOLxCaULM3
	V1qm0OrM6E/xNv+p78dl2njRuWjlfjXMxKRbpc4NfUpBtEKgr6sQYzr/t2qb0XWxSSvO
	EfhoWQoPoOIFC22GPGjqnhP/S1alal6yrtDDRZBKZPtOyQCOHAnny+91SXmWWlwTdRG5
	FZMEZl8XdYWsvYLbydqRWXoCRvdoI+S5jyRPjghVfL/fo9ECCidRyUHgds602RyjqoJS
	z1dW9Sd2p/DaQefALE/wN67GCIQOB4zhRkJM0KGM5Ax0Wl+B6u/nBxGasKBt8JoUt5Pd
	4e9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=rfI2MK7mbjV/aPy/D8+wENe2G30ysEpO9w9AvVEG2f0=;
	b=mT7EdZnYAO1gIaQW7UoH7YfScLiAD61mKR7809iMBqFFXalUTbzH69n+rd0z2MtpQ+
	usBGJzZ6OIzVTpQGCCKkbM3+Zp5j0Tkro4waDp60LPufDlvNo4c07Wib79Njt2yD/gfW
	WVVDu9bYr6GDL1n4nkEYbjUBIcq6oI2a2OaPu+O0pFsgHtu4diSqMCLdkwiEHIXBfYAF
	fiz2txWFnI89GA9TrVmc8M518fkUC8rwmCSP1V7yxcpOG4scqzCRMXHHPeFkpeYJig3R
	fYsrOuUxv+r4MuqukuMaB0z9crDblHBL6hTjudaLncx5IJ416OF4pMX4HMKoYsjU3ifb
	RJjw==
X-Gm-Message-State: AG10YOSQSzavDSK2yOCMgIo5d4lCBXC2v2eCf7MUgnAduXS97a2qgVxGmcDDALNrBRFYSrgwqUja3HXaXeGdhk8L
X-Received: by 10.107.3.154 with SMTP id e26mr8790184ioi.99.1454064527232;
	Fri, 29 Jan 2016 02:48:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 29 Jan 2016 02:48:27 -0800 (PST)
In-Reply-To: <56AAC347.6080809@windriver.com>
References: <1453818056-6498-1-git-send-email-ross.burton@intel.com>
	<56A9CA3B.4000704@windriver.com>
	<CAJTo0LZZga-97iUfP3MNtP=5fn4whhpB-0eLgedJTGEG4Ry8wA@mail.gmail.com>
	<1453976171.10340.44.camel@linuxfoundation.org>
	<CAJTo0LbKX8kDQkPnfaUO4W=AbB8F0FE1cMjxtdM8=iUChroSzg@mail.gmail.com>
	<56AAC347.6080809@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 29 Jan 2016 10:48:27 +0000
Message-ID: <CAJTo0LaHh5oxEACSAozuVxpkBFhOBRuOcaTqS1hi6uA0C6t_Eg@mail.gmail.com>
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
X-List-Received-Date: Fri, 29 Jan 2016 10:48:51 -0000
Content-Type: multipart/alternative; boundary=001a113ec10aa06c21052a76c7e0

--001a113ec10aa06c21052a76c7e0
Content-Type: text/plain; charset=UTF-8

On 29 January 2016 at 01:41, Robert Yang <liezhi.yang@windriver.com> wrote:

> They are faster and smaller than www.iana.org in both the USA and China.
> I'm not sure about the U.K. since I don't have a server there.
>

Agreed, it responds quickly and the page is very small.  We have a winner!

Ross

--001a113ec10aa06c21052a76c7e0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 January 2016 at 01:41, Robert Yang <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2jh" =
class=3D"a3s" style=3D"overflow:hidden">They are faster and smaller than <a=
 href=3D"http://www.iana.org" rel=3D"noreferrer" target=3D"_blank">www.iana=
.org</a> in both the USA and China.<br>
I&#39;m not sure about the U.K. since I don&#39;t have a server there.<br><=
/div></blockquote></div><br>Agreed, it responds quickly and the page is ver=
y small.=C2=A0 We have a winner!</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">Ross</div></div>

--001a113ec10aa06c21052a76c7e0--
