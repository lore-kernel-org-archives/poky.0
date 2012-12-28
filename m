Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3ECBE014AB
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 13:45:13 -0800 (PST)
Received: from localhost (c-50-137-42-92.hsd1.or.comcast.net [50.137.42.92])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 73B8D2FEF3
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 16:45:07 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Dec 2012 13:44:19 -0800
Message-Id: <25353bc68f282f5893a756bea519ca9b8daf12d3.1356731004.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 73B8D2FEF3.67B02
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 13/23] documentation: Formats. Also, the January 2013 date summary
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
X-List-Received-Date: Fri, 28 Dec 2012 21:45:14 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I went into the chapters and did some formatting in order
to generate a new commit.  The commit summary message for
the previous commit was wrong and I pushed it.  The date
for the 1.2.2 release is January 2013.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-manual.xml           |    5 +++--
 documentation/bsp-guide/bsp-guide.xml             |    5 +++--
 documentation/dev-manual/dev-manual.xml           |    3 +--
 documentation/kernel-manual/kernel-manual.xml     |    4 ++--
 documentation/poky-ref-manual/poky-ref-manual.xml |    4 ++--
 5 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/documentation/adt-manual/adt-manual.xml b/documentation/adt-manual/adt-manual.xml
index 900a4e6..e2b5171 100644
--- a/documentation/adt-manual/adt-manual.xml
+++ b/documentation/adt-manual/adt-manual.xml
@@ -68,8 +68,9 @@
 
     <legalnotice>
       <para>
-        Permission is granted to copy, distribute and/or modify this document under
-        the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-sa/2.0/uk/">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by Creative Commons.
+          Permission is granted to copy, distribute and/or modify this document
+          under the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-sa/2.0/uk/">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as
+          published by Creative Commons.
       </para>
       <note>
           Due to production processes, there could be differences between the Yocto Project
diff --git a/documentation/bsp-guide/bsp-guide.xml b/documentation/bsp-guide/bsp-guide.xml
index 847ca25..e544484 100644
--- a/documentation/bsp-guide/bsp-guide.xml
+++ b/documentation/bsp-guide/bsp-guide.xml
@@ -80,8 +80,9 @@
 
     <legalnotice>
       <para>
-        Permission is granted to copy, distribute and/or modify this document under
-        the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-nc-sa/2.0/uk/">Creative Commons Attribution-Non-Commercial-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by Creative Commons.
+          Permission is granted to copy, distribute and/or modify this document under
+          the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-nc-sa/2.0/uk/">Creative Commons Attribution-Non-Commercial-Share Alike 2.0 UK: England &amp; Wales</ulink> as
+          published by Creative Commons.
       </para>
       <note>
           Due to production processes, there could be differences between the Yocto Project
diff --git a/documentation/dev-manual/dev-manual.xml b/documentation/dev-manual/dev-manual.xml
index 575755e..1e02306 100644
--- a/documentation/dev-manual/dev-manual.xml
+++ b/documentation/dev-manual/dev-manual.xml
@@ -59,8 +59,7 @@
     <legalnotice>
       <para>
           Permission is granted to copy, distribute and/or modify this document under
-          the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-sa/2.0/uk/">
-          Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by
+          the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-sa/2.0/uk/">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by
           Creative Commons.
       </para>
 
diff --git a/documentation/kernel-manual/kernel-manual.xml b/documentation/kernel-manual/kernel-manual.xml
index 91ec196..b076cc0 100644
--- a/documentation/kernel-manual/kernel-manual.xml
+++ b/documentation/kernel-manual/kernel-manual.xml
@@ -73,8 +73,8 @@
 
     <legalnotice>
       <para>
-        Permission is granted to copy, distribute and/or modify this document under
-        the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-sa/2.0/uk/">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by Creative Commons.
+          Permission is granted to copy, distribute and/or modify this document under
+          the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-sa/2.0/uk/">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by Creative Commons.
       </para>
       <note>
           Due to production processes, there could be differences between the Yocto Project
diff --git a/documentation/poky-ref-manual/poky-ref-manual.xml b/documentation/poky-ref-manual/poky-ref-manual.xml
index 0916d66..db7025c 100644
--- a/documentation/poky-ref-manual/poky-ref-manual.xml
+++ b/documentation/poky-ref-manual/poky-ref-manual.xml
@@ -87,8 +87,8 @@
 
     <legalnotice>
       <para>
-        Permission is granted to copy, distribute and/or modify this document under
-        the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-sa/2.0/uk/">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by Creative Commons.
+          Permission is granted to copy, distribute and/or modify this document under
+          the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-sa/2.0/uk/">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by Creative Commons.
       </para>
       <note>
           Due to production processes, there could be differences between the Yocto Project
-- 
1.7.9.5


