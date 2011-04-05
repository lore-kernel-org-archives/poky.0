Return-Path: <srifenbark@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 39BAF4C80AC4
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:21:14 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gx0-f176.google.com with SMTP id 7so347991gxk.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:21:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=d0xVGmLWC6okf2jqnPOJRnQGu5GQYwMoy2gqAbbUFOE=;
	b=ifqB5FFY7LeA1o8fgGV4yROe9xiAwAdiy3Iwuxp4MYY9Zb/pNCdQd2MI4YegnzpJOP
	i4ZrOOGGeZc4lwvbAsLxfSpiYFaGoJiAj/hYKYDrNU17aBS8ghVGI+g032cGGEUX9nzf
	Qlbq/4/ybW00sTcjWhWl/UKup+Z4OXT0RjzxY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=h3qDAdOvIb831V6+as1+aN4q8BXOmgxrVhiaiXPqb9oYDN/C9o/j1ll465rXNZKuU4
	Kl7aGF2TYZQ6SO1PGmHPn2fnr7+BTcaB5jm0P+0c2FLMqysGo0p9Qo3V8+lOGbQ0hmBI
	GtVKsMVJR7OzGCPSlZJ76N/+iTRIdylPxZZqQ=
Received: by 10.91.56.2 with SMTP id i2mr898232agk.19.1302027674044;
	Tue, 05 Apr 2011 11:21:14 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id c38sm6766386anc.44.2011.04.05.11.21.12
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:21:12 -0700 (PDT)
Message-Id: <19baa6cda47d9c849629f65c222f90e2a09e974a.1302027384.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302027384.git.scott.m.rifenbark@intel.com>
References: <cover.1302027384.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 16:49:31 -0500
Date: Tue, 05 Apr 2011 13:21:10 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 10/15] documentation/poky-ref-manual/ref-classes.xml: tag updates
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
X-List-Received-Date: Tue, 05 Apr 2011 18:21:14 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Removed the various styles for commands and such and replaced with
simple <filename>/</filename> pairs.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-classes.xml |   87 +++++++++----------------
 1 files changed, 32 insertions(+), 55 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-classes.xml b/documentation/poky-ref-manual/ref-classes.xml
index 1402955..8eb94c2 100644
--- a/documentation/poky-ref-manual/ref-classes.xml
+++ b/documentation/poky-ref-manual/ref-classes.xml
@@ -6,14 +6,14 @@
 
 <para>
     Class files are used to abstract common functionality and share it amongst multiple 
-    <filename class="extension">.bb</filename> files. Any metadata usually found in a 
-    <filename class="extension">.bb</filename> file can also be placed in a class 
+    <filename>.bb</filename> files. Any metadata usually found in a 
+    <filename>.bb</filename> file can also be placed in a class 
     file. Class files are identified by the extension 
-    <filename class="extension">.bbclass</filename> and are usually placed 
-    in a <filename class="directory">classes/</filename> directory beneath the 
-    <filename class="directory">meta*/</filename> directory or the directory pointed
-    by BUILDDIR (e.g. <filename class="directory">build/</filename>)in the same way as
-    <filename class="extension">.conf</filename> files in the <filename 
+    <filename>.bbclass</filename> and are usually placed 
+    in a <filename>classes/</filename> directory beneath the 
+    <filename>meta*/</filename> directory or the directory pointed
+    by BUILDDIR (e.g. <filename>build/</filename>)in the same way as
+    <filename>.conf</filename> files in the <filename 
     class="directory">conf</filename> directory. Class files are searched for 
     in BBPATH in the same was as <filename>.conf</filename> files too.
 </para>
@@ -28,7 +28,7 @@
     <title>The base class - <filename>base.bbclass</filename></title>
 
     <para>
-        The base class is special in that every <filename class="extension">.bb</filename> 
+        The base class is special in that every <filename>.bb</filename> 
         file inherits it automatically. It contains definitions of standard basic 
         tasks such as fetching, unpacking, configuring (empty by default), compiling 
         (runs any Makefile present), installing (empty by default) and packaging 
@@ -94,54 +94,31 @@
 
     <para>
         Several programs can fulfill the same or similar function and
