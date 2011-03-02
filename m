Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA1144C80AC0
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 12:00:32 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Mar 2011 10:00:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,254,1297065600"; d="scan'208";a="893055774"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by fmsmga001.fm.intel.com with ESMTP; 02 Mar 2011 10:00:31 -0800
Message-Id: <982ff35cad0276eb74eae170d21ead0edd3a1072.1299088354.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299088353.git.sgw@linux.intel.com>
References: <cover.1299088353.git.sgw@linux.intel.com>
Old-Date: Fri, 25 Feb 2011 17:01:33 -0600
Date: Wed, 02 Mar 2011 10:00:30 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Wed, 02 Mar 2011 12:01:14 -0600
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 16/26] [BUGID# 553] - documentation/poky-ref-manual/resources.xml: Fixed pokylinux URL
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
X-List-Received-Date: Wed, 02 Mar 2011 18:00:32 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 553] - In appendix I in the Contributions section (I.6) there is
mention of a Poky contributions tree and the URL
git://git.pokylinux.org/poky-contrib.git is given.  I changed this
URL to git://git.yoctoproject.org/poky-contrib.git.

This is a partial fix for but 553.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/resources.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/resources.xml b/documentation/poky-ref-manual/resources.xml
index 888610c..dd4b58d 100644
--- a/documentation/poky-ref-manual/resources.xml
+++ b/documentation/poky-ref-manual/resources.xml
@@ -149,7 +149,7 @@
 </programlisting>
 
     <para>
-        A Poky contributions tree (poky-contrib, git://git.pokylinux.org/poky-contrib.git)
+        A Poky contributions tree (poky-contrib, git://git.yoctoproject.org/poky-contrib.git)
         exists for people to stage contributions in, for regular contributors.
         If people desire such access, please ask on the mailing list. Usually
         access will be given to anyone with a proven track record of good patches.
-- 
1.7.1


