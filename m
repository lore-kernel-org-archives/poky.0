Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6DE5E4C80AC6
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 12:00:45 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Mar 2011 10:00:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,254,1297065600"; d="scan'208";a="893055759"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by fmsmga001.fm.intel.com with ESMTP; 02 Mar 2011 10:00:25 -0800
Message-Id: <6871c913e0dae338708f74dbbe94cfe2fc498018.1299088354.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299088353.git.sgw@linux.intel.com>
References: <cover.1299088353.git.sgw@linux.intel.com>
Old-Date: Fri, 25 Feb 2011 15:54:58 -0600
Date: Wed, 02 Mar 2011 10:00:25 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Wed, 02 Mar 2011 12:01:14 -0600
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 11/26] [BUGID# 553] - documentation/poky-ref-manual/development.xml: Fixed pokylinux URLs
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
X-List-Received-Date: Wed, 02 Mar 2011 18:00:45 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 553] - In "The Eclipse Plug-in" section (5.1.2.1) there were two
URLs referencing the place to get the Eclipse plug-in.  One specified
the URL to put into the HTTP:// field in the Eclipse IDE when installing
the software.  This URL was incorrect.  I replaced it with the correct
URL, which was http://www.yoctoproject.org/downloads/eclipse-plugin/.

The second URL that was fixed was referencing the source code for the
plug-in.  It had the old pokylinux.org string.  I changed it to
http://git.yoctoproject.org.

These fixes partially address bug 553.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/development.xml |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/documentation/poky-ref-manual/development.xml b/documentation/poky-ref-manual/development.xml
index 4b138e0..9a59d7e 100644
--- a/documentation/poky-ref-manual/development.xml
+++ b/documentation/poky-ref-manual/development.xml
@@ -67,12 +67,13 @@
                 <literallayout class='monospaced'>
      Help -> Install New Software
                 </literallayout>
-                Specify the target URL as <ulink url='http://www.yoctoproject.org/downloads/eclipse-plug-in/'></ulink>.
+                Specify the target URL as 
+                <ulink url='http://www.yoctoproject.org/downloads/eclipse-plugin/'></ulink>.
             </para>
             <para>
                 If you want to download the source code for the plug-in you can find it in the Poky 
                 git repository, which has a web interface, and is located at
-                <ulink url="http://git.pokylinux.org/cgit.cgi/eclipse-poky"></ulink>.
+                <ulink url="http://git.yoctoproject.org"></ulink> under IDE Plugins.
             </para>
   
                 <section id="installing-and-setting-up-the-eclipse-ide">
-- 
1.7.1


