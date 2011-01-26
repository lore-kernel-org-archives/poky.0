Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B2834C811AA
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 22:30:36 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0Q4UahD014799
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 20:30:36 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 25 Jan 2011 20:30:36 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 25 Jan 2011 20:30:36 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue, 25 Jan 2011 22:26:41 -0600
Message-Id: <cover.1296015743.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 26 Jan 2011 04:30:36.0253 (UTC)
	FILETIME=[C71818D0:01CBBD11]
Subject: [PATCH 0/1] Uprev Berkley DB to 5.1.19
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
X-List-Received-Date: Wed, 26 Jan 2011 04:30:37 -0000

Uprev Berkley DB to 5.1.19.  This is a precursor to the RPM5 uprev.

The code was tested with the Sato date and address book applications.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/db5
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/db5

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  BerkleyDB: Uprev db from 4.2 to 5.1.19

 meta/recipes-support/db/db/arm-thumb-mutex.patch   |   36 -------
 .../db/db/arm-thumb-mutex_db5.patch                |   36 +++++++
 meta/recipes-support/db/db/configure_fixes.patch   |   18 ----
 meta/recipes-support/db/db_4.2.52.bb               |  102 --------------------
 .../db/{db_4.3.29.bb => db_5.1.19.bb}              |   39 +++++---
 5 files changed, 63 insertions(+), 168 deletions(-)
 delete mode 100644 meta/recipes-support/db/db/arm-thumb-mutex.patch
 create mode 100644 meta/recipes-support/db/db/arm-thumb-mutex_db5.patch
 delete mode 100644 meta/recipes-support/db/db/configure_fixes.patch
 delete mode 100644 meta/recipes-support/db/db_4.2.52.bb
 rename meta/recipes-support/db/{db_4.3.29.bb => db_5.1.19.bb} (68%)

-- 
1.7.3.4


