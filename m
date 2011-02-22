Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 04D784C80570
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 14:59:54 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 Feb 2011 12:59:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,207,1297065600"; d="scan'208";a="711920138"
Received: from unknown (HELO localhost) ([10.255.12.90])
	by orsmga001.jf.intel.com with ESMTP; 22 Feb 2011 12:59:54 -0800
Message-Id: <7ff5c0d4c6edcabb1c2a61052fc1ccf6fbff1c11.1298408196.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298408196.git.scott.m.rifenbark@intel.com>
References: <cover.1298408196.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 18 Feb 2011 11:26:05 -0600
Date: Tue, 22 Feb 2011 15:00:46 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 1/2] documentation/yocto-project-qs/yocto-project-qs.xml: [BUGID# 628] - Added note about Python 2.6 bitbake requirement
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
X-List-Received-Date: Tue, 22 Feb 2011 20:59:55 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Part of the fix for Bug 628 is to add a note that bitbake requires
python 2.6.  I added this note before the example bitbake command
that builds an image.  I also added a linked reference to the Poky
Reference Manual and mentioned the FAQ appendix.  There will be more
information about the python requirement in the FAQ.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 56dafe5..452282f 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -278,6 +278,12 @@
      $ bitbake poky-image-sato
                  </literallayout>
              </para></note>
+             <note><para>
+                 BitBake requires Python 2.6.  For more information on this requirement, 
+                 see the FAQ appendix in the 
+                 <ulink url='http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html'>
+                 Poky Reference Manual</ulink>.
+             </para></note>
              The final command runs the image:
              <literallayout class='monospaced'>
      $ poky-qemu qemux86
-- 
1.7.1


