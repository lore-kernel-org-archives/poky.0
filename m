Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C84F8E008B4; Mon,  7 Mar 2016 13:30:28 -0800 (PST)
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
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BDE8E0077F
	for <poky@yoctoproject.org>; Mon,  7 Mar 2016 13:30:25 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id m184so3167118iof.1
	for <poky@yoctoproject.org>; Mon, 07 Mar 2016 13:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=v8G9jl78jtzAks0/chRwmnouCwij7XkUTajEp8vXqe4=;
	b=X+afCLiJ54+mP16BLAm4vVPB52x6hcfKQ5UabCNoAxjgCNp1TrBp2tg6Ff1xXNZqft
	FV8OI5o+WsVh24tLxi0ovHrdW7n/Hs5HoGvmImwlNGtgoqgzy03TnjuaBJW8LIOPMORd
	Mm8TuxePWunmzVmGxSP2a9CTv965DklKrWAND5j4opkhX/nk9APCaiATp/zvLSSrKa6J
	WZAhTiKDUVSbfz5sxwxS6yS8S1TxV4R3As4XJmABdgruagbNKj1JAtEM+R4OnAymCe7p
	cdWL0xqjcdttbTGZCXBldBHVtnUjeZCllSu8ZTJWE2fPtiF+dHWwzIY4o4LHiXs4RNrB
	92jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=v8G9jl78jtzAks0/chRwmnouCwij7XkUTajEp8vXqe4=;
	b=kxl8jaGz2Xo6f6zsGy9owH+YMvbsqpNgm584m5Yv1hc3Nt5krZbV6ZOpVWgC2oHIL1
	Em6t9+shlwyyLcVWcO8wzzL8Xx6hrWyuM1ckL0RXYDSAorT+oZ+CiAqF8lgnN61urWNw
	0roqpFKjgkhk602mT+iiVUHxelx+Mn/YSsu0htJmBtQ8h+ruxd4ViVI644QpXD4F+zi2
	c4zBdCBGiIcKug1LQZMbFyZSrnGaESAFFmDbubEIAYP+ueNOGdh9QF8R+8ZqtxIUTFwz
	MqwQCPDgbZ3BfV/wJMZsVWPR9trS15GnGBH9bDGEqtnFa5G30h2nm84LliU8fjn8nnqB
	UWxw==
X-Gm-Message-State: AD7BkJKRC7qQfRzF+QYwWdHE9zn3P9XGp+wLVxTD+l/0eVnP+imVXm4MOCkR4sbWwQRW9G0PMc6kRz5FAY4EgxO7
X-Received: by 10.107.16.19 with SMTP id y19mr9544212ioi.148.1457386224972;
	Mon, 07 Mar 2016 13:30:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.128.234 with HTTP; Mon, 7 Mar 2016 13:30:05 -0800 (PST)
In-Reply-To: <BLUPR20MB0020EA93BE0EF0850FA85F5AB9B10@BLUPR20MB0020.namprd20.prod.outlook.com>
References: <BLUPR20MB0020FE972AE2DAC1FFE967B2B9B10@BLUPR20MB0020.namprd20.prod.outlook.com>
	<CAJTo0LaiG5RD14Cvv=sS=8sPnoF2HzqduTk1avY-t1hO32RBEA@mail.gmail.com>
	<BLUPR20MB00209235147FEF3DE7D88756B9B10@BLUPR20MB0020.namprd20.prod.outlook.com>
	<CAJTo0La89VVOk6vvky880rh5Q45KO2DnRnXy0QsZ290Ag=z+5w@mail.gmail.com>
	<BLUPR20MB0020EA93BE0EF0850FA85F5AB9B10@BLUPR20MB0020.namprd20.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Mar 2016 21:30:05 +0000
Message-ID: <CAJTo0LYOZr+rvuGFVz-_ZNziEwsCwmupjnzjMyO9i5Q-SAjV9w@mail.gmail.com>
To: Thomas Arcuri <tarcuri@androcs.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: fresh poky clone build fails when recipe chown's files during do_install (tzdata_2016a.bb)
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
X-List-Received-Date: Mon, 07 Mar 2016 21:30:28 -0000
Content-Type: multipart/alternative; boundary=001a113fd1ea3d7987052d7c2c72

--001a113fd1ea3d7987052d7c2c72
Content-Type: text/plain; charset=UTF-8

On 7 March 2016 at 21:21, Thomas Arcuri <tarcuri@androcs.com> wrote:

> I ran bitbake -DDD tzdata, attached is the complete log. I noticed some
> lines referencing fakeroot and pseudo, but again not sure how to interpret
> this. I was able to build this on a fresh Debian virtual machine, but this
> is failing on my lubuntu setup.
>
>
Oh, can you verify that the disk you're building on (/storage/home) is a
standard filesystem and not something fun like a samba mount, FAT
partition, or something.

Cheers
Ross

--001a113fd1ea3d7987052d7c2c72
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 March 2016 at 21:21, Thomas Arcuri <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:tarcuri@androcs.com" target=3D"_blank">tarcuri@androcs.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><p>I ran bitbake -DDD tzdata, =
attached is the complete log. I noticed some lines referencing fakeroot and=
 pseudo, but again not sure how to interpret this. I was able to build this=
 on a fresh Debian virtual machine, but this is failing on my lubuntu setup=
.</p>
<p></p></blockquote></div><br>Oh, can you verify that the disk you&#39;re b=
uilding on (/storage/home) is a standard filesystem and not something fun l=
ike a samba mount, FAT partition, or something.</div><div class=3D"gmail_ex=
tra"><br></div><div class=3D"gmail_extra">Cheers</div><div class=3D"gmail_e=
xtra">Ross</div></div>

--001a113fd1ea3d7987052d7c2c72--
