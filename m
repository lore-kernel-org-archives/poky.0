Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2515E015A7
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Aug 2013 01:40:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="365375007"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 20 Aug 2013 01:40:35 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 2BA856A4007;
	Tue, 20 Aug 2013 01:40:32 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:07 +0200
Message-Id: <e5dae1b9809aef993c6e2abd3769ae1337de7bc2.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 025/186] kernel-dev: Fixed link in title page to point to new manual.
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Aug 2013 08:40:57 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

The stock Note indicating that the user should consult the website
for the latest version of the released manual had a link to the old
kernel-manual.  I have replaced it with a link to kernel-dev.

(From yocto-docs rev: 804e672e42a66aecdbe83ce239433216af10ef8c)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 documentation/kernel-dev/kernel-dev.xml |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/documentation/kernel-dev/kernel-dev.xml b/documentation/kernel-dev/kernel-dev.xml
index f005495..ab69eef 100644
--- a/documentation/kernel-dev/kernel-dev.xml
+++ b/documentation/kernel-dev/kernel-dev.xml
@@ -56,7 +56,7 @@
       <note>
           Due to production processes, there could be differences between the Yocto Project
           documentation bundled in the release tarball and the
-          <ulink url='&YOCTO_DOCS_KERNEL_URL;'>Yocto Project Linux Kernel Development Manual</ulink> on
+          <ulink url='&YOCTO_DOCS_KERNEL_DEV_URL;'>Yocto Project Linux Kernel Development Manual</ulink> on
           the <ulink url='&YOCTO_HOME_URL;'>Yocto Project</ulink> website.
           For the latest version of this manual, see the manual on the website.
       </note>
-- 
1.7.9.5


