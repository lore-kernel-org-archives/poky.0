Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B76484C80A1D
	for <poky@yoctoproject.org>; Mon, 14 Feb 2011 17:15:36 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Feb 2011 15:15:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,470,1291622400"; d="scan'208";a="657644080"
Received: from unknown (HELO localhost) ([10.255.15.30])
	by fmsmga002.fm.intel.com with ESMTP; 14 Feb 2011 15:15:36 -0800
Message-Id: <2a8c4a32be789e4101b24b0d9ea6d8116968fc72.1297724957.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1297724957.git.scott.m.rifenbark@intel.com>
References: <cover.1297724957.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 8 Feb 2011 13:35:45 -0600
Date: Mon, 14 Feb 2011 17:16:10 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 3/6] documentation/kernel-manual/kernel-how-to.xml: [BUGID# 597] Reversing common-pc-standard
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
X-List-Received-Date: Mon, 14 Feb 2011 23:15:36 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 597] - After talking with Bruce Ashfield the kernel documentation
needs to support the 2.6.34 disribution.  So, the 'common-pc-standard'
strings need to be changed back to 'common_pc-standard'.  This fix restores
them.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-how-to.xml |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index 6b70e5c..6b326b5 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -426,7 +426,7 @@ repository.
                 <literallayout class='monospaced'>
      # full description of the changes
      &gt; git whatchanged &lt;kernel type&gt;..&lt;bsp&gt;-&lt;kernel type&gt;
-        &gt; eg: git whatchanged standard..common-pc-standard
+        &gt; eg: git whatchanged standard..common_pc-standard
 
      # summary of the changes
      &gt; git log --pretty=oneline --abbrev-commit &lt;kernel type&gt;..&lt;bsp&gt;-&lt;kernel type&gt;
@@ -733,10 +733,10 @@ repository.
 
                     <para>
                         For example, the following command pushes the changes from your local branch
-                        <filename>common-pc-standard</filename> to the remote branch with the same name 
+                        <filename>common_pc-standard</filename> to the remote branch with the same name 
                         in the master repository <filename>//git.mycompany.com/pub/git/kernel-2.6.27</filename>.
                     <literallayout class='monospaced'>
-     &gt; push ssh://git.mycompany.com/pub/git/kernel-2.6.27 common-pc-standard:common-pc-standard
+     &gt; push ssh://git.mycompany.com/pub/git/kernel-2.6.27 common_pc-standard:common_pc-standard
                     </literallayout>
                     </para>
 
@@ -866,9 +866,9 @@ repository.
 
                 <para>
                     The following commands illustrate some of the steps you could use to
-                    import the common-pc-standard kernel into a secondary SCM:
+                    import the common_pc-standard kernel into a secondary SCM:
                 <literallayout class='monospaced'>
-     &gt; git checkout common-pc-standard
+     &gt; git checkout common_pc-standard
      &gt; cd .. ; echo linux/.git &gt; .cvsignore
      &gt; cvs import -m "initial import" linux MY_COMPANY start
                 </literallayout>
@@ -881,7 +881,7 @@ repository.
                 <para>
                     The following commands illustrate how you can condense and merge two BSPs into a second SCM:
                 <literallayout class='monospaced'>
-     &gt; git checkout common-pc-standard
+     &gt; git checkout common_pc-standard
      &gt; git merge cav_ebt5800-standard
      # resolve any conflicts and commit them
      &gt; cd .. ; echo linux/.git &gt; .cvsignore
-- 
1.7.1


