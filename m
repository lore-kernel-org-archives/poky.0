Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 11B6F4C80AA7
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 11:39:53 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 25 Mar 2011 09:39:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,243,1299484800"; d="scan'208";a="408701022"
Received: from unknown (HELO localhost) ([10.255.12.171])
	by azsmga001.ch.intel.com with ESMTP; 25 Mar 2011 09:39:53 -0700
Message-Id: <658b3d55bb1e3d4967f91636d71bc05066966620.1301070812.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301070812.git.scott.m.rifenbark@intel.com>
References: <cover.1301070812.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 25 Mar 2011 10:16:43 -0600
Date: Fri, 25 Mar 2011 10:40:57 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 2/2] documentation/yocto-project-qs/yocto-project-qs.xml: [BUGID# 931] - Removed Fedora 14 bitbake native note
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
X-List-Received-Date: Fri, 25 Mar 2011 16:39:54 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 931] - I have removed the Note indicating that the user must run
'bitbake make-native' if running Fedora 14.
This is no longer a requirement for YP Release 1.0

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |   11 -----------
 1 files changed, 0 insertions(+), 11 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index e6a1da9..b1040a2 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -288,17 +288,6 @@
      $ bitbake poky-image-sato
              </literallayout>
              <note><para>
-                 If you are running Fedora 14 or another distribution 
-                 that ships with GNU, run the following two <filename>BitBake</filename>
-                 commands.  
-                 For more information, see
-                 <ulink url='http://www.mail-archive.com/bug-make@gnu.org/msg06220.html'></ulink>.
-                 <literallayout class='monospaced'>
-     $ bitbake make-native
-     $ bitbake poky-image-sato
-                 </literallayout>
-             </para></note>
-             <note><para>
                  BitBake requires Python 2.6.  For more information on this requirement, 
                  see the FAQ appendix in the 
                  <ulink url='http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html'>
-- 
1.7.1


