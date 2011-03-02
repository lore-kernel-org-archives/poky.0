Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id DEBE64C80ABC
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 12:00:29 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Mar 2011 10:00:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,254,1297065600"; d="scan'208";a="715282270"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by orsmga001.jf.intel.com with ESMTP; 02 Mar 2011 10:00:28 -0800
Message-Id: <94f7132e56699c9f9f8dc43d6a1271294c5cbe26.1299088354.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299088353.git.sgw@linux.intel.com>
References: <cover.1299088353.git.sgw@linux.intel.com>
Old-Date: Fri, 25 Feb 2011 16:37:57 -0600
Date: Wed, 02 Mar 2011 10:00:28 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Wed, 02 Mar 2011 12:01:14 -0600
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 14/26] [BUGID# 553] - documentation/poky-ref-manual/resources.xml: Fixed pokylinux URL
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
X-List-Received-Date: Wed, 02 Mar 2011 18:00:30 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 553] - In the "Bugtracker" section (appendix I - I.2) there is
a reference to the bugtracker.  The text shows just the string
"bug tracker" but the hidden URL was http://bugzilla.pokylinux.org.
I updated the text to say to report problems by using the Bugzilla
application and then gave the URL http://bugzilla.yoctoproject.org
as the reference.

This is a partial fix for bug 553.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/resources.xml |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/poky-ref-manual/resources.xml b/documentation/poky-ref-manual/resources.xml
index b151b21..e6f7b26 100644
--- a/documentation/poky-ref-manual/resources.xml
+++ b/documentation/poky-ref-manual/resources.xml
@@ -18,8 +18,8 @@
     <title>Bugtracker</title>
 
     <para>
-        Problems with Poky should be reported in the 
-        <ulink url='http://bugzilla.pokylinux.org/'>bug tracker</ulink>.
+        Problems with Poky should be reported using the Bugzilla application at 
+        <ulink url='http://bugzilla.yoctoproject.org/'></ulink>.
     </para>
 </section>
 
-- 
1.7.1


