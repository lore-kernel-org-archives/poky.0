Return-Path: <srifenbark@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5CA274C80AC1
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 13:31:40 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxd5 with SMTP id 5so1427403yxd.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 11:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=W62+A4P+CPmuLbZhwCWuKCaAwC+mY2YP6ynMlLKkeOA=;
	b=HRbKqyo7eriCwv2V14EjEjwp56ftuTYprBScooU0P228C8kg0rkX9OTb8XgJjOZFoR
	OuEQL2jysUG0JQR0NkniGqvcwUAdRZpqk2cL/WZ0KHJjXLp3WtVtc/uBbQd8fRRSpLgA
	9r337o44UCgkHXs/UatKEXA4e7a7bkMbwfDGE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=MwbtIQOCekCHLxjMmP8VAtgCQWgLS7OqAjV5PQvo2TwBn8BA6JhjOKhxW0dRvuj/k6
	xcMl3MNFY2IHi4ojrm8lrnnosSch6rWNZGekT1lvtlrgnblgBGqUBZ9E71sSvVhqDf82
	t26umEWQwO/l7Xs/gdsO6PqgkHmowlaEx5B+E=
Received: by 10.236.182.194 with SMTP id o42mr4173966yhm.328.1301596300151;
	Thu, 31 Mar 2011 11:31:40 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id 44sm695992yhl.53.2011.03.31.11.31.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 11:31:39 -0700 (PDT)
Message-Id: <c640a03e9bd0a8ef4e19ff435ea153e85eb8442b.1301596085.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301596085.git.scott.m.rifenbark@intel.com>
References: <cover.1301596085.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 13:20:27 -0500
Date: Thu, 31 Mar 2011 13:31:35 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 5/8] documentation/yocto-project-qs/ypqs.xml: New high-level file for PDF
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
X-List-Received-Date: Thu, 31 Mar 2011 18:31:40 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

With the need for a PDF version of the Yocto Project Quick Start
I had to introduce the high-level file used to contain the structure
of the manual (title page, rev-history, chapters, etc.).  This
file is new.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/yocto-project-qs/ypqs.xml |   67 +++++++++++++++++++++++++++++++
 1 files changed, 67 insertions(+), 0 deletions(-)
 create mode 100644 documentation/yocto-project-qs/ypqs.xml

diff --git a/documentation/yocto-project-qs/ypqs.xml b/documentation/yocto-project-qs/ypqs.xml
new file mode 100644
index 0000000..ceadd06
--- /dev/null
+++ b/documentation/yocto-project-qs/ypqs.xml
@@ -0,0 +1,67 @@
+<!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
+"http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
+
+<book id='ypqs' lang='en' 
+      xmlns:xi="http://www.w3.org/2003/XInclude"
+      xmlns="http://docbook.org/ns/docbook"
+      >
+    <bookinfo>
+
+        <mediaobject>
+            <imageobject>
+                <imagedata fileref='figures/ypqs-title.png' 
+                    format='SVG' 
+                    align='center' scalefit='1' width='100%'/>
+            </imageobject>    
+        </mediaobject>
+
+        <title></title> 
+
+        <authorgroup>
+            <author>
+                <firstname>Scott</firstname> <surname>Rifenbark</surname>
+                <affiliation>
+                    <orgname>Intel Corporation</orgname>
+                </affiliation>
+                <email>scott.m.rifenbark@intel.com</email>
+            </author>
+        </authorgroup>
+
+        <revhistory>
+            <revision>
+                <revnumber>0.9</revnumber>
+                <date>27 October 2010</date>
+                <revremark>Initial Document released with Yocto Project 0.9 on 27 October 2010.</revremark>
+            </revision>
+            <revision>
+                <revnumber>1.0</revnumber>
+                <date>6 April 2011</date>
+                <revremark>This manual revision corresponds to the Yocto Project 1.0 Release.</revremark>
+            </revision>
+        </revhistory>
+
+    <copyright>
+      <year>2010-2011</year>
+      <holder>Linux Foundation</holder>
+    </copyright>
+
+    <legalnotice>
+      <para>
+        Permission is granted to copy, distribute and/or modify this document under 
+        the terms of the <ulink type="http" url="http://creativecommons.org/licenses/by-sa/2.0/uk/">Creative Commons Attribution-Share Alike 2.0 UK: England &amp; Wales</ulink> as published by Creative Commons.
+      </para>
+    </legalnotice>
+
+    </bookinfo>
+
+    <xi:include href="yocto-project-qs.xml"/>
+
+<!--    <index id='index'>
+      <title>Index</title>
+    </index>
+-->
+
+</book>
+<!-- 
+vim: expandtab tw=80 ts=4 
+-->
-- 
1.7.0.4


