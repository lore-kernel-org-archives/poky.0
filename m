Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (li38-254.members.linode.com
	[207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id DEF944C8106A
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 15:44:47 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 4B6FC30532
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 16:44:43 -0500 (EST)
Message-Id: <1091d722c534bd9386d7699a358a43e08aeac705.1294250102.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1294250102.git.scott.a.garman@intel.com>
References: <cover.1294250102.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Tue, 4 Jan 2011 14:08:47 -0800
Date: Wed, 05 Jan 2011 13:44:40 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 4B6FC30532.1EC72
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 3/8] apmd: added HOMEPAGE, minor formatting changes
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
X-List-Received-Date: Wed, 05 Jan 2011 21:44:48 -0000

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-bsp/apmd/apmd_3.2.2-14.bb |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/meta/recipes-bsp/apmd/apmd_3.2.2-14.bb b/meta/recipes-bsp/apmd/apmd_3.2.2-14.bb
index 5f6fce4..50d84ec 100644
--- a/meta/recipes-bsp/apmd/apmd_3.2.2-14.bb
+++ b/meta/recipes-bsp/apmd/apmd_3.2.2-14.bb
@@ -1,12 +1,13 @@
 SUMMARY = "Utilities for Advanced Power Management"
-DESCRIPTION = "The Advanced Power Management (APM) support provides access to \
-battery status information and a set of tools for managing notebook power \
-consumption."
+DESCRIPTION = "The Advanced Power Management (APM) support provides \
+access to battery status information and a set of tools for managing \
+notebook power consumption."
+HOMEPAGE = "http://apenwarr.ca/apmd/"
 SECTION = "base"
 PRIORITY = "required"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
-                   file://apm.h;firstline=6;endline=18;md5=c9a1f79036ab14aa157e15ed75ffd769"
+                    file://apm.h;firstline=6;endline=18;md5=c9a1f79036ab14aa157e15ed75ffd769"
 DEPENDS = "libtool-cross"
 PR = "r1"
 
-- 
1.7.1


