Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A16C4C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 03:22:31 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0J9MUlM027561
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 01:22:30 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 01:22:30 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 01:22:29 -0800
Message-Id: <cover.1295428743.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Wed, 19 Jan 2011 17:19:03 +0800
Date: Wed, 19 Jan 2011 17:20:53 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 19 Jan 2011 09:22:30.0734 (UTC)
	FILETIME=[65A58EE0:01CBB7BA]
Subject: [PATCH 0/2][PULL] Fix failures for python-runtime tests and perl tests of LSB
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
X-List-Received-Date: Wed, 19 Jan 2011 09:22:31 -0000


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jingdonglu/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

Thanks,
    Jingdong Lu <jingdong.lu@windriver.com>
---


Jingdong Lu (2):
  python: Fix failures of LSB python-runtime tests.
  perl: Add GDBM module for perl

 meta/recipes-devtools/perl/perl-5.12.2/config.sh |    4 ++--
 meta/recipes-devtools/python/python.inc          |   10 ++++++++++
 meta/recipes-devtools/python/python_2.6.6.bb     |   11 ++++++++---
 3 files changed, 20 insertions(+), 5 deletions(-)


