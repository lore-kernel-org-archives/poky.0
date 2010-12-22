Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 957AC4C808B0
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 03:44:49 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBM9inAm021699
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 01:44:49 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 22 Dec 2010 01:44:48 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 22 Dec 2010 01:44:48 -0800
Message-Id: <cover.1293011017.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Wed, 22 Dec 2010 17:43:37 +0800
Date: Wed, 22 Dec 2010 17:46:22 +0800
To: poky@yoctoproject.org
X-OriginalArrivalTime: 22 Dec 2010 09:44:49.0051 (UTC)
	FILETIME=[DFC786B0:01CBA1BC]
Subject: [PATCH 0/3] Fix some failures of LSB test.
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
X-List-Received-Date: Wed, 22 Dec 2010 09:44:49 -0000


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jingdonglu/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

Thanks,
    Jingdong Lu <jingdong.lu@windriver.com>
---


Jingdong Lu (3):
  perl: Add GDBM_File into perl extension
  gcc: Add "--enable-clocale=gnu" option explicitly
  mailx: Add mailx

 meta/recipes-devtools/gcc/gcc-configure-common.inc |    2 +-
 meta/recipes-devtools/perl/perl-5.8.8/config.sh    |    2 +-
 meta/recipes-extended/mailx/mailx_12.4.bb          |   23 ++++++++++++++++++++
 3 files changed, 25 insertions(+), 2 deletions(-)
 create mode 100644 meta/recipes-extended/mailx/mailx_12.4.bb


