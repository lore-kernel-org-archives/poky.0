Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7DECD4C80AC5
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:31:07 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 10:31:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="898738043"
Received: from unknown (HELO localhost) ([10.255.12.99])
	by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2011 10:31:06 -0700
Message-Id: <541889a8150a7547a69b41e402754ea745b11b71.1300469401.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300469401.git.scott.m.rifenbark@intel.com>
References: <cover.1300469401.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 12:01:35 -0600
Date: Fri, 18 Mar 2011 11:32:00 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 5/6] documentation/yocto-project-qs/yocto-project-qs.xml: Added references to FAQs
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
X-List-Received-Date: Fri, 18 Mar 2011 17:31:07 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

In the beginning of the manual I added references to the FAQs we
support.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |    9 ++++++++-
 1 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index c481d5f..62e9e6b 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -26,11 +26,18 @@
         and run it using the QEMU emulator.
     </para>
     <para>
-        For complete information on the Yocto Project you should check out the 
+        For complete information on the Yocto Project, you should check out the 
         <ulink url='http://www.yoctoproject.org'>Yocto Project Website</ulink>.
         You can find the latest builds, breaking news, full development documentation, and a 
         rich Yocto Project Development Community into which you can tap.
     </para>
+    <para>
+        Finally, you might find the Frequently Asked Questions (FAQ) for the Yocto Project
+        at <ulink url='https://wiki.yoctoproject.org/wiki/FAQ'>Yocto Project FAQ</ulink> and 
+        the FAQ appendix located in the 
+        <ulink url='http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html'>
+        Poky Reference Manual</ulink> helpful.
+    </para>
 </section>
 
 <section id='yp-intro'>
-- 
1.7.1


