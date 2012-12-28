Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEA90E01498
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 13:45:06 -0800 (PST)
Received: from localhost (c-50-137-42-92.hsd1.or.comcast.net [50.137.42.92])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 78AF02FEF3
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 16:44:58 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Dec 2012 13:44:15 -0800
Message-Id: <a4326105f6a5bc8815c86e32252b5d41f02eb02a.1356731004.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 78AF02FEF3.520FE
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 09/23] documentation: Updated Manual History table for 1.2.2 release
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Dec 2012 21:45:07 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Involved putting in a place holder date, bumping the copyright
date to 2013, and updating the poky.ent file as appropriate
for 1.2.2 and 7.0.2.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-manual.xml           |   21 ++++++++++-------
 documentation/bsp-guide/bsp-guide.xml             |   23 +++++++++++--------
 documentation/dev-manual/dev-manual.xml           |   25 ++++++++++++---------
 documentation/kernel-manual/kernel-manual.xml     |   23 +++++++++++--------
 documentation/poky-ref-manual/poky-ref-manual.xml |   25 ++++++++++++---------
 documentation/poky.ent                            |    6 ++---
 6 files changed, 74 insertions(+), 49 deletions(-)

diff --git a/documentation/adt-manual/adt-manual.xml b/documentation/adt-manual/adt-manual.xml
index 8eb89dd..72d13f1 100644
--- a/documentation/adt-manual/adt-manual.xml
+++ b/documentation/adt-manual/adt-manual.xml
@@ -2,7 +2,7 @@
 "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd"
 [<!ENTITY % poky SYSTEM "../poky.ent"> %poky; ] >
 
-<book id='adt-manual' lang='en' 
+<book id='adt-manual' lang='en'
       xmlns:xi="http://www.w3.org/2003/XInclude"
       xmlns="http://docbook.org/ns/docbook"
       >
@@ -10,10 +10,10 @@
 
         <mediaobject>
             <imageobject>
-                <imagedata fileref='figures/adt-title.png' 
-                    format='SVG' 
+                <imagedata fileref='figures/adt-title.png'
+                    format='SVG'
                     align='left' scalefit='1' width='100%'/>
-            </imageobject>    
+            </imageobject>
         </mediaobject>
 
         <title></title>
@@ -54,6 +54,11 @@
                 <date>July 2012</date>
                 <revremark>Released with the Yocto Project 1.2.1 Release.</revremark>
             </revision>
+            <revision>
+                <revnumber>1.2.2</revnumber>
+                <date>Sometime in 2013</date>
+                <revremark>Released with the Yocto Project 1.2.2 Release.</revremark>
+            </revision>
         </revhistory>
 
     <copyright>
@@ -63,12 +68,12 @@
 
     <legalnotice>
       <para>
-        Permission is granted to copy, distribute and/or modify this document under 
+        Permission is granted to copy, distribute and/or modify this document under
         the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-sa/2.0/uk/">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by Creative Commons.
       </para>
       <note>
           Due to production processes, there could be differences between the Yocto Project
-          documentation bundled in the release tarball and the 
+          documentation bundled in the release tarball and the
           <ulink url='&YOCTO_DOCS_ADT_URL;'>
           Application Developer's Toolkit (ADT) User's Guide</ulink> on
           the <ulink url='&YOCTO_HOME_URL;'>Yocto Project</ulink> website.
@@ -95,6 +100,6 @@
 -->
 
 </book>
-<!-- 
-vim: expandtab tw=80 ts=4 
+<!--
+vim: expandtab tw=80 ts=4
 -->
diff --git a/documentation/bsp-guide/bsp-guide.xml b/documentation/bsp-guide/bsp-guide.xml
index fe28d91..148216b 100644
--- a/documentation/bsp-guide/bsp-guide.xml
+++ b/documentation/bsp-guide/bsp-guide.xml
@@ -2,7 +2,7 @@
 "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd"
 [<!ENTITY % poky SYSTEM "../poky.ent"> %poky; ] >
 
-<book id='bsp-guide' lang='en' 
+<book id='bsp-guide' lang='en'
       xmlns:xi="http://www.w3.org/2003/XInclude"
       xmlns="http://docbook.org/ns/docbook"
       >
@@ -10,13 +10,13 @@
 
         <mediaobject>
             <imageobject>
-                <imagedata fileref='figures/bsp-title.png' 
-                    format='SVG' 
+                <imagedata fileref='figures/bsp-title.png'
+                    format='SVG'
                     align='center' scalefit='1' width='100%'/>
-            </imageobject>    
+            </imageobject>
         </mediaobject>
 
-        <title></title> 
+        <title></title>
 
         <authorgroup>
             <author>
@@ -66,6 +66,11 @@
                 <date>July 2012</date>
                 <revremark>Released with the Yocto Project 1.2.1 Release.</revremark>
             </revision>
