Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2AB7E01358
	for <poky@yoctoproject.org>; Mon, 26 Aug 2013 15:14:07 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Aug 2013 15:11:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,962,1367996400"; d="scan'208";a="368819966"
Received: from fear.jf.intel.com (HELO rage.local) ([10.7.196.147])
	by orsmga001.jf.intel.com with ESMTP; 26 Aug 2013 15:14:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Mon, 26 Aug 2013 15:18:12 -0700
Message-Id: <4ccb62aafe6f32ce224b71484767302d4d84a891.1377555271.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <c8d44d43e68a20099bdecb7277f3771fbcd300c0.1377555271.git.dvhart@linux.intel.com>
References: <c8d44d43e68a20099bdecb7277f3771fbcd300c0.1377555271.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1377555271.git.dvhart@linux.intel.com>
References: <cover.1377555271.git.dvhart@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 6/6] documentation: Replace atom-pc with genericx86 in the manuals
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
X-List-Received-Date: Mon, 26 Aug 2013 22:14:08 -0000

Update the manuals to reflect the recent replacement of atom-pc with
genericx86.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
Cc: Ross Burton <ross.burton@intel.com>
Cc: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/dev-manual/dev-manual-model.xml  |    2 +-
 documentation/ref-manual/ref-variables.xml     |    2 +-
 documentation/ref-manual/technical-details.xml |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-model.xml b/documentation/dev-manual/dev-manual-model.xml
index a59a447..efa50b0 100644
--- a/documentation/dev-manual/dev-manual-model.xml
+++ b/documentation/dev-manual/dev-manual-model.xml
@@ -156,7 +156,7 @@
                     "<ulink url='&YOCTO_DOCS_BSP_URL;#bsp-layers'>BSP Layers</ulink>" section in the
                     Yocto Project Board Support Package (BSP) Developer's Guide.</para>
                     <note>Four BSPs exist that are part of the
-                    Yocto Project release: <filename>atom-pc</filename>, <filename>beagleboard</filename>,
+                    Yocto Project release: <filename>genericx86</filename>, <filename>beagleboard</filename>,
                     <filename>mpc8315e</filename>, and <filename>routerstationpro</filename>.
                     The recipes and configurations for these four BSPs are located and dispersed
                     within the <link linkend='source-directory'>Source Directory</link>.
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index afcf7a7..4ac67c3 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -2784,7 +2784,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
      MACHINE ?= "qemuppc"
      MACHINE ?= "qemux86"
      MACHINE ?= "qemux86-64"
-     MACHINE ?= "atom-pc"
+     MACHINE ?= "genericx86"
      MACHINE ?= "beagleboard"
      MACHINE ?= "mpc8315e-rdb"
      MACHINE ?= "routerstationpro"
diff --git a/documentation/ref-manual/technical-details.xml b/documentation/ref-manual/technical-details.xml
index 1b67ca7..faf259b 100644
--- a/documentation/ref-manual/technical-details.xml
+++ b/documentation/ref-manual/technical-details.xml
@@ -1875,7 +1875,7 @@
       DEFAULTTUNE = "x86-64-x32"
       baselib = "${@d.getVar('BASE_LIB_tune-' + (d.getVar('DEFAULTTUNE', True) \
          or 'INVALID'), True) or 'lib'}"
-      #MACHINE = "atom-pc"
+      #MACHINE = "genericx86"
       #DEFAULTTUNE = "core2-64-x32"
                     </literallayout></para></listitem>
                 <listitem><para>As usual, use BitBake to build an image that supports the x32 psABI.
-- 
1.7.9.5


