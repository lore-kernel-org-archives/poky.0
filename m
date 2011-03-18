Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 31FFE4C80ACD
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:31:11 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 18 Mar 2011 10:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="404799853"
Received: from unknown (HELO localhost) ([10.255.12.99])
	by azsmga001.ch.intel.com with ESMTP; 18 Mar 2011 10:31:08 -0700
Message-Id: <0666379ea0463ef7819e088cccffdb6ca592e908.1300469401.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300469401.git.scott.m.rifenbark@intel.com>
References: <cover.1300469401.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 18 Mar 2011 08:28:24 -0600
Date: Fri, 18 Mar 2011 11:32:01 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 6/6] documentation/yocto-project-qs/yocto-project-qs.xml: Note added about proxy
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
X-List-Received-Date: Fri, 18 Mar 2011 17:31:11 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I added a note to reference the FAQ entry in the Poky manual that describes
how to get around proxy and firewall stuff hanging up getting the source
code during a build.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 62e9e6b..4cb50a5 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -235,6 +235,16 @@
              recommend having at least 100GB of free disk space.
          </para></note>
 
+         <note><para>
+             By default, Poky searches for source code using a pre-determined order
+             through a set of locations.
+             If you encounter problems with Poky finding and downloading source code, see
+             the FAQ entry "How does Poky obtain source code and will it work behind my
+             firewall or proxy server?" in the 
+             <ulink url='http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html'>
+             Poky Reference Manual</ulink>.
+         </para></note>
+
          <para>
              <literallayout class='monospaced'>
      $ wget http://www.yoctoproject.org/downloads/poky/poky-bernard-5.0.tar.bz2
-- 
1.7.1


