Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A573B4C800A8
	for <poky@yoctoproject.org>; Fri, 18 Feb 2011 10:56:34 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Feb 2011 08:56:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,188,1297065600"; d="scan'208";a="659183374"
Received: from unknown (HELO localhost) ([10.255.12.19])
	by fmsmga002.fm.intel.com with ESMTP; 18 Feb 2011 08:56:33 -0800
Message-Id: <76b8c5479233d107983074eaf69423bc0194e143.1298047832.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298047832.git.scott.m.rifenbark@intel.com>
References: <cover.1298047832.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 15 Feb 2011 15:49:33 -0600
Date: Fri, 18 Feb 2011 10:57:11 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 1/4] documentation/kernel-manual/kernel-how-to.xml: Fix to step 1 of section 3.4.4
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
X-List-Received-Date: Fri, 18 Feb 2011 16:56:34 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Step one states that the linux-yocto_git.bbappend file is left.  This
file is associated with distro 2.6.37 kernel and the rest of the
example is associated with the 2.6.34 kernel.  So, I changed the
step to indicate that the directory is left with a linux-yocto-stable_git.bbappend
file.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/kernel-how-to.xml |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/documentation/kernel-manual/kernel-how-to.xml b/documentation/kernel-manual/kernel-how-to.xml
index c3c9569..efe81e5 100644
--- a/documentation/kernel-manual/kernel-how-to.xml
+++ b/documentation/kernel-manual/kernel-how-to.xml
@@ -1052,7 +1052,8 @@ That's it. Configure and build.
                         <listitem><para>Copy meta-emenlow</para></listitem>
                         <listitem><para>Fix or remove anything you do not need.  
                         For this example the only thing left was the kernel directory with a 
-                        <filename>linux-yocto_git.bbappend</filename> file (linux-yocto is the kernel listed in 
+                        <filename>linux-yocto-stable_git.bbappend</filename> file 
+                        (linux-yocto-stable is the kernel listed in 
                         <filename>meta-crownbay/conf/machine/crownbay.conf</filename></para></listitem>.
                         <listitem><para>Add a new entry in the <filename>build/conf/bblayers.conf</filename> 
                         so the new layer can be found by Bitbake.</para></listitem>
-- 
1.7.1


