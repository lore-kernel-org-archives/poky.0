Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id C63E44C810F1
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 07:56:29 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Dec 2010 05:56:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,219,1291622400"; d="scan'208";a="871301137"
Received: from unknown (HELO helios) ([10.255.16.56])
	by fmsmga001.fm.intel.com with SMTP; 23 Dec 2010 05:56:27 -0800
Received: by helios (sSMTP sendmail emulation); Thu, 23 Dec 2010 13:55:48 +0000
Message-Id: <6180f7992c9ad21cc083b6254916806aed97f3ab.1293112192.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1293112192.git.paul.eggleton@linux.intel.com>
References: <cover.1293112192.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Old-Date: Thu, 23 Dec 2010 13:44:05 +0000
Date: Thu, 23 Dec 2010 13:55:48 +0000
To: poky@yoctoproject.org,scott.m.rifenbark@intel.com
Subject: [PATCH 2/2] documentation/poky-ref-manual: expand discussion of PR and INC_PR
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
X-List-Received-Date: Thu, 23 Dec 2010 13:56:29 -0000

Expands a little on PR and INC_PR.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/extendpoky.xml    |   17 +++++++++++------
 documentation/poky-ref-manual/ref-variables.xml |    8 ++++++--
 2 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/documentation/poky-ref-manual/extendpoky.xml b/documentation/poky-ref-manual/extendpoky.xml
index 92f51a5..4fd818e 100644
--- a/documentation/poky-ref-manual/extendpoky.xml
+++ b/documentation/poky-ref-manual/extendpoky.xml
@@ -685,15 +685,20 @@ BBFILE_PRIORITY_emenlow = "6"
                 This means that for new recipes you must be sure to add the PR variable and set its initial value
                 equal to "r0".  
                 Failing to define PR makes it easy to miss when you bump a package.
-                Note that you can only use integer values for the PR variable.
+                Note that you can only use integer values following the "r" in the PR variable.
             </para>
             <para>
-                You can also use the <glossterm><link linkend='var-INC_PR'>INC_PR</link></glossterm> variable
-                to keep up with package revisioning.
-            </para>
+                If you are sharing a common .inc file with multiple recipes, you can also use the 
+                <glossterm><link linkend='var-INC_PR'>INC_PR</link></glossterm> variable to ensure that 
+                the recipes sharing the .inc file are rebuilt when the .inc file itself is changed. The
+                .inc file must set INC_PR (initially to "r0"), and all recipes referring to it should set PR to 
+                "$(INC_PR).0" initially, incrementing the last number when the recipe is changed. If the
+                .inc file is changed then its INC_PR should be incremented.
+            </literallayout>
             <para> 
-                When upgrading the version of a package the (<glossterm><link 
-                linkend='var-PV'>PV</link></glossterm>) and PR variables should be reset to "r0".
+                When upgrading the version of a package, assuming the <glossterm><link 
+                linkend='var-PV'>PV</link></glossterm> changes, the PR variable should be reset to "r0"
+                (or "$(INC_PR).0" if you are using INC_PR).
             </para>
             <para>
                 Usually, version increases occur only to packages.
diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index 98a501f..da57e2c 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -609,7 +609,7 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
 
         <glossentry id='var-PR'><glossterm>PR</glossterm>
             <glossdef>
-                <para>Revision of package.
+                <para>Revision of package. The default value is "r0".
                     </para>
             </glossdef>
         </glossentry>
@@ -617,7 +617,11 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
         <glossentry id='var-PV'><glossterm>PV</glossterm>
             <glossdef>
                 <para>Version of package.
-                    The default value is "1.0"</para>
+                    This is normally extracted from the recipe name, e.g. if the recipe is named 
+                    "expat_2.0.1.bb" then PV will be "2.0.1". PV is generally not overridden within 
+                    a recipe unless it is building an unstable version from a source code repository 
+                    (git, svn, etc.).
+                 </para>
             </glossdef>
         </glossentry>
 
-- 
1.7.1


