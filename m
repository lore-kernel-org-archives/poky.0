Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE3CCE00CC9; Wed, 23 Dec 2015 07:21:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
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
	*      [74.125.82.43 listed in list.dnswl.org]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ECCDE006F3
	for <poky@yoctoproject.org>; Wed, 23 Dec 2015 07:21:27 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id p187so152596403wmp.0
	for <poky@yoctoproject.org>; Wed, 23 Dec 2015 07:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=y2P0opucvezu0J3w5wFfDcLkZsf8lwIsGQrz2Ood/CY=;
	b=1KSrBMVnJ0YMwBJRcRn/NuL2rFMze3BB6nzdHpjZRuLNHYRvk36bcPeUxiLrcbSogw
	6P6/mx2CmZTEUGjvVVtt/lpQfbDWueP9A9mA0ImZEeYx2wPuyT8J8pH5ANR0216seLgK
	0novIoIXL1p+RlJhdduoa2IN0p5WFVfzTpgpFZGot0HsR1m1W72WoQ6TtFtqD0etYS7V
	HxQcotTrt6Htxc0N/w5s5z4yThkGS8wo5/8SSa468szGtEtCvRqkGq2JOlbJQR1DPTUc
	9BXVHeklY/lkKIuvH3kw0V9dtHIjxCDmhmU4+Nr2dr75n4pdkbWKgQ8b+Dtq8q9G4boO
	p5zQ==
MIME-Version: 1.0
X-Received: by 10.194.79.227 with SMTP id m3mr33806602wjx.5.1450884087082;
	Wed, 23 Dec 2015 07:21:27 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Wed, 23 Dec 2015 07:21:27 -0800 (PST)
Date: Wed, 23 Dec 2015 20:51:27 +0530
Message-ID: <CAA2DH4twfBS9UKcD+c15W7YQPD=yKyN83uTpaV31Zgohs9ivzQ@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: PACKAGE_EXCLUDE not working (Custom layer)
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
X-List-Received-Date: Wed, 23 Dec 2015 15:21:30 -0000
Content-Type: multipart/alternative; boundary=047d7bf0c6b69efa75052792468e

--047d7bf0c6b69efa75052792468e
Content-Type: text/plain; charset=UTF-8

Hi,


I'm creating a custom layer for my imx6 based setup.

In build/conf/local.conf I have added: PACKAGE_EXCLUDE = "imx-lib imx-test"
but my custom image still tries to build these packages.


Can someone please point out the helpful debug commands/steps to figure out
why these packages are being included?

Can PACKAGE_EXCLUDE be overridden if some other package depends on the
excluded packages and is included?


In my package exclude list I added other package groups that bring imx-lib
& imx-test but still its being build. Any inputs will be of help!



Regards, PJ

--047d7bf0c6b69efa75052792468e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi,<br><br><br></div>I&=
#39;m creating a custom layer for my imx6 based setup.<br><br></div>In buil=
d/conf/local.conf I have added: PACKAGE_EXCLUDE =3D &quot;imx-lib imx-test&=
quot; but my custom image still tries to build these packages.<br><br></div=
><br></div>Can someone please point out the helpful debug commands/steps to=
 figure out why these packages are being included?<br><br></div>Can PACKAGE=
_EXCLUDE be overridden if some other package depends on the excluded packag=
es and is included?<br><br><br></div>In my package exclude list I added oth=
er package groups that bring imx-lib &amp; imx-test but still its being bui=
ld. Any inputs will be of help!<br><br><br><br></div>Regards, PJ<br><div><d=
iv><br><br><br></div></div></div>

--047d7bf0c6b69efa75052792468e--
