Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F7CB4C80AAC
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 12:00:25 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Mar 2011 10:00:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,254,1297065600"; d="scan'208";a="608305382"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by orsmga002.jf.intel.com with ESMTP; 02 Mar 2011 10:00:24 -0800
Message-Id: <fe4ed51c121b8f1445a0999e411c54270321e025.1299088354.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299088353.git.sgw@linux.intel.com>
References: <cover.1299088353.git.sgw@linux.intel.com>
Old-Date: Fri, 25 Feb 2011 14:52:04 -0600
Date: Wed, 02 Mar 2011 10:00:23 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Wed, 02 Mar 2011 12:01:14 -0600
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 10/26] [BUGID# 553] - documentation/poky-ref-manual/introduction.xml: fixed pokylinux.org URL
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
X-List-Received-Date: Wed, 02 Mar 2011 18:00:25 -0000

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


