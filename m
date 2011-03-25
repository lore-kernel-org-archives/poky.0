Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 129DB4C800B7
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 11:39:51 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Mar 2011 09:39:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,243,1299484800"; d="scan'208";a="618896633"
Received: from unknown (HELO localhost) ([10.255.12.171])
	by orsmga002.jf.intel.com with ESMTP; 25 Mar 2011 09:39:51 -0700
Message-Id: <22906abaec121c9b6c5bdc6740c58bcf684be82d.1301070812.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301070812.git.scott.m.rifenbark@intel.com>
References: <cover.1301070812.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 22 Mar 2011 11:33:12 -0600
Date: Fri, 25 Mar 2011 10:40:55 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 1/2] documentation/yocto-project-qs/yocto-project-qs.xml: Bug reference added courtesy Colin Walters
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
X-List-Received-Date: Fri, 25 Mar 2011 16:39:52 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

In the Quick Start there is a note indicating that you should run
'bitbake make-native' followed by 'bitbake poky-image-sato' if you
are running Fedora 14 or another distribution that ships with GNU.
Colin Walters submitted a patch that offerred an URL for further
explanation on a Make Bug.  The URL is
http://www.mail-archive.com/bug-make@gnu.org/msg06220.html.  Rather
than submit Colin's patch verbatim I updated the note to include the
reference with a little different wording.

This extra information submitted by Colin will be very helpful.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 4cb50a5..e6a1da9 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -289,8 +289,10 @@
              </literallayout>
              <note><para>
                  If you are running Fedora 14 or another distribution 
-                 that ships with GNU make v3.82 you need to run the following two 
-                 <command>bitbake</command> commands instead:
+                 that ships with GNU, run the following two <filename>BitBake</filename>
+                 commands.  
+                 For more information, see
+                 <ulink url='http://www.mail-archive.com/bug-make@gnu.org/msg06220.html'></ulink>.
                  <literallayout class='monospaced'>
      $ bitbake make-native
      $ bitbake poky-image-sato
-- 
1.7.1


