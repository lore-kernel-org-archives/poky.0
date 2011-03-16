Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9B2AA4C806DA
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 11:47:32 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Mar 2011 09:47:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,195,1299484800"; d="scan'208";a="897933065"
Received: from unknown (HELO localhost) ([10.255.12.154])
	by fmsmga001.fm.intel.com with ESMTP; 16 Mar 2011 09:47:26 -0700
Message-Id: <af05c78410f16632fd9c4f36bf5b9ba469df07fd.1300293938.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300293938.git.scott.m.rifenbark@intel.com>
References: <cover.1300293938.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 16 Mar 2011 09:58:50 -0600
Date: Wed, 16 Mar 2011 10:48:17 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 1/2] documentation/adt-manual/adt-eclipse.xml: Re-inserted Autotools plug-in requirement.
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
X-List-Received-Date: Wed, 16 Mar 2011 16:47:32 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Jessica flip-flopped on the need for the Autotools plug-in that was
removed from the manual.  I have re-inserted the instructions for adding
this plug-in in as part of the Eclipse set up.
---
 documentation/adt-manual/adt-eclipse.xml |    9 +++++++--
 1 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/documentation/adt-manual/adt-eclipse.xml b/documentation/adt-manual/adt-eclipse.xml
index d41f496..7c0ee06 100644
--- a/documentation/adt-manual/adt-eclipse.xml
+++ b/documentation/adt-manual/adt-eclipse.xml
@@ -78,8 +78,9 @@
     <title>Installing Required Plug-ins and the Eclipse Yocto Plug-in</title>
         <para>
             Before installing the Yocto Plug-in you need to be sure that the 
-            CDT 7.0 and RSE 3.2 plug-ins are all installed.  
-            After installing these two plug-ins, you can install the 
+            CDT 7.0, RSE 3.2, and Autotools plug-ins are all installed in the 
+            following order.  
+            After installing these three plug-ins, you can install the 
             Eclipse Yocto Plug-in.  
             Use the following URLs for the plug-ins:
             <orderedlist>
@@ -97,6 +98,10 @@
                 select the following:  “Remote System Explorer End-User Runtime”, 
                 “Remote System Explorer Extended SDK”, “Remote System Explorer User Actions”, 
                 “RSE Core”, “RSE Terminals UI”, and “Target Management Terminal”.</para></listitem>
+                <listitem><para><emphasis>Autotools</emphasis> – 
+                <ulink url='http://www.download.eclipse.org/technology/linuxtools/update/'></ulink>:
+                Expand the items under “Linux Tools” and select “Autotools support for 
+                CDT (Incubation)”.</para></listitem>
                 <listitem><para><emphasis>Yocto Plug-in</emphasis> – 
                 <ulink url='http://www.yoctoproject.org/downloads/eclipse-plugin/'></ulink>:
                 Check the box next to “Development tools &amp; SDKs for Yocto Linux” 
-- 
1.7.1


