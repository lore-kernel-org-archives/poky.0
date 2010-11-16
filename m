Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F7434C80FA7
	for <poky@pokylinux.org>; Tue, 16 Nov 2010 04:21:00 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAGAKxJq026841
	for <poky@pokylinux.org>; Tue, 16 Nov 2010 02:20:59 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 16 Nov 2010 02:20:59 -0800
Received: from [128.224.162.176] ([128.224.162.176]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 16 Nov 2010 02:20:58 -0800
From: Lu Jingdong <jingdong.lu@windriver.com>
To: poky <poky@pokylinux.org>
Date: Tue, 16 Nov 2010 18:21:45 +0800
Message-ID: <1289902905.1859.4.camel@eric-desktop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-OriginalArrivalTime: 16 Nov 2010 10:20:59.0526 (UTC)
	FILETIME=[F69CBA60:01CB8577]
Subject: [PULL]Removing "--with-wctype-functions" for python
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
X-List-Received-Date: Tue, 16 Nov 2010 10:21:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Subject: [PATCH 3/3] Removing --with-wctype-functions for fixing
failures of python runtime test of LSB.

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-devtools/python/python.inc      |    1 -
 meta/recipes-devtools/python/python_2.6.5.bb |    2 +-
 2 files changed, 1 insertions(+), 2 deletions(-)

Pull URL:
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro


-- 
Lu Jingdong
jingdong.lu@windriver.com
China, Wind River


