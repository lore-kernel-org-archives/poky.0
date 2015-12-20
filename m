Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AECAE00B9E; Sun, 20 Dec 2015 07:57:43 -0800 (PST)
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
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFC40E0083E
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 07:57:42 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id p187so41155348wmp.0
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 07:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=dq/UI11TDSoaFrJDrqZC2vTJjbOqfYzbLvBIE0mXh2o=;
	b=WLchbyrmaUX498THO4i1ptpSjb6xWwNkreWlyyVtO1mtshvIpuhYY2pxs+I/WTt5kk
	WLZbgzdZxY2fGvB+vuQ1M8RG8pp2MPIAVgLqryjcfkKW2QGnxp+ZhiKD3RyPzixQYq46
	VB1Rj2QtvhG6veYvC5t7xI60D45JlQVmDKGcsKT9/iNxAki7DxrUyorAxE2TVobr07Vp
	sI+T4qM41hSSckfZ1IVx0RZrBwZIiBMFKHgQ+dWetQBFM8AqAiU3dq6KcU60hXU5pl0f
	LhRFbxgcbO457x2X31m173/Ux5kpA95lekrVeej6GbV/n3VnuIALGCOdK7+k1DKQC3x/
	VjCg==
MIME-Version: 1.0
X-Received: by 10.194.87.39 with SMTP id u7mr15437275wjz.11.1450627061786;
	Sun, 20 Dec 2015 07:57:41 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Sun, 20 Dec 2015 07:57:41 -0800 (PST)
Date: Sun, 20 Dec 2015 21:27:41 +0530
Message-ID: <CAA2DH4sBZQmca7x4rD8gWnqpuX8toj5iec5XADNUWP=wamvh1A@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: poky@yoctoproject.org
Subject: SRC_URI: password protected ftp access
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
X-List-Received-Date: Sun, 20 Dec 2015 15:57:43 -0000
Content-Type: multipart/alternative; boundary=089e0102def4b82ea70527566e5b

--089e0102def4b82ea70527566e5b
Content-Type: text/plain; charset=UTF-8

Hi,


I'm writing a bitbake recipe that will download the source tarball from a
ftp/http server that is password protected. How can I avoid putting the
username & password in the bitbake file? (the recipe will be version
controlled and the username & password will not be secure anymore)


Is there a way to put the username & password in the
build/conf/local.conf?? or any other alternatives?


Any inputs will be of help to me.


Regards, PJ

--089e0102def4b82ea70527566e5b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi,<br><br><br></div>I&#39;m writing a=
 bitbake recipe that will download the source tarball from a ftp/http serve=
r that is password protected. How can I avoid putting the username &amp; pa=
ssword in the bitbake file? (the recipe will be version controlled and the =
username &amp; password will not be secure anymore)<br><br><br></div>Is the=
re a way to put the username &amp; password in the build/conf/local.conf?? =
or any other alternatives?<br><br><br></div>Any inputs will be of help to m=
e.<br><br><br></div>Regards, PJ<br></div>

--089e0102def4b82ea70527566e5b--
