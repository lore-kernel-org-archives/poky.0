Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8B7994C8007E
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 23:14:43 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1G5EhZF023724
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 21:14:43 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 21:14:42 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 21:14:42 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue, 15 Feb 2011 23:12:39 -0600
Message-Id: <cover.1297832946.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 16 Feb 2011 05:14:42.0779 (UTC)
	FILETIME=[6B38AAB0:01CBCD98]
Subject: [PATCH 0/4] Fix the emenlow build failures and add optimizations
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
X-List-Received-Date: Wed, 16 Feb 2011 05:14:44 -0000

We patch 1/4 fixes the emenlow build failure without adding any system optimizations.

This rootfs generation takes approx 11m42 on my machine.

Patch 2/4 adds a backport of head of tree RPM "nofsync" change.  This drops the
overall rootfs generation time to approx 6m38.

Patch 3/4 disables default shell debug logging during image creation.

Patch 4/4 fixes a problem where the solverdb's could be generated multiple times.
We now only generate the solvedb ONCE.  This drops the overall rootfs generation
time to 6m16.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/emenlow-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/emenlow-fix

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (4):
  rpm: Add the ability to use the platform file during install
  rpm: Avoid fsync when writing files
  image.bbclass: Disable shell debug messages
  package_rpm: Fix solverdb generation

 meta/classes/image.bbclass                       |    2 +-
 meta/classes/package_rpm.bbclass                 |   47 +++++---
 meta/classes/populate_sdk_rpm.bbclass            |    7 +-
 meta/classes/rootfs_rpm.bbclass                  |    9 +-
 meta/recipes-devtools/rpm/rpm/rpm-nofsync.patch  |   34 ++++++
 meta/recipes-devtools/rpm/rpm/rpm-platform.patch |  132 ++++++++++++++++++++++
 meta/recipes-devtools/rpm/rpm/rpm-showrc.patch   |   23 ++++
 meta/recipes-devtools/rpm/rpm_5.4.0.bb           |    9 +-
 8 files changed, 234 insertions(+), 29 deletions(-)
 create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-nofsync.patch
 create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-platform.patch
 create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-showrc.patch

-- 
1.7.3.4


