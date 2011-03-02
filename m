Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D27874C80ABC
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 12:00:36 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Mar 2011 10:00:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,254,1297065600"; d="scan'208";a="608305525"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by orsmga002.jf.intel.com with ESMTP; 02 Mar 2011 10:00:35 -0800
Message-Id: <5ba502311221c3a476465d148fcfecf557fbfe79.1299088354.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299088353.git.sgw@linux.intel.com>
References: <cover.1299088353.git.sgw@linux.intel.com>
Old-Date: Tue, 1 Mar 2011 08:59:13 -0600
Date: Wed, 02 Mar 2011 10:00:35 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Wed, 02 Mar 2011 12:01:14 -0600
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 20/26] documentation/bsp-guide/bsp-guide.xml: Updated revision history on title page.
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
X-List-Received-Date: Wed, 02 Mar 2011 18:00:37 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I updated the revision history on the title page to reflect the upcoming
Release 1.0.  I will likely have to change this as we get nearer the
release so I can be sure of the number and also add meaning release
remarks to the entry.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp-guide.xml |    7 ++++++-
 1 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/documentation/bsp-guide/bsp-guide.xml b/documentation/bsp-guide/bsp-guide.xml
index 4361a2c..2862e2e 100644
--- a/documentation/bsp-guide/bsp-guide.xml
+++ b/documentation/bsp-guide/bsp-guide.xml
@@ -29,9 +29,14 @@
 
         <revhistory>
             <revision>
+                <revnumber>1.0</revnumber>
+                <date>1 April 2011</date>
+                <revremark>This release represents the initial full release for Yocto Project.</revremark>
+            </revision>
+            <revision>
                 <revnumber>0.9</revnumber>
                 <date>27 October 2010</date>
-                <revremark>Beta Draft</revremark>
+                <revremark>This release represents the Yocto Project Beta Draft.</revremark>
             </revision>
         </revhistory>
 
-- 
1.7.1


