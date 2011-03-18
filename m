Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 064534C804CA
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:31:09 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 18 Mar 2011 10:31:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="404799784"
Received: from unknown (HELO localhost) ([10.255.12.99])
	by azsmga001.ch.intel.com with ESMTP; 18 Mar 2011 10:31:01 -0700
Message-Id: <7255f3aee762637b3ebe6b7d8a1e3fc546ea9d6c.1300469401.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300469401.git.scott.m.rifenbark@intel.com>
References: <cover.1300469401.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 15 Mar 2011 18:05:04 -0600
Date: Fri, 18 Mar 2011 11:31:54 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 1/6] [BUGID# 857] - documentation/yocto-project-qs/yocto-project-qs.xml: added groff package
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
X-List-Received-Date: Fri, 18 Mar 2011 17:31:10 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 857] In the packages section for the list of Debian-based system package
requirements I added 'groff'.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 14c3f90..c2e019a 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -142,7 +142,7 @@
      unzip texi2html texinfo libsdl1.2-dev docbook-utils gawk \
      python-pysqlite2 diffstat help2man make gcc build-essential \
      g++ desktop-file-utils chrpath libgl1-mesa-dev libglu1-mesa-dev \
-     mercurial autoconf automake
+     mercurial autoconf automake groff
             </literallayout>
 
         <para>
-- 
1.7.1


