Return-Path: <bogdan.a.marinescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A33FCE014A3
	for <poky@yoctoproject.org>; Mon, 27 May 2013 05:29:57 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 May 2013 05:30:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,751,1363158000"; d="scan'208";a="340805598"
Received: from bogdanm.rb.intel.com ([10.237.105.166])
	by fmsmga001.fm.intel.com with ESMTP; 27 May 2013 05:30:06 -0700
From: Bogdan Marinescu <bogdan.a.marinescu@intel.com>
To: poky@yoctoproject.org
Date: Mon, 27 May 2013 15:29:43 +0300
Message-Id: <1369657783-8125-1-git-send-email-bogdan.a.marinescu@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] upstream_tracking.inc: added no upgrade reason for python-pygobject
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
X-List-Received-Date: Mon, 27 May 2013 12:29:57 -0000

Signed-off-by: Bogdan Marinescu <bogdan.a.marinescu@intel.com>
---
 meta-yocto/conf/distro/include/upstream_tracking.inc |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/include/upstream_tracking.inc b/meta-yocto/conf/distro/include/upstream_tracking.inc
index a5e3d8c..fe99032 100644
--- a/meta-yocto/conf/distro/include/upstream_tracking.inc
+++ b/meta-yocto/conf/distro/include/upstream_tracking.inc
@@ -185,6 +185,7 @@ RECIPE_UPSTREAM_VERSION_pn-pong-clock = "1.0"
 RECIPE_NO_UPDATE_REASON_pn-powertop = "Do not upgrade to version 1.97 since it's a beta release of the comming PowerTOP 2.0"
 RECIPE_UPSTREAM_VERSION_pn-ppp-dialin = "check"
 RECIPE_UPSTREAM_VERSION_pn-prelink="1.0+git1+9552f214c7faa816fdb55b289a457f0cab034f00"
+RECIPE_NO_UPDATE_REASON_pn-python-pygobject = "Newer versions of python-pygobject depend on gobject-introspection which doesn't cross-compile"
 CHECK_DATE_pn-prelink = "Aug 31, 2012"
 RECIPE_UPSTREAM_DATE_pn-qemu-helper-native = "n/a"
 RECIPE_NO_UPDATE_REASON_pn-qemugl = "Do not upgrade to version: 33466cd8 because the upstream is broken in x86_64 build"
-- 
1.7.10.4


