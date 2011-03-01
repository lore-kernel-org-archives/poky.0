Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id AE6484C800A4
	for <poky@yoctoproject.org>; Tue,  1 Mar 2011 08:07:52 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Mar 2011 06:07:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,246,1297065600"; d="scan'208";a="395690523"
Received: from unknown (HELO localhost) ([10.255.12.134])
	by azsmga001.ch.intel.com with ESMTP; 01 Mar 2011 06:07:51 -0800
Message-Id: <3ae0cf3efe26529b17c959accb190e8f5860c3b6.1298987770.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298987770.git.scott.m.rifenbark@intel.com>
References: <cover.1298987770.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Feb 2011 14:52:04 -0600
Date: Tue, 01 Mar 2011  8:08:43 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 05/12] [BUGID# 553] - documentation/poky-ref-manual/introduction.xml: fixed pokylinux.org URL
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
X-List-Received-Date: Tue, 01 Mar 2011 14:07:52 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 553] - In the Development Checkouts section (1.5.3) there was a
reference to our git repository located at git://git.pokylinux.org/poky.git.
I changed this to git://git.yoctoproject.org/poky.git.  This is a
partial fix to Bug 553.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/introduction.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/introduction.xml b/documentation/poky-ref-manual/introduction.xml
index 97e7311..59c6eea 100644
--- a/documentation/poky-ref-manual/introduction.xml
+++ b/documentation/poky-ref-manual/introduction.xml
@@ -152,7 +152,7 @@
 
         <para>
             Poky is available from our git repository located at
-            git://git.pokylinux.org/poky.git; a web interface to the repository
+            git://git.yoctoproject.org/poky.git; a web interface to the repository
             can be accessed at <ulink url='http://git.yoctoproject.org/'/>.
         </para>
 
-- 
1.7.1


