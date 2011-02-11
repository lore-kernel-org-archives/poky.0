Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D4CC64C8007E
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 14:29:19 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1BKTGA4018378;
	Fri, 11 Feb 2011 12:29:18 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 12:29:16 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 12:29:15 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Fri, 11 Feb 2011 14:26:46 -0600
Message-Id: <cover.1297455890.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 11 Feb 2011 20:29:15.0796 (UTC)
	FILETIME=[5A05D540:01CBCA2A]
Subject: [PATCH 0/1] Fix the way busybox splits
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
X-List-Received-Date: Fri, 11 Feb 2011 20:29:20 -0000

In order to resolve the issue of more then one initscript per split package,
change the way busybox splits.  We have added two additional packages
busybox-udhcpc and busybox-syslog.. Both of which are now "recommended"
to ensure that if available, they are installed.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/busybox
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/busybox

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  busybox: Rework busybox to fix limitations in initscripts

 meta/recipes-core/busybox/busybox.inc |   21 ++++++++++++++-------
 1 files changed, 14 insertions(+), 7 deletions(-)

-- 
1.7.3.4


