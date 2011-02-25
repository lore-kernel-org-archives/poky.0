Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1394B4C80AA2
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 10:01:32 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Feb 2011 08:01:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,225,1297065600"; d="scan'208";a="891278506"
Received: from unknown (HELO localhost) ([10.255.12.90])
	by fmsmga001.fm.intel.com with ESMTP; 25 Feb 2011 08:01:31 -0800
Message-Id: <2df373b58e9670f3051764f78e29f0db189c0de7.1298649366.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298649366.git.scott.m.rifenbark@intel.com>
References: <cover.1298649366.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Feb 2011 09:50:48 -0600
Date: Fri, 25 Feb 2011 10:02:22 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 4/4] [BUGID# 696] documentation/yocto-project-qs/yocto-project-qs.xml: Added Copyright dates
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
X-List-Received-Date: Fri, 25 Feb 2011 16:01:32 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Added "Copyright 2010-2011 Linux Foundation" under the title.  For
now this will have to do.  Once we get the converted website up I
would like to see all manuals displayed as HTML files within the
context of the site layout.  At that point we can have a copyright
and trademark stuff in a persistent footer.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 452282f..14c3f90 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -6,6 +6,7 @@
 
 <section id='fake-title'>
     <title>Yocto Project Quick Start</title>
+    <para>Copyright &copy; 2010-2011 Linux Foundation</para>
 </section>
 
 <section id='welcome'>
-- 
1.7.1