+            <revision>
+                <revnumber>1.2.2</revnumber>
+                <date>Sometime in 2013</date>
+                <revremark>Released with the Yocto Project 1.2.2 Release.</revremark>
+            </revision>
         </revhistory>
 
     <copyright>
@@ -75,12 +80,12 @@
 
     <legalnotice>
       <para>
-        Permission is granted to copy, distribute and/or modify this document under 
+        Permission is granted to copy, distribute and/or modify this document under
         the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-nc-sa/2.0/uk/">Creative Commons Attribution-Non-Commercial-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by Creative Commons.
       </para>
       <note>
           Due to production processes, there could be differences between the Yocto Project
-          documentation bundled in the release tarball and the 
+          documentation bundled in the release tarball and the
           <ulink url='&YOCTO_DOCS_BSP_URL;'>
           Board Support Package (BSP) Developer's Guide</ulink> on
           the <ulink url='&YOCTO_HOME_URL;'>Yocto Project</ulink> website.
@@ -98,6 +103,6 @@
 -->
 
 </book>
-<!-- 
-vim: expandtab tw=80 ts=4 
+<!--
+vim: expandtab tw=80 ts=4
 -->
diff --git a/documentation/dev-manual/dev-manual.xml b/documentation/dev-manual/dev-manual.xml
index d8b48f4..29b1051 100644
--- a/documentation/dev-manual/dev-manual.xml
+++ b/documentation/dev-manual/dev-manual.xml
@@ -2,7 +2,7 @@
 "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd"
 [<!ENTITY % poky SYSTEM "../poky.ent"> %poky; ] >
 
-<book id='dev-manual' lang='en' 
+<book id='dev-manual' lang='en'
       xmlns:xi="http://www.w3.org/2003/XInclude"
       xmlns="http://docbook.org/ns/docbook"
       >
@@ -10,13 +10,13 @@
 
         <mediaobject>
             <imageobject>
-                <imagedata fileref='figures/dev-title.png' 
-                    format='SVG' 
+                <imagedata fileref='figures/dev-title.png'
+                    format='SVG'
                     align='left' scalefit='1' width='100%'/>
-            </imageobject> 
+            </imageobject>
         </mediaobject>
 
-        <title></title> 
+        <title></title>
 
         <authorgroup>
             <author>
@@ -44,6 +44,11 @@
                 <date>July 2012</date>
                 <revremark>Released with the Yocto Project 1.2.1 Release.</revremark>
             </revision>
+            <revision>
+                <revnumber>1.2.2</revnumber>
+                <date>Sometime in 2013</date>
+                <revremark>Released with the Yocto Project 1.2.2 Release.</revremark>
+            </revision>
         </revhistory>
 
     <copyright>
@@ -53,15 +58,15 @@
 
     <legalnotice>
       <para>
-          Permission is granted to copy, distribute and/or modify this document under 
+          Permission is granted to copy, distribute and/or modify this document under
           the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-sa/2.0/uk/">
-          Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by 
+          Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by
           Creative Commons.
       </para>
 
       <note>
           Due to production processes, there could be differences between the Yocto Project
-          documentation bundled in the release tarball and  
+          documentation bundled in the release tarball and
           <ulink url='&YOCTO_DOCS_DEV_URL;'>
           The Yocto Project Development Manual</ulink> on
           the <ulink url='&YOCTO_HOME_URL;'>Yocto Project</ulink> website.
@@ -86,6 +91,6 @@
     <xi:include href="dev-manual-kernel-appendix.xml"/>
 
 </book>
-<!-- 
-vim: expandtab tw=80 ts=4 
+<!--
+vim: expandtab tw=80 ts=4
 -->
diff --git a/documentation/kernel-manual/kernel-manual.xml b/documentation/kernel-manual/kernel-manual.xml
index 0deef70..58e8275 100644
--- a/documentation/kernel-manual/kernel-manual.xml
+++ b/documentation/kernel-manual/kernel-manual.xml
@@ -2,7 +2,7 @@
 "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd"
 [<!ENTITY % poky SYSTEM "../poky.ent"> %poky; ] >
 
-<book id='kernel-manual' lang='en' 
+<book id='kernel-manual' lang='en'
       xmlns:xi="http://www.w3.org/2003/XInclude"
       xmlns="http://docbook.org/ns/docbook"
       >
@@ -10,13 +10,13 @@
 
         <mediaobject>
             <imageobject>
-                <imagedata fileref='figures/kernel-title.png' 
-                    format='SVG' 
+                <imagedata fileref='figures/kernel-title.png'
+                    format='SVG'
                     align='left' scalefit='1' width='100%'/>
-            </imageobject>    
+            </imageobject>
         </mediaobject>
 
-        <title></title> 
+        <title></title>
 
         <authorgroup>
             <author>
