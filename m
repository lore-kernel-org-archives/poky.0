Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43783E00B3D; Wed,  6 Jan 2016 23:29:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: **
X-Spam-Status: No, score=2.1 required=5.0 tests=BAYES_50,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW,XPRIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4831]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
	*  2.0 XPRIO Has X-Priority header
X-Greylist: delayed 305 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Jan 2016 23:29:22 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E388EE00803
	for <poky@yoctoproject.org>; Wed,  6 Jan 2016 23:29:22 -0800 (PST)
Received: from [62.225.157.198] by 3capp-gmx-bs07.server.lan (via HTTP);
	Thu, 7 Jan 2016 08:24:16 +0100
MIME-Version: 1.0
Message-ID: <trinity-8e3e6815-e458-4eed-926e-96325a4e39bb-1452151456046@3capp-gmx-bs07>
From: Arno <star@gmx.li>
To: poky@yoctoproject.org
Date: Thu, 7 Jan 2016 08:24:16 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:oVosWHaiUS8M5XWqTQu7kDAEcB8P4nAgf/SUpzCYTV9
	qgK613Zu9QhzSeewE4EfWvMaOYjtvj4SUh/6BAH3vQzDX6X3vJ
	xdeO5NyOylQ5PKuKo7tflF17Hj/HOS4xefDlCSWxgAtvXjCtZT
	HXLv2Fu8Ymp/566e+NGWyQ2pDb8m7HAWwxeLEYDieCEsxP9CtA
	F8dmfc0D8W+tq5IcJnYEzMg9l7gUz4X27JUqVcS836IgKaBguc
	WVMJG/C6jatjSd1i8LjyMO8t2s+CdJ0fr0tsyLr7Zu6auwPyZo QsgR7E=
X-UI-Out-Filterresults: notjunk:1;V01:K0:XF3fV2qMjMY=:mfh+FSIe6t5p8S7BubrOAn
	QVUpAw1kXCwt8l+JM4xrHem7T2I60kYCrV0RucXDs2GcF/P7+HvDkBjvFfJzdOd/WILD+By9B
	aR4ZDAul7rHlnzDnrekD8U8Vani450FKK+7hVLPUR77UQI2xs5vlKsP5y5aC51l9aRXct3+eQ
	rNDPrtZPd7u7JL6Rg2ShkQbiY8YgwWopfNmlepkSOqljoQVYXtByETSKRI3i1h2osJKrbk2+P
	780iHrlL4ZyCkfY+t1kYqAWCvFwBcANauf9nGRGY/GfMxbbtDJkGPGEnpyOHuedjSmjcBR0WO
	v5/SDdCdAPNNN09EU/G6L/BeXRkNvU1imVkd/GbbozpkwvPmRAh+BO0UM2ecytA23m+/PfXdP
	tKQnndZCBH1uFsRi+U3aOEhs5b7iDxvpufQmkpz4zfKNaA9WBG0VZDAlmWIGjP3H/pfD8Zoij
	ii4AptdYFg==
Subject: TCF agent doesn't support run control service
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
X-List-Received-Date: Thu, 07 Jan 2016 07:29:26 -0000
Content-Type: text/plain; charset=UTF-8

While my tests with TCF I found that I can't debug with it (remote exploring works).
In eclispe I get in the Tab Debugger Configuration/download the message:
"peer does not support run control service".
As I am new to both Yocto and TCF I kindly ask, is this an issue of me (wrong handling), TCF in general, TCF in Yocto or is an issue with my target ARM-CortexA9 system?
Does it mean, I should keep going for GDB?

