Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2409CE00A68; Fri, 26 Jun 2015 06:17:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ACE2E00A4D
	for <poky@yoctoproject.org>; Fri, 26 Jun 2015 06:17:44 -0700 (PDT)
Received: by qkhu186 with SMTP id u186so54795474qkh.0
	for <poky@yoctoproject.org>; Fri, 26 Jun 2015 06:17:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=f5bvPPPNbzdY0MlmCifK/L8JGxK5ikbcjiNDTOVi9OY=;
	b=Hw02p4EMtrma//ODb2AJGDVrvNO6qdlapv2idY2Uyj91vhrtR4/iuFTLDTZ0lb7EBY
	MRLiP5b6wR/Ms1wt9ZYrNEL2S1rKAPl7lGhJ82o1Jo6aYp0B8RL1OK2QVbLDPEYxrulg
	5CrVWQaFjV0EBL1dWGYMsVgsKJIEMBXyeBfwbSwKPAXSm+cZwpVyzB2Q/DuqAkK5FhZQ
	ZLmbTnUA4j/iXi/+l2Y5kom9QlLvQb8hxJ+UWrlo3emk1wOAvugcz+pxluSadZ1hPJe1
	Y1b5Vma3U2DsrOB/8A6BGzC77eSStMvUHlmLikPL9TyYHHnfxEJrwnskNEaPY9mtjmJ7
	PkNA==
X-Gm-Message-State: ALoCoQkJ0lsZEDrdYQLyrumvVB7J6UOenDErZwYeLC71hjd/nEdGov1h2Et5CgdbSShCxk3Ylo+M
X-Received: by 10.140.196.129 with SMTP id r123mr2142903qha.93.1435324663731; 
	Fri, 26 Jun 2015 06:17:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Fri, 26 Jun 2015 06:17:24 -0700 (PDT)
In-Reply-To: <558C5E43.6010709@linux.intel.com>
References: <558C5E43.6010709@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Jun 2015 14:17:24 +0100
Message-ID: <CAJTo0LZ_zE0ZZcAaSRJyN6wN4rKH35oRwUj4bvkH1VOSfTy1uw@mail.gmail.com>
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Poky Project <poky@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: Automatic Upgrade Helper Announcement
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
X-List-Received-Date: Fri, 26 Jun 2015 13:17:47 -0000
Content-Type: multipart/alternative; boundary=001a11433952b8316a05196b9043

--001a11433952b8316a05196b9043
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 25 June 2015 at 21:02, An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.=
com> wrote:

> I'm glad to announce the enabling of Automatic Upgrade Helper (a.k.a.
> AUH), the AUH is a service
> that provides recipe upgrades and will be run on weekly basis.
>

Excellent news, thanks Anibal for working on this!

(one day I'll figure out where i-acute is on my keyboard)

Ross

--001a11433952b8316a05196b9043
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 25 June 2015 at 21:02, An=C3=ADbal Lim=C3=B3n <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:anibal.limon@linux.intel.com" target=3D"_blank">anibal.limon@=
linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v id=3D":3j1" class=3D"a3s" style=3D"overflow:hidden">I&#39;m glad to annou=
nce the enabling of Automatic Upgrade Helper (a.k.a. AUH), the AUH is a ser=
vice<br>
that provides recipe upgrades and will be run on weekly basis.<br></div></b=
lockquote></div><br>Excellent news, thanks Anibal for working on this!</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">(one day I=
&#39;ll figure out where i-acute is on my keyboard)</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11433952b8316a05196b9043--
