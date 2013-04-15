Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5C50E013CA
	for <poky@yoctoproject.org>; Mon, 15 Apr 2013 08:55:02 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Apr 2013 08:55:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,476,1363158000"; d="scan'208";a="319356905"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.245])
	by fmsmga001.fm.intel.com with ESMTP; 15 Apr 2013 08:55:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon, 15 Apr 2013 16:54:51 +0100
Message-Id: <1366041291-14617-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] poky.conf: add Poky 1.4 and CentOS 6.4 to SANITY_TESTED_DISTROS
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 15 Apr 2013 15:55:02 -0000

* CentOS 6.4 is the latest stable release; users of previous versions
  get automatically upgraded as part of normal distro updates.
* Add Poky 1.4 for the build appliance

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 02ab400..0e143ee 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -73,6 +73,7 @@ SANITY_TESTED_DISTROS ?= " \
             Yocto-1.2 \n \
             Poky-1.2 \n \
             Poky-1.3 \n \
+            Poky-1.4 \n \
             Ubuntu-10.04 \n \
             Ubuntu-11.10 \n \
             Ubuntu-12.04 \n \
@@ -84,6 +85,7 @@ SANITY_TESTED_DISTROS ?= " \
             CentOS-5.7 \n \
             CentOS-5.8 \n \
             CentOS-6.3 \n \
+            CentOS-6.4 \n \
             Debian-6.0 \n \
             Debian-7.0 \n \
             SUSE-LINUX-11.4 \n \
-- 
1.7.10.4


