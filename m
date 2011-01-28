Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 70B5D4C81246
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 23:50:33 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0S5oWRM020449
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 21:50:32 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 21:50:31 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 21:50:31 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu, 27 Jan 2011 23:46:26 -0600
Message-Id: <cover.1296193457.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 28 Jan 2011 05:50:31.0779 (UTC)
	FILETIME=[4646CB30:01CBBEAF]
Subject: [PATCH 0/3] Upgrade RPM to RPM 5.4.0
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
X-List-Received-Date: Fri, 28 Jan 2011 05:50:33 -0000

Upgrade RPM to RPM 5.4.0.  Include additional changes to the packaging
and rootfs creation as necessary for the new version.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/rpm
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/rpm

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (2):
  rpm: Uprev to RPM 5.4.0
  rootfs_rpm: Setup the platform configuration

Qing He (1):
  rpm: suggested change

 meta/classes/package.bbclass                       |    2 +-
 meta/classes/package_rpm.bbclass                   |    5 +-
 meta/classes/rootfs_rpm.bbclass                    |   25 +-
 meta/conf/distro/include/as-needed.inc             |    3 +-
 .../rpm/rpm/header-include-fix.patch               |   24 ++
 meta/recipes-devtools/rpm/rpm/rpm-autogen.patch    |   54 +++
 meta/recipes-devtools/rpm/rpm/rpm-libsql-fix.patch |   18 +
 meta/recipes-devtools/rpm/rpm/rpm2cpio             |   51 +++
 meta/recipes-devtools/rpm/rpm_5.1.10.bb            |  168 --------
 meta/recipes-devtools/rpm/rpm_5.4.0.bb             |  433 ++++++++++++++++++++
 10 files changed, 603 insertions(+), 180 deletions(-)
 create mode 100644 meta/recipes-devtools/rpm/rpm/header-include-fix.patch
 create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-autogen.patch
 create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-libsql-fix.patch
 create mode 100755 meta/recipes-devtools/rpm/rpm/rpm2cpio
 delete mode 100644 meta/recipes-devtools/rpm/rpm_5.1.10.bb
 create mode 100644 meta/recipes-devtools/rpm/rpm_5.4.0.bb

-- 
1.7.3.4