@@ -59,6 +59,11 @@
                 <date>July 2012</date>
                 <revremark>Released with the Yocto Project 1.2.1 Release.</revremark>
             </revision>
+            <revision>
+                <revnumber>1.2.2</revnumber>
+                <date>Sometime in 2013</date>
+                <revremark>Released with the Yocto Project 1.2.2 Release.</revremark>
+            </revision>
         </revhistory>
 
     <copyright>
@@ -68,12 +73,12 @@
 
     <legalnotice>
       <para>
-        Permission is granted to copy, distribute and/or modify this document under 
+        Permission is granted to copy, distribute and/or modify this document under
         the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-sa/2.0/uk/">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by Creative Commons.
       </para>
       <note>
           Due to production processes, there could be differences between the Yocto Project
-          documentation bundled in the release tarball and 
+          documentation bundled in the release tarball and
           <ulink url='&YOCTO_DOCS_KERNEL_URL;'>
           The Yocto Project Kernel Architecture and Use Manual</ulink> on
           the <ulink url='&YOCTO_HOME_URL;'>Yocto Project</ulink> website.
@@ -95,6 +100,6 @@
 -->
 
 </book>
-<!-- 
-vim: expandtab tw=80 ts=4 
+<!--
+vim: expandtab tw=80 ts=4
 -->
diff --git a/documentation/poky-ref-manual/poky-ref-manual.xml b/documentation/poky-ref-manual/poky-ref-manual.xml
index b4a120b..923f143 100644
--- a/documentation/poky-ref-manual/poky-ref-manual.xml
+++ b/documentation/poky-ref-manual/poky-ref-manual.xml
@@ -2,18 +2,18 @@
 "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd"
 [<!ENTITY % poky SYSTEM "../poky.ent"> %poky; ] >
 
-<book id='poky-ref-manual' lang='en' 
+<book id='poky-ref-manual' lang='en'
       xmlns:xi="http://www.w3.org/2003/XInclude"
       xmlns="http://docbook.org/ns/docbook"
       >
     <bookinfo>
- 
+
         <mediaobject>
             <imageobject>
-                <imagedata fileref='figures/poky-title.png' 
-                    format='SVG' 
+                <imagedata fileref='figures/poky-title.png'
+                    format='SVG'
                     align='left' scalefit='1' width='100%'/>
-            </imageobject>    
+            </imageobject>
         </mediaobject>
 
         <title></title>
@@ -73,6 +73,11 @@
                 <date>July 2012</date>
                 <revremark>Released with the Yocto Project 1.2.1 Release.</revremark>
             </revision>
+            <revision>
+                <revnumber>1.2.2</revnumber>
+                <date>Sometime in 2013</date>
+                <revremark>Released with the Yocto Project 1.2.2 Release.</revremark>
+            </revision>
         </revhistory>
 
     <copyright>
@@ -82,12 +87,12 @@
 
     <legalnotice>
       <para>
-        Permission is granted to copy, distribute and/or modify this document under 
+        Permission is granted to copy, distribute and/or modify this document under
         the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-sa/2.0/uk/">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by Creative Commons.
       </para>
       <note>
           Due to production processes, there could be differences between the Yocto Project
-          documentation bundled in the release tarball and 
+          documentation bundled in the release tarball and
           <ulink url='&YOCTO_DOCS_REF_URL;'>
           The Yocto Project Reference Manual</ulink> on
           the <ulink url='&YOCTO_HOME_URL;'>Yocto Project</ulink> website.
@@ -127,10 +132,10 @@
 
 <!--    <index id='index'>
       <title>Index</title>
-    </index> 
+    </index>
 -->
 
 </book>
-<!-- 
-vim: expandtab tw=80 ts=4 
+<!--
+vim: expandtab tw=80 ts=4
 -->
diff --git a/documentation/poky.ent b/documentation/poky.ent
index aec1391..03338a2 100644
--- a/documentation/poky.ent
+++ b/documentation/poky.ent
@@ -1,9 +1,9 @@
-<!ENTITY DISTRO "1.2.1">
+<!ENTITY DISTRO "1.2.2">
 <!ENTITY DISTRO_NAME "denzil">
 <!ENTITY YOCTO_DOC_VERSION "current">
-<!ENTITY POKYVERSION "7.0.1">
+<!ENTITY POKYVERSION "7.0.2">
 <!ENTITY YOCTO_POKY "poky-&DISTRO_NAME;-&POKYVERSION;">
-<!ENTITY COPYRIGHT_YEAR "2010-2012">
+<!ENTITY COPYRIGHT_YEAR "2010-2013">
 <!ENTITY YOCTO_DL_URL "http://downloads.yoctoproject.org">
 <!ENTITY YOCTO_HOME_URL "http://www.yoctoproject.org">
 <!ENTITY YOCTO_LISTS_URL "http://lists.yoctoproject.org">
-- 
1.7.9.5


