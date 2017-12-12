Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75C3BE00D84; Mon, 11 Dec 2017 22:30:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Dec 2017 22:30:44 PST
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B545AE00CFF
	for <poky@yoctoproject.org>; Mon, 11 Dec 2017 22:30:44 -0800 (PST)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs42.server.lan (via HTTP); Tue, 12 Dec 2017 07:25:40 +0100
MIME-Version: 1.0
Message-ID: <trinity-e799e7c2-e406-4e33-bec6-cf17f0ed29a4-1513059940812@3c-app-gmx-bs42>
From: "Arno Steffens" <star@gmx.li>
To: poky@yoctoproject.org
Date: Tue, 12 Dec 2017 07:25:40 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:2ZjBQWqqWucnt4urhXhCZcccu5t4FyLRPdhlSo3am6J
	JxEckeL4v6aNabnhOB1d7DOhtM/QmDfGKBHkZJtq1wwzvVrT2W
	5WydkUhBaC8ZF3sxAXUpZ9qzDI3y58vVW2yZZlQtQ6wHwVkaCu
	F4oDevvLnftxqgg+Z19LgsuB/wz5REF6R15ziYPHlzBN83Ie/h
	Y5tuSZQWrNNOtW+Ttuic32S25GAPMiKZx726+Pe4Ao+pdjIBpM
	Ov3W2vO7mJxSkN4llbmRZpdQIeSMmJIdbzRtya0MLBUNuLQvK1 oCK0HU=
X-UI-Out-Filterresults: notjunk:1;V01:K0:M4BuAOtTif8=:SdLCTUCds2bgW/BVy++NEt
	MBJsqs3c9zsYz/WEfY+A1Z+JM5JTDWrYYIpAytfPIH29d7VZz1c2VABmeutl3Pm6ah+D+7/yL
	d64QCJbKs/3XVMc4g0humj6vRnrHwxESMDOsFkfYu/yefFKiNSxvT28hpJtOs93Bcy0BLOk4b
	o9mg6cxlrkAv9J7NOiuMsGFf6pHZ9Xi1UZ0EBs4YjDpfZHcu6OEhLgsm79FEQBaZI5ud3f6fY
	ZCJ/v0ylMUwD1gm39d74vobl/VFfIQlxzqgZNBnk+kLwFlrm5T21XsEbbX3B4zXt4olKZ9FHi
	GOOgsJ1jxiSJwOsp4s4HF1qhFZI9jd46h4LMx4CpdMgkJJMZ0YTgYh3UUI3kCJeW9UKtgQFtt
	Aw2gikp5yEHiHZWxCqdg6DkuHDtDHZAnKTRkwORLhAUag1Sr9ZQYZCxUdYAKt7fpkH8QC5mY2
	v9LqGuH6leQEcvLy/zekktVFds1lzfXh+0HtXAel3XFFn+zF1aei
Subject: libsnmp or adding a simple ipk to my image
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
X-List-Received-Date: Tue, 12 Dec 2017 06:30:45 -0000
Content-Type: text/plain; charset=UTF-8

Want to include libnetsnmp to my filesystem. By find -name *snmp I found the net-snmp_5.7.3.bb is doing the job, so  I added that to my image by IMAGE_INSTALL.

Checking the image - it contains more than I need. In tmp/deploy/ipk/xxx/ I cound found the interesting ipk-packet, the libnetsnmp30_5.7.3-r0_cortexa9hf-neon.ipk.

So my first question:
How can I just include this in my image? Adding  "libnetsnmp30" or "libnetsnmp" doesn't work. This rules probably work just for *.bb packages. But what to do to add a simple *.ipk file? 


Even more advanced would be not to install all libs from that ipkg package. 
How can I control that?

