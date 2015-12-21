Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 596E3E00C99; Mon, 21 Dec 2015 13:52:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22A0AE00B5A
	for <poky@yoctoproject.org>; Mon, 21 Dec 2015 13:52:20 -0800 (PST)
Received: by mail-io0-f181.google.com with SMTP id e126so168320735ioa.1
	for <poky@yoctoproject.org>; Mon, 21 Dec 2015 13:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=qSopsLXH1ITXaxrs40ZcsvkslvRxtpaotCuS9uM7HC4=;
	b=tgJ189v//04oql+4+cr7wE/5DJtfc2Gr9RaryVoNZby+QDrJCS0nHY+1VNmMAXM4cx
	3B9yoVCz7CuI+8VfCr4QmME7h7Wgu/WNPmXGmgsCh36G6qdJDCTvhS7dSFM+eqr4l+Ef
	RiTdRF7AxWQOsyItDrxKf2vPTjPbwlpwUNcLWvZf5bfBqyx2y2M5VHj3oY7CR8ZclK+N
	iRWGx16i3AHfM8vOjIyfGQY+5yl0DGVTXg/5dvkmo7WSaSzrLUjL24QHssqDxfDY/8NP
	qxgcGjCOmQjX4GZ8G1Xv+9A6zQnpiXLYeKPtfJpq76H4V1qBSdxRUt0FhIulWsxsHQTA
	CZXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=qSopsLXH1ITXaxrs40ZcsvkslvRxtpaotCuS9uM7HC4=;
	b=Z3iXBtrgvw+pjgAT7/MYmgae4vtgBO2Dxj1kpSxIILAD3vg22N8aM7sRZR8O3HAQK4
	krQZe/p9ylrhjgHPUarOF1MtNCdEIqACrOH1+86IkUwUQsPq4iulXe6SQb1FakUplI80
	6W32uLczgGDktdQ86PjjH4UoKCW/MGjTL2D2+wiKMN3dgXrns0kgQu1Gt5vf6Tjebpva
	bnEcW15pTUgaifreO7VDoL8B/irxRvHbzaIAIvsiI85kN8HRA8ZjGH6QNu9Yc2OTzHsi
	h87U6mfARTUbBkYHis7BYJxWXKEdebWEXQUHIBRAg3t+fL57HutJ9rvJ1L+f/ugAIU9S
	zR9A==
X-Gm-Message-State: ALoCoQkV2/zHOe3rSEdPewBT1Xg8iqc3EgS+LuW5NlDRIaSAgAFIXuU6Dcbr5aQ+4YBPnMt1jUvnHgJasO6csD8Spx/F5HzjzsXsN/OWGCUD4DMTHvdK4dQ=
X-Received: by 10.107.155.209 with SMTP id d200mr24087440ioe.133.1450734739984;
	Mon, 21 Dec 2015 13:52:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 21 Dec 2015 13:52:00 -0800 (PST)
In-Reply-To: <CAMKF1sps_gtbAAA12+ZsiuFUgKV=YA+5qu6gX_Nh-YHQvdJ0+g@mail.gmail.com>
References: <1450458030-26912-1-git-send-email-ross.burton@intel.com>
	<CAMKF1sps_gtbAAA12+ZsiuFUgKV=YA+5qu6gX_Nh-YHQvdJ0+g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 21 Dec 2015 21:52:00 +0000
Message-ID: <CAJTo0LYPtXjbTJJOz=7tiiRsZNq7aLvW5p0eL=dDCrnYa-5yrA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] conf/local.conf.sample: comment out ASSUME_PROVIDED=libsdl-native
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
X-List-Received-Date: Mon, 21 Dec 2015 21:52:25 -0000
Content-Type: multipart/alternative; boundary=001a11403402d725a005276f806d

--001a11403402d725a005276f806d
Content-Type: text/plain; charset=UTF-8

On 19 December 2015 at 04:50, Khem Raj <raj.khem@gmail.com> wrote:

> Can this be applied to oe-core as well
>

Yes.  To be honest I thought oe-core still defaulted to headless qemu. :)

Ross

--001a11403402d725a005276f806d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 December 2015 at 04:50, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span>=
 wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><p dir=3D"ltr">Can this be applie=
d to oe-core as well</p></blockquote><div><br></div><div>Yes.=C2=A0 To be h=
onest I thought oe-core still defaulted to headless qemu. :)</div><div><br>=
</div><div>Ross=C2=A0</div></div></div></div>

--001a11403402d725a005276f806d--
