Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A75F2E004E9
	for <poky@yoctoproject.org>; Tue, 27 Sep 2011 06:25:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Sep 2011 06:25:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,449,1312182000"; d="scan'208";a="71180178"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.120.163])
	by fmsmga002.fm.intel.com with ESMTP; 27 Sep 2011 06:24:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 27 Sep 2011 14:24:51 +0100
Message-Id: <76951fc9ca9407ebb26a59302697213334937a6b.1317129817.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1317129817.git.paul.eggleton@linux.intel.com>
References: <cover.1317129817.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1317129817.git.paul.eggleton@linux.intel.com>
References: <cover.1317129817.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] conf/distro/poky.conf: set SANITY_TESTED_DISTROS
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
X-List-Received-Date: Tue, 27 Sep 2011 13:25:00 -0000

Specify a list of tested distributions, based on those tested prior
to the Yocto Project 1.1 release as recorded on the wiki.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |   12 ++++++++++++
 1 files changed, 12 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 46b22f4..5c09996 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -61,3 +61,15 @@ CONNECTIVITY_CHECK_URIS ?= "git://git.yoctoproject.org/yocto-firewall-test;proto
                           https://eula-downloads.yoctoproject.org/index.php \
                           http://bugzilla.yoctoproject.org/report.cgi"
 
+SANITY_TESTED_DISTROS = " \
+            Ubuntu 10.04 \n \
+            Ubuntu 10.04.3 LTS \n \
+            Ubuntu 11.04 \n \
+            Fedora release 13 (Goddard) \n \
+            Fedora release 14 (Laughlin) \n \
+            Fedora release 15 (Lovelock) \n \
+            openSUSE 11.2 \n \
+            openSUSE 11.3 \n \
+            openSUSE 11.4 \n \
+	    "
+
-- 
1.7.4.1


