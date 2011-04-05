Return-Path: <srifenbark@gmail.com>
Received: from mail-gw0-f48.google.com (unknown [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 737884C80AB9
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:33:10 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwj22 with SMTP id 22so148292gwj.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=fNpQLXWnaip2gV51jbYN1bg3fhTOo/rcmbYa7//tkcM=;
	b=n98JVq9nkyx7ldWrwXXd2v4s05frpzmCuxHOd2Y6R7GOyAPrKVQa2ho4TjFCO7AS3N
	en5UGqITMVFr4nBb17qGGoB6YeCNJWstbrAUMsaN7j4U8wQY7Sp9tic5w+gxGVR/IVOQ
	FSuCvs9QB8iYt3MafGMYKKmjx4jJ2XF+WyGu0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=fsaESg1NNYVoWwq/bFOQD4zSYH1SVYcOZh+ZCQ39A7ysjhYPhfhr02AzJ8mBp01Ho2
	vk5Ilsov2AmbsGua1cjmwsdUt3K6vx6ZT5NYelt4nP1UoqzTtvW7wEwdzImUgMgm20/C
	xX7db3Yh4l+iGQNsT/iKfXMnLDOKkuu/IQNUM=
Received: by 10.236.156.201 with SMTP id m49mr9250941yhk.213.1302010368483;
	Tue, 05 Apr 2011 06:32:48 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id p51sm2830402yhm.56.2011.04.05.06.32.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:32:47 -0700 (PDT)
Message-Id: <98b3350221e0778a25bd677503bfa19b0375e555.1302009987.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 20:33:18 -0500
Date: Tue, 05 Apr 2011 06:32:47 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 02/16] documentation/poky-ref-manual/development.xml: Edits for Eclipse and Anjuta
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
X-List-Received-Date: Tue, 05 Apr 2011 13:33:10 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I commented out a large section of the chapter, which went into detail
on how to locate, install, configure, and use the Yocto Ecliple
plug-in.  This information is redundant in this book and is better
explained in the ADT Manual.  I am referencing the information from
this chapter now.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/development.xml |   46 ++++++++++++++++++++-----
 1 files changed, 37 insertions(+), 9 deletions(-)

diff --git a/documentation/poky-ref-manual/development.xml b/documentation/poky-ref-manual/development.xml
index db844a9..e63511b 100644
--- a/documentation/poky-ref-manual/development.xml
+++ b/documentation/poky-ref-manual/development.xml
@@ -12,7 +12,7 @@
     </para>
 
         <section id="platdev-appdev-external-sdk">
-        <title>External Development Using the Poky SDK</title>
+        <title>External Development Using the Application Development Toolkit (ADT)</title>
         <para>
             The meta-toolchain and meta-toolchain-sdk targets build tarballs that contain toolchains and 
             libraries suitable for application development outside of Poky. 
@@ -45,17 +45,41 @@
         </section>
 
         <section id="using-the-eclipse-and-anjuta-plug-ins">
-        <title>Using the Eclipse and Anjuta Plug-ins</title>
+        <title>Using the Eclipse Plug-in</title>
         <para>
-            Yocto Project supports both Anjuta and Eclipse IDE plug-ins to make developing software
-            easier for the application developer. The plug-ins provide capability
-            extensions to the graphical IDE allowing for cross compilation, 
-            deployment and execution of the output in a QEMU emulation session. 
-            Support of these plug-ins also allows for cross debugging and
-            profiling.  Additionally, the Eclipse plug-in provides a suite of tools 
+            The current release of the Yocto Project supports the Eclipse IDE plug-in
+            to make developing software easier for the application developer. 
+            The plug-in provides capability extensions to the graphical IDE to allow
+            for cross compilation, deployment and execution of the output in a QEMU 
+            emulation session. 
+            Support of the Eclipse plug-in also allows for cross debugging and
+            profiling.  
+            Additionally, the Eclipse plug-in provides a suite of tools 
             that allows the developer to perform remote profiling, tracing, collection of 
             power data, collection of latency data and collection of performance data.
         </para>
+        <note>
+            The current release of the Yocto Project no longer supports the Anjuta plug-in.
+            However, the Poky Anjuta Plug-in is available to download directly from the Poky 
+            Git repository located through the web interface at
+            <ulink url="http://git.yoctoproject.org/"></ulink> under IDE Plugins.
+            The community is free to continue supporting it beyond the Yocto Project 0.9
+            Release.            
+        </note>
+        <para>
+            To use the Eclipse plug-in you need the Eclipse Framework (Helios 3.6.1) along 
+            with other plug-ins installed into the Eclipse IDE.
+            Once you have your environment setup you need to configure the Eclipse plug-in.
+            For information on how to install and configure the Eclipse plug-in, see the
+            <ulink url='http://www.yoctoproject.org/docs/adt-manual/adt-manual.html#adt-eclipse'>
+            "Working Within Eclipse"</ulink> chapter in the 
+            <ulink url='http://www.yoctoproject.org/docs/adt-manual/adt-manual.html'>
+            "Application Development Toolkit (ADT) User's Guide."</ulink>
+         </para>
+
+
+
+<!--
 
             <section id="the-eclipse-plug-in">
             <title>The Eclipse Plug-in</title>
@@ -309,7 +333,7 @@
              <para>
                 See the README file contained in the project for more information on 
                 Anjuta dependencies and building the plug-in. 
-                If you want to disable remote gdb debugging, pass the "--disable-gdb-integration" switch when 
+                If you want to disable remote gdb debugging, pass the "&dash;&dash;disable-gdb-integration" switch when 
                 you configure the plug-in.
             </para>
                 <section id="setting-up-the-anjuta-plugin">
@@ -416,6 +440,10 @@
                 </para>
                 </section>
             </section>
+
+
+-->
+
         </section>
 
         <section id="platdev-appdev-qemu">
-- 
1.7.0.4


