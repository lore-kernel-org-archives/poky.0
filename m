Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20CBDE00B48; Fri, 31 Jul 2015 03:09:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB27CE00B1A
	for <poky@yoctoproject.org>; Fri, 31 Jul 2015 03:09:18 -0700 (PDT)
Received: by qkdg63 with SMTP id g63so27229001qkd.0
	for <poky@yoctoproject.org>; Fri, 31 Jul 2015 03:09:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=rkr3Yyg+HTPf9lRI/X/zDEMloTwkpGFLkv4b1iNrmx4=;
	b=YYuZ4ARC5nu7wAD2dDtl17F0XorEYcBsCPLe92SFJQXwi2ToxhKT86e5rNnf5sG6Bq
	egUiVd7GI4KlNJJMqFCDW0mM3xUtls8rpvdWBkRwWvwh+w/GiI732B378dsw6JcOoTbl
	ygzDwZoN4PeHbRk8XN7pCtxPnJSBtAF4VCfuxlUGWn+hKV07jdRk5h0w9WhSKB7zSbI9
	/hfNrj5ZhOYEUMbfgBIlOwBFCBS3q/nQKAtiB17LgcYOOrjsdoxfSK7h1LzcdqUQhbjM
	dXdDEXDwDHIxx7r1+AKWxI2F6dKxbfnJdkz62NwGJSlDich9GoDkJHmhppxgQuxrE4zm
	cv3Q==
X-Gm-Message-State: ALoCoQnOFh5Ve48MPpN5n+h45gPukfpHHCT2mdNS3DtJ7Uq47tB664wMT0SIBBED15pNT2cmbXCf
X-Received: by 10.55.43.95 with SMTP id r92mr2705426qkh.67.1438337358260; Fri,
	31 Jul 2015 03:09:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Fri, 31 Jul 2015 03:08:58 -0700 (PDT)
In-Reply-To: <55BAECDE.6010602@gmail.com>
References: <1437829398-8585-1-git-send-email-twoerner@gmail.com>
	<55BA184A.8010207@gmail.com>
	<CAJTo0La2XTdTVNHGURH-78LA7ESr6CS+oZSqRtAwBBPRSuNJPw@mail.gmail.com>
	<55BAECDE.6010602@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 31 Jul 2015 11:08:58 +0100
Message-ID: <CAJTo0LZ=6ZGyPHSk-GWw6ysN750v2L5tNKtQEOfmmG_dpebgtw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] SANITY_TESTED_DISTROS: fix lsb name for openSUSE 13.2
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
X-List-Received-Date: Fri, 31 Jul 2015 10:09:24 -0000
Content-Type: multipart/alternative; boundary=001a1147b8dc4e82d1051c29038b

--001a1147b8dc4e82d1051c29038b
Content-Type: text/plain; charset=UTF-8

On 31 July 2015 at 04:34, Trevor Woerner <twoerner@gmail.com> wrote:

> It's like being at a restaurant and seeing people who arrive and order
> after you get served and leave before your food arrives ;-D
>

Patch review and merging is not at all FIFO.  EIFO? Easiest to review In,
First Out. :)

Ross

--001a1147b8dc4e82d1051c29038b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 31 July 2015 at 04:34, Trevor Woerner <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div id=3D":1t1" class=3D"a3s" =
style=3D"overflow:hidden">It&#39;s like being at a restaurant and seeing pe=
ople who arrive and order<br>
after you get served and leave before your food arrives ;-D</div></blockquo=
te></div><br>Patch review and merging is not at all FIFO.=C2=A0 EIFO? Easie=
st to review In, First Out. :)</div><div class=3D"gmail_extra"><br></div><d=
iv class=3D"gmail_extra">Ross</div></div>

--001a1147b8dc4e82d1051c29038b--
