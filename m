Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A0264C8026D
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 01:38:06 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0U7c5pC017698
	for <poky@yoctoproject.org>; Sat, 29 Jan 2011 23:38:05 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 29 Jan 2011 23:38:04 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 29 Jan 2011 23:38:03 -0800
Message-Id: <cover.1296372804.git.jingdong.lu@windriver.com>
Old-Date: Sun, 30 Jan 2011 15:33:24 +0800
Date: Sun, 30 Jan 2011 15:36:22 +0800
To: poky@yoctoproject.org
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
X-OriginalArrivalTime: 30 Jan 2011 07:38:04.0674 (UTC)
	FILETIME=[A153EE20:01CBC050]
Subject: [PATCH 0/5] [PULL] Add packages and fix failures of LSB.
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 30 Jan 2011 07:38:06 -0000

From: Jingdong Lu <jingdong.lu@windriver.com>

* Add mailx, msmtp, cups based on Open Embedded
* Enable "--with-legacy" for libxml2 in order to pass LSB test
* Add "--enable-clocale=gnu" option explicitly for gcc

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jingdonglu/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

Thanks,
    Jingdong Lu <jingdong.lu@windriver.com>
---


Jingdong Lu (5):
  gcc: Add "--enable-clocale=gnu" option explicitly
  mailx: add mailx 12.4
  msmtp: add msmtp 1.4.23
  cups: add cups 1.4.6
  libxml2: Enable "--with-legacy" for LSB test.


