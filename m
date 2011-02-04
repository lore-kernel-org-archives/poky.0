Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 085B74C800A3
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 19:03:21 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1413L9T004823
	for <poky@yoctoproject.org>; Thu, 3 Feb 2011 17:03:21 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 17:03:20 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 3 Feb 2011 17:03:20 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu,  3 Feb 2011 19:00:01 -0600
Message-Id: <cover.1296781161.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 04 Feb 2011 01:03:20.0597 (UTC)
	FILETIME=[50955450:01CBC407]
Subject: [PATCH 0/1] pseudo uprev and bug fixes
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
X-List-Received-Date: Fri, 04 Feb 2011 01:03:22 -0000

Add pseudo uprev and bug fixes related to pseudo.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/pseudo
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/pseudo

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  pseudo: Uprev pseudo and fix a few minor bugs

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/conf/local.conf.sample                        |    9 +++++
 .../pseudo/pseudo/static_sqlite.patch              |   18 +++++-----
 meta/recipes-devtools/pseudo/pseudo_git.bb         |   38 +++++++++++++++++---
 4 files changed, 52 insertions(+), 15 deletions(-)

-- 
1.7.3.4


