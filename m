Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E0FCC4C800B8
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 08:41:32 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Mar 2011 06:41:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,205,1299484800"; d="scan'208";a="668704009"
Received: from unknown (HELO localhost) ([10.255.16.25])
	by fmsmga002.fm.intel.com with ESMTP; 18 Mar 2011 06:41:31 -0700
Message-Id: <54e5279b9fc0a00ee5ab0ce060d2eb04627c6d36.1300455487.git.josh@linux.intel.com>
In-Reply-To: <cover.1300455487.git.josh@linux.intel.com>
References: <cover.1300455487.git.josh@linux.intel.com>
Old-Date: Fri, 18 Mar 2011 13:28:42 +0000
Date: Fri, 18 Mar 2011 13:41:26 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/1] sanity.bbclass: check for duplicates in PACKAGE_ARCHS
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
X-List-Received-Date: Fri, 18 Mar 2011 13:41:33 -0000

From: Joshua Lock <josh@linux.intel.com>

Duplicate entries in PACKAGE_ARCHS causes problems with rootfs
generation. For example multiple architecture entries in opkg.conf
will confuse the opkg package manager.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/classes/sanity.bbclass |   13 +++++++++++++
 1 files changed, 13 insertions(+), 0 deletions(-)

diff --git a/meta/classes/sanity.bbclass b/meta/classes/sanity.bbclass
index 6e13d2a..639e1ea 100644
--- a/meta/classes/sanity.bbclass
+++ b/meta/classes/sanity.bbclass
@@ -338,6 +338,19 @@ def check_sanity(e):
     elif oeroot.find (' ') != -1:
         messages = messages + "Error, you have a space in your POKYBASE directory path. Please move Poky to a directory which doesn't include a space."
 
+    # Check that we don't have duplicate entries in PACKAGE_ARCHS
+    pkgarchs = data.getVar('PACKAGE_ARCHS', e.data, True)
+    seen = {}
+    dups = []
+
+    for pa in pkgarchs.split():
+    	if seen.get(pa, 0) == 1:
+	    dups.append(pa)
+	else:
+	    seen[pa] = 1
+    if len(dups):
+       messages = messages + "Error, the PACKAGE_ARCHS variable contains duplicates. The following archs are listed more than once: %s" % " ".join(dups)
+
     if messages != "":
         raise_sanity_error(messages)
 
-- 
1.7.4


