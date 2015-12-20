Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B15FE00BDF; Sun, 20 Dec 2015 07:53:27 -0800 (PST)
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
	*      [74.125.82.48 listed in list.dnswl.org]
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B213EE0083E
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 07:53:24 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id p187so41084628wmp.0
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 07:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=VsNL+bxyPKCGSRWmjS1SEchmOTMraUudoPqFs0egaPc=;
	b=uYUIznyPseBxOn7S37ZVQBzIqVJaYrnm0HwRCLOqjcvsA3OY4PO90mbbkkSSuhhwJh
	V6vM2Wot9EW1Y5lK47iaBW7mS1dUpDxfvISLGf8GL0jTDXLmeLrk12XMMcACb/Tb5f+M
	ejS/NCFluZBd2zsnXqr3fJCOHcNXXJHTu9FZX6jvcNUIGHKN/JrW7Zwz9Mc1R7uez/Hb
	NAtcvbgj60h7QRkJF5+Ox7KMkb0hSblhopPUrK2PT5nMGJVfLROnfJnM9IaMw/PuhyB7
	V3wne3kAOsCK2fFJutuWnlcqakklQ8cDSLU6om0PQO3GA52M03ryQSgbbTdet0YSZWnq
	UQ6g==
MIME-Version: 1.0
X-Received: by 10.28.136.149 with SMTP id k143mr14426242wmd.57.1450626803179; 
	Sun, 20 Dec 2015 07:53:23 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Sun, 20 Dec 2015 07:53:23 -0800 (PST)
Date: Sun, 20 Dec 2015 21:23:23 +0530
Message-ID: <CAA2DH4t7mWaM71LZGUqQ2xrqqdFEoKmVv3L+5FAQKBuF1DtdzQ@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: poky@yoctoproject.org
Subject: Bitbake recipe for prebuilt binaries
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
X-List-Received-Date: Sun, 20 Dec 2015 15:53:27 -0000
Content-Type: multipart/alternative; boundary=001a11443ed84e28390527565f05

--001a11443ed84e28390527565f05
Content-Type: text/plain; charset=UTF-8

Hi,


I'm building a custom layer for my board and I would like to include some
pre-built binaries in my final image.

The package is built outside the yocto build and is available as a binary
tarball from an http/ftp location.


Can someone please point to me a bit-bake recipe that handles such a case?


Regards, PJ

--001a11443ed84e28390527565f05
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br><br></div>I&#39;m building a cus=
tom layer for my board and I would like to include some pre-built binaries =
in my final image.<br><br></div><div>The package is built outside the yocto=
 build and is available as a binary tarball from an http/ftp location.<br><=
/div><div><br><br></div>Can someone please point to me a bit-bake recipe th=
at handles such a case? <br><br><br></div>Regards, PJ<br></div>

--001a11443ed84e28390527565f05--
