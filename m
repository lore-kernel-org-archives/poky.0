Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 587ACE00D3D; Thu,  9 May 2019 04:55:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Thu, 09 May 2019 04:55:39 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD843E00C14
	for <poky@yoctoproject.org>; Thu,  9 May 2019 04:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1557402938;
	bh=sbKHgDsWJr77T5SB057EiWepkLmLDIt6ABZu4eT7rFg=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=ARGPSO41IFq8DZ1v4SrZCNN5FPAZcMsRemoC2kujlCcqSqmTHm1g1OhNnbItXBAZ9
	PX00+J5vWcAYPQ2DQ7bi5/droL5vxc71KK0Q6PrcBKYy1IrhpkSPHR/+9uzp+Jc047
	2E6ikk8YOkawxoT8fkccQ4mlBmDyJSiTqRLeqfa4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.225.157.196] ([62.225.157.196]) by web-mail.gmx.net
	(3c-app-gmx-bs09.server.lan [172.19.170.60]) (via HTTP); Thu, 9 May 2019
	13:50:36 +0200
MIME-Version: 1.0
Message-ID: <trinity-8c3db1ff-6d98-4569-8cf1-bdef6962e89d-1557402636185@3c-app-gmx-bs09>
From: "Arno Steffens" <star@gmx.li>
To: poky@yoctoproject.org
Date: Thu, 9 May 2019 13:50:36 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:JFTqgii3UuPlnJTsdzcNaZfr+dR9ZbbgLp2DO4QnYbfIyx2HrFIyuMcjcbMwjVExL1l5c
	mGnlg6q/zzf8jyqIwRN87IDhjq/5WWegmAufK0RMVwfpE+ISIYeDXFQmOvzZPgpuS3BZCFB4pYEb
	nQ3RCmaNpNq11rRLJ/bG6j0juQnuUIGmwJHG3BXVJ9HLa2tmfl1c1SFBkdBGJ5sOShSYinJSDKzy
	AfFrKuM2MRvi56Na/1uN0qXp8XMG+j+Avycvz7lX5ukOXvu8/jblXeKPFFFuFIxdJlLoxnR1TQqL
	qM=
X-UI-Out-Filterresults: notjunk:1;V03:K0:A/h2ONBP8Yc=:Six3mRTWpslKIvMaDuAwzF
	uS7lSEO6q/7dEBcWLDVVrNjyn1ypjMfLofgqH0Umti6eKxnmPH3GEauVXZNA35111jhE1yHYF
	KwPTQrCGzpmep1KPya372dppTPyLIhFS7/muzt33jNL1ORfQxTT3auGPDvGFSMMKGIWyYRZwn
	KvEVJcAP/G4P9QQrEZBSasXOYOVc7vneXxW3ntmJmQXHKtgnmJtGA6FkNP/6DVJqg01Vzm0E6
	apfNBGiX5i1xl4Ez2SR/umxcnOEeHGZxn6pKOrDaiflCeWpzMEg2HF7porJe5BfW5I4yGR0Oh
	IVYF/7knuZrtTiI+XLYLI/SZR20RVHbm33iw6j1ntcG1vBlJH7nJupVwSjq2vn2bJCu+yAI5e
	3UB8uz4wuRw4sguM7/N2PqjUlDdMTtAHyyuBV5f3fX5P6TuEoRqa4EEVQyzKj+L6ewLklucHU
	wnWn1IXobOOwsbC3uYVpEavyxQmNXtB7H/vRf7IX3qokVmCc00Tztu6nlD+3ImmklVfAC0Cga
	L0ND445Xv7Xw30fM5ZiTuMhxLa1LTLgt1cr8AHKoXuxb+N1kMGOIdt6s9jBJQ7mJGViqVVqCY
	kEydZWZHbgF41iGfK4QcLJrYVB0oKsnz0olaH54x7Dag3gc5gp6J+buA==
Subject: SDK and rootfs
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
X-List-Received-Date: Thu, 09 May 2019 11:55:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

As far as I understand the SDK is created by "bitbake <image> -c populate_=
sdk".
It seems to contain an (almost) complete rootfs.
In previous versions I even created my rootfs out of it
ln -s sdk/sysroots/<machine> rootfs

It doesn't seem to work anymore, not sure what is the problem, at least /b=
in/sh isn't there anymore, although it is part of <image>.

So I found that rootfs is to extract by a script out of the <image>.tar.<c=
ompression>.
I have to give to developers 2 files, SDK and image for nfs-booting, right=
?

I am wondering why this is needed? Shouldn't they be identical? Can someon=
e explain the background for my understanding?

Thanks,
Arno



