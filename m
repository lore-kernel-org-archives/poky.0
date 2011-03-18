Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4C19C4C80BBC
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:59:16 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Mar 2011 09:58:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="614758938"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by orsmga002.jf.intel.com with ESMTP; 18 Mar 2011 09:58:47 -0700
Message-Id: <94f123a1d24016cd5659f50ce0eb4807dc1e42a1.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 17 Mar 2011 07:41:33 -0600
Date: Fri, 18 Mar 2011 10:59:40 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 02/15] [BUGID# 293] - documentation/poky-ref-manual/extendpoky.xml: Added text for choosing server
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
X-List-Received-Date: Fri, 18 Mar 2011 16:59:16 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 293] - I added text at the end of section 3.2.3 "Customizing Images
Using Custom IMAGE_FEATURES" to include explanation of the two servers
Poky uses for images by default.  Also how to change the variable
IMAGE_FEATURES to configure the server.  This change is part of the
fix for BUGID# 293 and was suggested by Scott Garman.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/extendpoky.xml |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/documentation/poky-ref-manual/extendpoky.xml b/documentation/poky-ref-manual/extendpoky.xml
index 182b36d..d7d2c6c 100644
--- a/documentation/poky-ref-manual/extendpoky.xml
+++ b/documentation/poky-ref-manual/extendpoky.xml
@@ -364,6 +364,16 @@ RRECOMMENDS_task-custom-tools = "\
                 Users can add extra features by extending the class or creating a custom class for use 
                 with specialized image <filename>.bb</filename> files.
             </para>
+            <para>
+                Poky ships with two SSH servers you can use in your images: Dropbear and OpenSSH. 
+                Dropbear is a minimal SSH server appropriate for resource-constrained environments,
+                while OpenSSH is a well-known standard SSH server implementation.
+                By default, poky-image-sato is configured to use Dropbear.
+                The poky-image-basic and poky-image-lsb images both include OpenSSH.
+                To change these defaults, edit the <filename>IMAGE_FEATURES</filename> variable
+                so that it sets the image you are working with to include ssh-server-dropbear 
+                or ssh-server-openssh.
+            </para>
         </section>
 
         <section id='usingpoky-extend-customimage-localconf'>
-- 
1.7.1