-        they can be installed with the same name. For example the <command>ar</command> 
+        be installed with the same name. 
+        For example, the <filename>ar</filename> 
         command is available from the "busybox", "binutils" and "elfutils" packages. 
-        This class handles the renaming of the binaries so multiple packages 
-        can be installed which would otherwise conflict and yet the 
-        <command>ar</command> command still works regardless of which are installed
-        or subsequently removed. It renames the conflicting binary in each package 
+        The <filename>update-alternatives.bbclass</filename> class handles renaming the 
+        binaries so that multiple packages can be installed without conflicts. 
+        The <filename>ar</filename> command still works regardless of which packages are installed
+        or subsequently removed. 
+        The class renames the conflicting binary in each package 
         and symlinks the highest priority binary during installation or removal 
         of packages.
-
+    </para>
+    <para>
         Four variables control this class:
     </para>
-
-
-    <variablelist>
-    <varlistentry>
-    <term>ALTERNATIVE_NAME</term>
-    <listitem>
-       <para>
-            Name of binary which will be replaced (<command>ar</command> in this example)
-       </para>
-    </listitem>
-    </varlistentry>
-    <varlistentry>
-    <term>ALTERNATIVE_LINK</term>
-    <listitem>
-        <para>
-            Path to resulting binary ("/bin/ar" in this example)
-        </para>
-    </listitem>
-    </varlistentry>
-    <varlistentry>
-    <term>ALTERNATIVE_PATH</term>
-    <listitem>
-        <para>
-            Path to real binary ("/usr/bin/ar.binutils" in this example)
-        </para>
-    </listitem>
-    </varlistentry>
-    <varlistentry>
-    <term>ALTERNATIVE_PRIORITY</term>
-    <listitem>
-        <para>
-            Priority of binary, the version with the most features should have the highest priority
-        </para>
-    </listitem>
-    </varlistentry>
-    </variablelist>
-
+    <itemizedlist>
+        <listitem><para><filename>ALTERNATIVE_NAME</filename> &dash; The name of the 
+        binary that is replaced (<filename>ar</filename> in this example).</para></listitem>
+        <listitem><para><filename>ALTERNATIVE_LINK</filename> &dash; The path to 
+        the resulting binary (<filename>/bin/ar</filename> in this example).</para></listitem>
+        <listitem><para><filename>ALTERNATIVE_PATH</filename> &dash; The path to the 
+        real binary (<filename>/usr/bin/ar.binutils</filename> in this example).</para></listitem>
+        <listitem><para><filename>ALTERNATIVE_PRIORITY</filename> &dash; The priority of 
+        the binary. 
+        The version with the most features should have the highest priority.</para></listitem>
+    </itemizedlist>
     <para>
 	Currently, only one binary per package is supported.
     </para>
@@ -175,7 +152,7 @@
     <para>
         During staging Bitbake installs such scripts into the <filename 
         class="directory">sysroots/</filename> directory. It also changes all
-        paths to point into the <filename class="directory">sysroots/</filename>
+        paths to point into the <filename>sysroots/</filename>
         directory so all builds which use the script will use the correct 
         directories for the cross compiling layout.
     </para>
@@ -218,7 +195,7 @@
     </para>
 
     <para>
-        Result of their work are <filename class="directory">tmp/deploy/source/</filename> 
+        Result of their work are <filename>tmp/deploy/source/</filename> 
         subdirs with sources sorted by <glossterm><link linkend='var-LICENSE'>LICENSE</link>
         </glossterm> field. If recipe lists few licenses (or has entries like "Bitstream Vera") source archive is put in each
         license dir.
@@ -322,7 +299,7 @@
     </para>
     <para>
         This means that each kernel module built is packaged separately and inter-module dependencies are
-        created by parsing the <command>modinfo</command> output. If all modules are
+        created by parsing the <filename>modinfo</filename> output. If all modules are
         required then installing the "kernel-modules" package will install all
         packages with modules and various other kernel packages such as "kernel-vmlinux".
     </para>
@@ -406,7 +383,7 @@
 
     <para>
         Only the most useful/important classes are covered here but there are 
-        others, see the <filename class="directory">meta/classes</filename> directory for the rest. 
+        others, see the <filename>meta/classes</filename> directory for the rest. 
     </para>
 </section>
 
-- 
1.7.0.4


