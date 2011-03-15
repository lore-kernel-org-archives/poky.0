Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8FA014C803D6
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 18:42:28 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Mar 2011 16:42:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,191,1299484800"; 
	d="scan'208,217";a="613438771"
Received: from unknown (HELO localhost) ([10.255.12.159])
	by orsmga002.jf.intel.com with ESMTP; 15 Mar 2011 16:42:27 -0700
Message-Id: <16562271ee5876a690b3727083582ddfdbe40341.1300232339.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300232338.git.scott.m.rifenbark@intel.com>
References: <cover.1300232338.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 14 Mar 2011 14:38:54 -0600
Date: Tue, 15 Mar 2011 17:43:19 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 03/13] documentation/adt-manual/adt-manual.xml: Initial file
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
X-List-Received-Date: Tue, 15 Mar 2011 23:42:28 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

This is the initial file that the Makefile calls.  The changes in this
commit reflect edits taking it from the copied kernel manual version.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-manual.xml |   26 +++++++++++++++-----------
 1 files changed, 15 insertions(+), 11 deletions(-)

diff --git a/documentation/adt-manual/adt-manual.xml b/documentation/adt-manual/adt-manual.xml
index e9a9ed3..9c08d7f 100644
--- a/documentation/adt-manual/adt-manual.xml
+++ b/documentation/adt-manual/adt-manual.xml
@@ -1,7 +1,7 @@
 <!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
 "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
 
-<book id='kernel-manual' lang='en' 
+<book id='adt-manual' lang='en' 
       xmlns:xi="http://www.w3.org/2003/XInclude"
       xmlns="http://docbook.org/ns/docbook"
       >
@@ -9,7 +9,7 @@
 
         <mediaobject>
             <imageobject>
-                <imagedata fileref='figures/kernel-title.png' 
+                <imagedata fileref='figures/adt-title.png' 
                     format='SVG' 
                     align='left' scalefit='1' width='100%'/>
             </imageobject>    
@@ -19,19 +19,19 @@
 
         <authorgroup>
             <author>
-                <firstname>Bruce</firstname> <surname>Ashfield</surname>
+                <firstname>Jessica</firstname> <surname>Zhang</surname>
                 <affiliation>
-                    <orgname>Wind River Corporation</orgname>
+                    <orgname>Intel Corporation</orgname>
                 </affiliation>
-                <email>bruce.ashfield@windriver.com</email>
+                <email>jessica.zhang@intel.com</email>
             </author>
         </authorgroup>
 
         <revhistory>
             <revision>
-                <revnumber>0.9</revnumber>
-                <date>24 November 2010</date>
-                <revremark>Beta Draft</revremark>
+                <revnumber>1.0</revnumber>
+                <date>14 March 2011</date>
+                <revremark>Initial Document released with Yocto Project 1.0.</revremark>
             </revision>
         </revhistory>
 
@@ -49,11 +49,15 @@
 
     </bookinfo>
 
-    <xi:include href="kernel-doc-intro.xml"/>
+    <xi:include href="adt-intro.xml"/>
 
-    <xi:include href="kernel-concepts.xml"/>
+    <xi:include href="adt-prepare.xml"/>
 
-    <xi:include href="kernel-how-to.xml"/>
+    <xi:include href="adt-package.xml"/>
+
+    <xi:include href="adt-eclipse.xml"/>
+
+    <xi:include href="adt-command.xml"/>
 
 <!--    <index id='index'>
       <title>Index</title>
-- 
1.7.1


