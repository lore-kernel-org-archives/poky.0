Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9BDDE4C811D6
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 00:53:46 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 25 Nov 2010 22:53:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,259,1288594800"; d="scan'208";a="861529594"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2010 22:53:45 -0800
Message-Id: <dd454977a71526a897894153b1fad86f8f8fdf76.1290736298.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1290736297.git.dongxiao.xu@intel.com>
References: <cover.1290736297.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Fri, 26 Nov 2010 09:50:08 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 13/14] libgsmd: Upgrade to rev 5394
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
X-List-Received-Date: Fri, 26 Nov 2010 06:53:46 -0000

Rebase fix_machine_init.patch to latest version.
Fixed recipe metadata.

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 .../gsm/files/fix_machine_init.patch               |   21 +++++++++++--------
 meta/recipes-connectivity/gsm/gsmd.inc             |    8 +++++-
 3 files changed, 19 insertions(+), 12 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index d8b1686..87dac8c 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -59,7 +59,7 @@ SRCREV_pn-kern-tools-native ??= "9722d8decacd2b750f079b3fde7918810700f80e"
 SRCREV_pn-libdrm ??= "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
 SRCREV_pn-libfakekey ??= "2031"
 SRCREV_pn-libgdbus ??= "aeab6e3c0185b271ca343b439470491b99cc587f"
-SRCREV_pn-libgsmd ??= "4335"
+SRCREV_pn-libgsmd ??= "5394"
 SRCREV_pn-libmatchbox ??= "1531"
 SRCREV_pn-libowl ??= "408"
 SRCREV_pn-libowl-av ??= "416"
diff --git a/meta/recipes-connectivity/gsm/files/fix_machine_init.patch b/meta/recipes-connectivity/gsm/files/fix_machine_init.patch
index 808bb17..9fb6466 100644
--- a/meta/recipes-connectivity/gsm/files/fix_machine_init.patch
+++ b/meta/recipes-connectivity/gsm/files/fix_machine_init.patch
@@ -1,22 +1,25 @@
-Index: src/gsmd/gsmd.c
-===================================================================
---- a/src/gsmd/gsmd.c	(revision 4304)
-+++ b/src/gsmd/gsmd.c	(working copy)
-@@ -196,13 +196,13 @@
+Rebase the patch to latest version.
+
+By Dongxiao Xu <dongxiao.xu@intel.com>
+
+diff -ruN gsm-orig/src/gsmd/gsmd.c gsm/src/gsmd/gsmd.c
+--- gsm-orig/src/gsmd/gsmd.c	2010-11-25 10:14:22.000000000 +0800
++++ gsm/src/gsmd/gsmd.c	2010-11-25 10:14:52.000000000 +0800
+@@ -196,14 +196,11 @@
  
  	sms_cb_init(gsmd);
  
 -	if (gsmd->vendorpl && gsmd->vendorpl->initsettings){
 +	if (gsmd->vendorpl && gsmd->vendorpl->initsettings)
  		rc |= gsmd->vendorpl->initsettings(gsmd);
-+
-+	if (gsmd->machinepl && gsmd->machinepl->initsettings)
- 		rc |= gsmd->machinepl->initsettings(gsmd);
+-		if (gsmd->machinepl && gsmd->machinepl->initsettings)
+-			rc |= gsmd->machinepl->initsettings(gsmd);
 -		return rc;
 -	}	
 -	else
 -		return rc;
-+
++	if (gsmd->machinepl && gsmd->machinepl->initsettings)
++		rc |= gsmd->machinepl->initsettings(gsmd);
 +	return rc;
  }
  
diff --git a/meta/recipes-connectivity/gsm/gsmd.inc b/meta/recipes-connectivity/gsm/gsmd.inc
index 02ea453..9818188 100644
--- a/meta/recipes-connectivity/gsm/gsmd.inc
+++ b/meta/recipes-connectivity/gsm/gsmd.inc
@@ -1,12 +1,16 @@
 SUMMARY = "GSM libraries and daemons"
 DESCRIPTION = "GSM libraries and daemons implementing the 07.10 specification"
 HOMEPAGE = "http://www.openmoko.org"
-LICENSE = "GPL LGPL"
+LICENSE = "GPLv2+ & LGPLv2.1+"
+LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
+                    file://COPYING.library;md5=2d5025d4aa3495befef8f17206a5b0a1 \
+                    file://src/util/event.c;beginline=1;endline=21;md5=7fc982f6308a591d1e3581e59c6768ce \
+                    file://src/libgsmd/libgsmd_sms.c;beginline=1;endline=19;md5=7bd4cdfab49cfba6a2afc020ee0b0806"
 SECTION = "libs/gsm"
 PROVIDES += "gsmd"
 RPROVIDES_${PN} = "libgsmd0 libgsmd gsmd gsmd-devel"
 PV = "0.1+svnr${SRCREV}"
-PR = "r47"
+PR = "r0"
 
 SRC_URI = "svn://svn.openmoko.org/trunk/src/target;module=gsm;proto=http \
            file://fix_machine_init.patch;patch=1 \
-- 
1.6.3.3


