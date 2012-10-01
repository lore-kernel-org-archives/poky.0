Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57BA1E012FE
	for <poky@yoctoproject.org>; Mon,  1 Oct 2012 10:06:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Oct 2012 10:06:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="200277599"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.40])
	by orsmga001.jf.intel.com with ESMTP; 01 Oct 2012 10:06:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  1 Oct 2012 18:06:47 +0100
Message-Id: <1349111207-7657-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-yocto][PATCH v2] poky.conf: supported distro warning update
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
X-List-Received-Date: Mon, 01 Oct 2012 17:06:58 -0000

* Remove Fedora 15 (no longer supported by Fedora project)
* Add upcoming Fedora 18
* Add upcoming Ubuntu 12.10
* Add CentOS 5.8 & 6.3
* Add new Poky distro name format (self-hosted / build appliance) for
  Yocto Project 1.2 / 1.3
* Update Debian squeeze to 6.0.6 (automatic update from earlier 6.0.x)
* Add openSUSE 12.2

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/conf/distro/poky.conf |   11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index de82543..6cd29ba 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -68,19 +68,24 @@ CONNECTIVITY_CHECK_URIS ?= "git://git.yoctoproject.org/yocto-firewall-test;proto
 
 SANITY_TESTED_DISTROS ?= " \
             Yocto (Built by Poky 7.0) 1.2 \n \
+            Poky 7.0 (Yocto Project 1.2 Reference Distro) \n \
+            Poky 8.0 (Yocto Project 1.3 Reference Distro) \n \
             Ubuntu 10.04.4 LTS \n \
             Ubuntu 11.10 \n \
             Ubuntu 12.04 LTS \n \
             Ubuntu 12.04.1 LTS \n \
-            Fedora release 15 (Lovelock) \n \
+            Ubuntu 12.10 \n \
             Fedora release 16 (Verne) \n \
             Fedora release 17 (Beefy Miracle) \n \
+            Fedora release 18 (Spherical Cow) \n \
             CentOS release 5.6 (Final) \n \
             CentOS release 5.7 (Final) \n \
-            CentOS release 6.2 (Final) \n \
-            Debian GNU/Linux 6.0.4 (squeeze) \n \
+            CentOS release 5.8 (Final) \n \
+            CentOS release 6.3 (Final) \n \
+            Debian GNU/Linux 6.0.6 (squeeze) \n \
             openSUSE 11.4 \n \
             openSUSE 12.1 \n \
+            openSUSE 12.2 \n \
 	    "
 
 # Default hash policy for distro
-- 
1.7.9.5


