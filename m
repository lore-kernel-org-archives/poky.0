Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 14A694C8090C
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 17:15:35 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Feb 2011 15:15:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,470,1291622400"; d="scan'208";a="602631146"
Received: from unknown (HELO localhost) ([10.255.15.30])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2011 15:15:34 -0800
Message-Id: <f8c5a63a25f55a6c25420f131553b512eb3f3228.1297724957.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1297724957.git.scott.m.rifenbark@intel.com>
References: <cover.1297724957.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 8 Feb 2011 12:23:54 -0600
Date: Mon, 14 Feb 2011 17:16:08 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 2/6] documentation/yocto-project-qs/yocto-project-qs.xml: [BUGID# 631] - Added tip for saving disk space during a build.
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
X-List-Received-Date: Mon, 14 Feb 2011 23:15:35 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 631] - I added a tip in the section where we show a sample build.
The tip says that you can add 'INHERIT += "rm_work"' to the local.conf file
to help conserve disk space during a build.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 24480bc..56dafe5 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -234,6 +234,17 @@
      $ source poky-laverne-4.0/poky-init-build-env poky-4.0-build
              </literallayout>
          </para>
+
+         <tip><para>
+             To help conserve disk space during builds you can add the following statement
+             to your <filename>local.conf</filename> file.  
+             Adding this statement deletes the work directory used for building a package
+             once the package is built.
+             <literallayout class='monospaced'>
+     INHERIT += "rm_work"
+             </literallayout>
+         </para></tip>
+
          <itemizedlist>
              <listitem><para>The first two commands extract the Yocto Project files from the 
              release tarball and place them into a subdirectory of your current directory.</para></listitem>
-- 
1.7.1


