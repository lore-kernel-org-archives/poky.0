Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A06D8E009C3; Thu, 28 Jan 2016 13:43:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69E5BE00803
	for <poky@yoctoproject.org>; Thu, 28 Jan 2016 13:43:54 -0800 (PST)
Received: by mail-io0-f173.google.com with SMTP id 1so69350868ion.1
	for <poky@yoctoproject.org>; Thu, 28 Jan 2016 13:43:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=QC41/1wdRKuRapE5IlvvLet1XNwDD+Oox5Ge+UvnVo0=;
	b=r+e81dR8H6DBFoKkzIBktQfZYdueGUI2DzsDwVnu6it5uLZKLIIH+4/ODOg7J7mmKG
	xFXf2BfKqKJbWSgZ3nqjI88lItndTexM9Q7MWJ3kW2J6XganISS+gKnfbPnINs/wPoLJ
	mWCuaWVicr7Ez3vuQsa+h6CPSTtsPGURzZosJNvux77+uzVkNDt2T+TX6Ptt8FPblSvq
	wn26U2WQ/HPxabUvFyRVlomqTeSi0Gb/m73FvQzkpd4DyHoE7ceuFer6OKnIbhhsLwC3
	aRS0bLxXX0faRegOdQj0dakR3nQ0ghxP8k1hCLngqkypsI7Dy60wkj7eL546DJt9mzUX
	Iugw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=QC41/1wdRKuRapE5IlvvLet1XNwDD+Oox5Ge+UvnVo0=;
	b=e6D4WQmER2ujTTmAE6mgueQ5T/URb33PiBaYiRZfdOym/ZD0tWbHzgBzBoyO09VjRC
	E4DurNIDcLxkqsgtU3eWMm2B3SwMZ5kcU7W2MDBwsGXQWmAaL5B9KgQMHhnpVxRBKnDY
	SNDOKCx6SgRrUQuc6A2mGqrLNVjU7q4wiFap9SGshosaax3wL4jwVNIzaN9vsncaRK6S
	3njQPvkSjK4U3cLtfmye0iX07o4aBUvTfqTVWdJD7r11DM02WfDH4Oa9YFwHFQLTd9Ro
	hCYFCtBOCxEhAXWsdHNOYKGq1+Z+Aw3dT5fnu6SLkzfATs2h+4pvc4/7ehhNWCfjNU/Y
	bZkQ==
X-Gm-Message-State: AG10YOQZR/oEiXLtQZjPBCGguHZgvKglzrlb4HUBUozVvOCxdVDLuSVtJxscckhb4Nhg9tNOffTBFtA538NRruJd
X-Received: by 10.107.135.104 with SMTP id j101mr7174361iod.133.1454017434312; 
	Thu, 28 Jan 2016 13:43:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Thu, 28 Jan 2016 13:43:34 -0800 (PST)
In-Reply-To: <CAD2C2VRqrrOKLixFBBXq-Vxu-nb5DzSXqV8Xrr2yuwb6auds5w@mail.gmail.com>
References: <CAD2C2VRqrrOKLixFBBXq-Vxu-nb5DzSXqV8Xrr2yuwb6auds5w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Jan 2016 21:43:34 +0000
Message-ID: <CAJTo0LbUkpF3Oq5FDXgizhUW6ANbwcyiTrrzZATBsZ_7ABsHEg@mail.gmail.com>
To: Bryan <just4tech83@gmail.com>
Cc: "Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>,
	Chander.kashyap@gmail.com,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	Poky Project <poky@yoctoproject.org>,
	bitbake-devel <bitbake-devel@lists.openembedded.org>
Subject: Re: [linux-yocto] Plymouth support in yocto
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
X-List-Received-Date: Thu, 28 Jan 2016 21:43:58 -0000
Content-Type: multipart/alternative; boundary=001a113ebe92ab7b55052a6bd023

--001a113ebe92ab7b55052a6bd023
Content-Type: text/plain; charset=UTF-8

On 28 January 2016 at 18:01, Bryan <just4tech83@gmail.com> wrote:

>    Can  we integrate plymouth package in yocto  so that we can properly
> display splash screen on different resolution monitors.
>
>
http://layers.openembedded.org/layerindex/recipe/39966/

Ross

--001a113ebe92ab7b55052a6bd023
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 January 2016 at 18:01, Bryan <span dir=3D"ltr">&lt;<a href=3D"mailto:=
just4tech83@gmail.com" target=3D"_blank">just4tech83@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-=
style:solid;padding-left:1ex"><p dir=3D"ltr">=C2=A0=C2=A0 Can=C2=A0 we inte=
grate plymouth package in yocto=C2=A0 so that we can properly display splas=
h screen on different resolution monitors. </p>
<p dir=3D"ltr"></p></blockquote></div><br><a href=3D"http://layers.openembe=
dded.org/layerindex/recipe/39966/">http://layers.openembedded.org/layerinde=
x/recipe/39966/</a><br></div><div class=3D"gmail_extra"><br></div><div clas=
s=3D"gmail_extra">Ross</div></div>

--001a113ebe92ab7b55052a6bd023--
