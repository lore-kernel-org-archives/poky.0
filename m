Return-Path: <nithisai@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0003E00820; Wed, 13 May 2015 05:54:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, TRACKER_ID autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nithisai[at]gmail.com)
	*  1.3 TRACKER_ID BODY: Incorporates a tracking ID number
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.182 listed in list.dnswl.org]
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0A41E0027F
	for <poky@yoctoproject.org>; Wed, 13 May 2015 05:54:31 -0700 (PDT)
Received: by obbkp3 with SMTP id kp3so28625368obb.3
	for <poky@yoctoproject.org>; Wed, 13 May 2015 05:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Jp7LjwjzjTFh+7/kKuE+OPSNzIzEXDRo1YPQq6G7tUo=;
	b=I/XE2YfUZJ25HlyIoaFpLSlZ7PRGcSVqszasY7Q3MW0igWe9E+GT2rbLnH3KQ96Kx4
	k0Oad0AT1Wm4NjQzWZsVSdGjHbWFVg6uO4h03BeD/LM5JYyj5lYzrdt12ckJnYYW2gex
	L+AbozmnWikxypcxLff3MUVWKNO4Lx+dAkE73iL7iDY0iR09TupvCaynVhoFUAHPJu8e
	mUM5iLLUJMp+3Nc9MiLXgTiR/iDnE7Z6DUIATFto6NMbZ1pS3cxKZnsaM2FiTrXJjZ2V
	qrMUAM0hBvqCTCKuTWw7HY9RVHxk6PK4HM4MvF0kP/09yiUieGwy5Mq5vH2BwiIcPBA+
	Nhtg==
MIME-Version: 1.0
X-Received: by 10.60.15.133 with SMTP id x5mr15855438oec.80.1431521671160;
	Wed, 13 May 2015 05:54:31 -0700 (PDT)
Received: by 10.202.76.7 with HTTP; Wed, 13 May 2015 05:54:31 -0700 (PDT)
Date: Wed, 13 May 2015 18:24:31 +0530
Message-ID: <CACj2azstX2gWPHTh54mE-FD_BVvNWk-Y0+Gmt1g3fN_gvtod7w@mail.gmail.com>
From: Nithyakala Sainath <nithisai@gmail.com>
To: poky@yoctoproject.org
Subject: UNKNOWN_CONFIGURE_WHITELIST
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
X-List-Received-Date: Wed, 13 May 2015 12:54:33 -0000
Content-Type: multipart/alternative; boundary=089e014945c0b2ab1d0515f61ce1

--089e014945c0b2ab1d0515f61ce1
Content-Type: text/plain; charset=UTF-8

Hello,

I don't understand this option of UNKNOWN_CONFIGURE_WHITELIST in several
recipes like
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc
.

Where can I find documentation for that ? I couldn't find it in Google.


Thanks,
Nithya.

--089e014945c0b2ab1d0515f61ce1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I don&#39;t understand this opti=
on of=C2=A0UNKNOWN_CONFIGURE_WHITELIST in several recipes like=C2=A0<a href=
=3D"http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-graphi=
cs/xorg-lib/xorg-lib-common.inc">http://cgit.openembedded.org/openembedded-=
core/tree/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc</a>.=C2=A0</di=
v><div><br></div><div>Where can I find documentation for that ? I couldn&#3=
9;t find it in Google.</div><div><br></div><div><br></div><div>Thanks,</div=
><div>Nithya.</div></div>

--089e014945c0b2ab1d0515f61ce1--
