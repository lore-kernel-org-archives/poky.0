Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D5884C8009A
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 19:08:36 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Mar 2011 17:08:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="720566013"
Received: from unknown (HELO localhost) ([10.255.12.146])
	by orsmga001.jf.intel.com with ESMTP; 15 Mar 2011 17:08:35 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 15 Mar 2011 17:08:13 -0700
Message-Id: <3d39aad0f231d983c4eaa0d2cc09991fc62285fa.1300233983.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1300233983.git.dvhart@linux.intel.com>
References: <cover.1300233983.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH] formfactor: Assume HAVE_TOUCHSCREEN=0
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
X-List-Received-Date: Wed, 16 Mar 2011 00:08:36 -0000

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dvhart/bernard/n450
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/bernard/n450

Thanks,
    Darren Hart <dvhart@linux.intel.com>
---


Darren Hart (1):
  formfactor: Assume HAVE_TOUCHSCREEN=0

 meta/recipes-bsp/formfactor/files/config |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

If no machine specific formfactor is found, the formfactor config defaults
to HAVE_TOUCHSCREEN=1. The result is for the matchbox session to disable
the cursor. This can lead to a lot of churn sorting out why the cursor doesn't
appear: xorg bug, xorg driver bug, kernel drm driver bug, kms bug, many
of which appear when searching for invisible cursor on the web.

On the other hand, if a cursor appears on a touchscreen device, one is much
more likely to reach a correct conclusion: "I need to set HAVE_TOUCHSCREEN=1
in my custom machine formfactor config". Which likely exists or is needed for
other formfactor specific things such as dpi, screen size, rotation, etc.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta/recipes-bsp/formfactor/files/config |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-bsp/formfactor/files/config b/meta/recipes-bsp/formfactor/files/config
index ed15d9e..e936916 100755
--- a/meta/recipes-bsp/formfactor/files/config
+++ b/meta/recipes-bsp/formfactor/files/config
@@ -5,7 +5,7 @@ if [ -e /etc/formfactor/machconfig ]; then
 fi
 
 if [ -z "$HAVE_TOUCHSCREEN" ]; then
-    HAVE_TOUCHSCREEN=1
+    HAVE_TOUCHSCREEN=0
 fi
 
 if [ -z "$HAVE_KEYBOARD" ]; then
-- 
1.7.1


