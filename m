Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 14AFD4C80AB8
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:42:45 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Mar 2011 16:42:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; d="scan'208";a="720559739"
Received: from unknown (HELO localhost) ([10.255.12.159])
	by orsmga001.jf.intel.com with ESMTP; 15 Mar 2011 16:42:42 -0700
Message-Id: <b4a87c4f0a68ba8be5d85fbd419cc5b5018668ea.1300232339.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300232338.git.scott.m.rifenbark@intel.com>
References: <cover.1300232338.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 15 Mar 2011 17:26:53 -0600
Date: Tue, 15 Mar 2011 17:43:34 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 12/13] documentation/adt-manual/adt-eclipse.xml: Removed Autotools plug-in requirement
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
X-List-Received-Date: Tue, 15 Mar 2011 23:42:45 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Section 4.1.2 lists plug-ins that need to be installed prior to installing
the Yocto Plug-in for Eclipse.  I removed the Autotools plug-in
requirement per Jessica Zhang's instructions.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-eclipse.xml |    8 ++------
 1 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/documentation/adt-manual/adt-eclipse.xml b/documentation/adt-manual/adt-eclipse.xml
index 9fa39cf..197628b 100644
--- a/documentation/adt-manual/adt-eclipse.xml
+++ b/documentation/adt-manual/adt-eclipse.xml
@@ -78,8 +78,8 @@
     <title>Installing Required Plug-ins and the Eclipse Yocto Plug-in</title>
         <para>
             Before installing the Yocto Plug-in you need to be sure that the 
-            CDT 7.0, RSE 3.2, and Autotools plug-ins are all installed.  
-            After installing these three plug-ins, you can install the 
+            CDT 7.0 and RSE 3.2 plug-ins are all installed.  
+            After installing these two plug-ins, you can install the 
             Eclipse Yocto Plug-in.  
             Use the following URLs for the plug-ins:
             <orderedlist>
@@ -97,10 +97,6 @@
                 select the following:  “Remote System Explorer End-User Runtime”, 
                 “Remote System Explorer Extended SDK”, “Remote System Explorer User Actions”, 
                 “RSE Core”, “RSE Terminals UI”, and “Target Management Terminal”.</para></listitem>
-                <listitem><para><emphasis>Autotools</emphasis> – 
-                <ulink url='http://download.eclipse.org/technology/linuxtools/update'></ulink>:
-                Expand the items under “Linux Tools” and select “Autotools support 
-                for CDT (Incubation)”.</para></listitem>
                 <listitem><para><emphasis>Yocto Plug-in</emphasis> – 
                 <ulink url='http://www.yoctoproject.org/downloads/eclipse-plugin/'></ulink>:
                 Check the box next to “Development tools &amp; SDKs for Yocto Linux” 
-- 
1.7.1


