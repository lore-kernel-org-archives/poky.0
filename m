Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B8B704C804D9
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 12:42:21 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 22 Mar 2011 10:42:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,225,1299484800"; d="scan'208";a="670039329"
Received: from unknown (HELO localhost) ([10.255.12.169])
	by fmsmga002.fm.intel.com with ESMTP; 22 Mar 2011 10:42:20 -0700
Message-Id: <46d8d3f4997349ab6d984ef64522dbe780c7bc80.1300815668.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300815668.git.scott.m.rifenbark@intel.com>
References: <cover.1300815668.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 22 Mar 2011 11:33:12 -0600
Date: Tue, 22 Mar 2011 11:43:20 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 1/1] documentation/yocto-project-qs/yocto-project-qs.xml: Bug reference added courtesy Colin Walters
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
X-List-Received-Date: Tue, 22 Mar 2011 17:42:21 -0000

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


