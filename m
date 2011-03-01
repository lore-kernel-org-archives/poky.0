Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 205374C80AB1
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 08:07:55 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Mar 2011 06:07:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,246,1297065600"; d="scan'208";a="662601404"
Received: from unknown (HELO localhost) ([10.255.12.134])
	by fmsmga002.fm.intel.com with ESMTP; 01 Mar 2011 06:07:54 -0800
Message-Id: <79310b1439c238154ee4c0a594c98279c3fbc154.1298987770.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298987770.git.scott.m.rifenbark@intel.com>
References: <cover.1298987770.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Feb 2011 16:08:07 -0600
Date: Tue, 01 Mar 2011  8:08:46 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 07/12] [BUGID# 553] - documentation/poky-ref-manual/development.xml: Fixed pokylinux.org URL
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
X-List-Received-Date: Tue, 01 Mar 2011 14:07:55 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 553] - In "The Anjuta Plug-in" section (5.1.2.2) there was
an URL to the source for the Anjuta Plug-in.  The URL had the
pokylinux.org string in it and pointed to the old area.  I changed
the URL to http://git.yoctoproject.org and directed the user to
look under IDE Plugins.

This is a partial fix to bug 553.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/development.xml |    7 +++----
 1 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/documentation/poky-ref-manual/development.xml b/documentation/poky-ref-manual/development.xml
index 9a59d7e..db844a9 100644
--- a/documentation/poky-ref-manual/development.xml
+++ b/documentation/poky-ref-manual/development.xml
@@ -302,10 +302,9 @@
                 Plug-in are all required. 
                 The Poky Anjuta Plug-in is available to download as a tarball at the OpenedHand 
                 labs <ulink url="http://labs.o-hand.com/anjuta-poky-sdk-plugin/"></ulink> page or 
-                directly from the Poky Git repository located at 
-                <ulink url="git://git.pokylinux.org/anjuta-poky"></ulink>.
-                You can also access a web interface to the repository at
-                <ulink url="http://git.pokylinux.org/?p=anjuta-poky.git;a=summary"></ulink>.
+                directly from the Poky Git repository located at git://git.yoctoproject.org/anjuta-poky.
+                You can access the source code from a web interface to the repository at
+                <ulink url="http://git.yoctoproject.org/"></ulink> under IDE Plugins.
              </para>
              <para>
                 See the README file contained in the project for more information on 
-- 
1.7.1


