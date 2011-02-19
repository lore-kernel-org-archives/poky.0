Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 028D94C8090C
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 19:05:35 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1J15ZNk008216
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 17:05:35 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 18 Feb 2011 17:05:34 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 18 Feb 2011 17:05:34 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Fri, 18 Feb 2011 19:03:52 -0600
Message-Id: <cover.1298077360.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
X-OriginalArrivalTime: 19 Feb 2011 01:05:34.0905 (UTC)
	FILETIME=[1CD55A90:01CBCFD1]
Subject: [PATCH 0/1] Fix emenlow build failure
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
X-List-Received-Date: Sat, 19 Feb 2011 01:05:36 -0000

It was discovered that RPM had an internal limit of 5 solvedb's.  This
limit was being exceeded by some configurations and build environments, the
emenlow build happened to trigger the failure.

Increased the limit to 20, and added an error message in case we ever exceed
the limit again.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: mhatle/rpm5
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/rpm5

Thanks,
    Mark Hatle <mark.hatle@windriver.com>
---


Mark Hatle (1):
  rpm: Increase the number of solvedb's allowed

 meta/recipes-devtools/rpm/rpm/rpm-solvedb.patch |   29 +++++++++++++++++++++++
 meta/recipes-devtools/rpm/rpm_5.4.0.bb          |    3 +-
 2 files changed, 31 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/rpm/rpm/rpm-solvedb.patch

-- 
1.7.3.4


