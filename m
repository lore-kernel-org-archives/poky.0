Return-Path: <srifenbark@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id DDD634C80ABA
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:33:27 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yw0-f48.google.com with SMTP id 32so149921ywo.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=2XvYeHJEmT/fC4uTBi5fKs+muEPYHbbkPQXEJi4FT1I=;
	b=f+3v//m4+ilr+3DRxo5j0A73rWjSEW52SwrPxnZV98YYbk7IsqjiHFzvznOPNtKfO8
	rMDMHIlf9T3w3TZLgru3hz4E4vcxpOM0BueZbOvJ/OZrWFeO92NcVLh8X6x3AHPe5xGI
	IMu+DXSoA4CGqSqcNABZcwOYLRS5h8/D08W28=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=C04duzvtNLUthgj7zjJarQYaoVedjJeiKMGbdJpG75wEZqbYAPea5Yc5EYU+CKD2OC
	imtjRFQKx0YpQqf5ByTPYNEWELdF+7hRZ12RryxzXSYJ/NKxFW6+Z21AujpLwTyWIIZ+
	R0y9Kz6or67fPRsdunHNkqQC/0kJ1PjAKHdCE=
Received: by 10.91.203.40 with SMTP id f40mr525229agq.185.1302010407751;
	Tue, 05 Apr 2011 06:33:27 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id c24sm6523558ana.21.2011.04.05.06.33.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:33:26 -0700 (PDT)
Message-Id: <7f8d637204c31d58a1323cfb037aac901e604857.1302009987.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 17:49:11 -0500
Date: Tue, 05 Apr 2011 06:33:26 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 13/16] documentation/poky-ref-manual/ref-structure.xml: Edits for Rel 1.0
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
X-List-Received-Date: Tue, 05 Apr 2011 13:33:28 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

These edits reflect changes in the directory structure from the 0.9
version of the software to the 1.0 version.  This set of changes still
is missing a few items.  Changes were based on Saul Wold's input.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-structure.xml |  103 +++++++++++++++++++++--
 1 files changed, 97 insertions(+), 6 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-structure.xml b/documentation/poky-ref-manual/ref-structure.xml
index 7ebf9bd..4cfd08f 100644
--- a/documentation/poky-ref-manual/ref-structure.xml
+++ b/documentation/poky-ref-manual/ref-structure.xml
@@ -61,7 +61,7 @@
         </para>
     </section>
 
-    <section id='structure-core-meta-extras'>
+<!--    <section id='structure-core-meta-extras'>
         <title><filename class="directory">meta-extras/</filename></title>
 
         <para>
@@ -70,8 +70,25 @@
             This metadata is disabled by default and is not supported as part of Poky.
         </para>
     </section>
+-->
+
+    <section id='structure-core-meta-demoapps'>
+        <title><filename class="directory">meta-demoapps/</filename></title>
+
+        <para>
+            This directory contains recipes for applications and demos that are not core.
+        </para>
+    </section>
+
+    <section id='structure-core-meta-rt'>
+        <title><filename class="directory">meta-rt/</filename></title>
 
-    <section id='structure-core-meta-***'>
+        <para>
+            This directory contains recipes for RealTime.
+        </para>
+    </section>
+
+<!--    <section id='structure-core-meta-***'>
         <title><filename class="directory">meta-***/</filename></title>
 
         <para>
@@ -79,6 +96,7 @@
             The layers are enabled by adding them to the <filename>conf/bblayers.conf</filename> file.
         </para>
     </section>
+-->
 
     <section id='structure-core-scripts'>
         <title><filename class="directory">scripts/</filename></title>
@@ -91,7 +109,7 @@
         </para>
     </section>
 
-    <section id='structure-core-sources'>
+<!--    <section id='structure-core-sources'>
         <title><filename class="directory">sources/</filename></title>
 
         <para>
@@ -123,6 +141,7 @@
             <filename class="extension">.md5</filename> file as well.
         </para>
     </section>
+-->
 
     <section id='handbook'>
         <title><filename class="directory">documentation</filename></title>
@@ -159,11 +178,28 @@
             like Poky to generate the build output.
         </para>
     </section>
+
+    <section id='structure-basic-top-level'>
+        <title><filename>LICENSE, README, and README.hardware</filename></title>
+
+        <para>
+            These files are standard top-level files. 
+        </para>
+    </section>
 </section>
 
 <section id='structure-build'>
     <title>The Build Directory - <filename class="directory">build/</filename></title>
 
+    <section id='structure-build-pseudodone'>
+        <title><filename>build/pseudodone</filename></title>
+
+        <para>
+            This tag file indicates that the intitial pseudo binar was created. 
+            The first time BitBake is invoked this file is built. 
+        </para>
+    </section>
+
     <section id='structure-build-conf-local.conf'>
         <title><filename>build/conf/local.conf</filename></title>
 
@@ -197,6 +233,36 @@
         </para>
     </section>
 
+    <section id='structure-build-conf-sanity_info'>
+        <title><filename>build/conf/sanity_info</filename></title>
+
+        <para>
+            This file is created during the build to indicate the state of the sanity checks.
+        </para>
+    </section>
+
+    <section id='structure-build-downloads'>
+        <title><filename>build/downloads/</filename></title>
+
+        <para>
+            This directory is used for the upstream source tarballs.
+            The directory can be reused by multiple builds or moved to another location. 
+            You can control the location of this directory through the
+            <glossterm><link linkend='var-DL_DIR'>DL_DIR</link></glossterm> variable.
+        </para>
+    </section>
+
+    <section id='structure-build-sstate-cache'>
+        <title><filename>build/sstate-cache/</filename></title>
+
+        <para>
+            This directory is used for the shared state cache.
+            The directory can be reused by multiple builds or moved to another location. 
+            You can control the location of this directory through the
+            <glossterm><link linkend='var-SSTATE_DIR'>SSTATE_DIR</link></glossterm> variable.
+        </para>
+    </section>
+
     <section id='structure-build-tmp'>
         <title><filename class="directory">build/tmp/</filename></title>
 
@@ -210,6 +276,14 @@
         </para>
     </section>
 
+    <section id='structure-build-tmp-buildstats'>
+        <title><filename class="directory">build/tmp/buildstats/</filename></title>
+
+        <para>
+            This directory stores the build statistics.
+        </para>
+    </section>
+
     <section id='structure-build-tmp-cache'>
         <title><filename class="directory">build/tmp/cache/</filename></title>
 
@@ -230,7 +304,7 @@
         <title><filename class="directory">build/tmp/deploy/deb/</filename></title>
 
         <para>
-            This directory receives any .deb packages produced by Poky.
+            This directory receives any <filename>.deb</filename> packages produced by Poky.
             The packages are sorted into feeds for different architecture types.
         </para>
     </section>
@@ -239,7 +313,7 @@
         <title><filename class="directory">build/tmp/deploy/rpm/</filename></title>
 
         <para>
-            This directory receives any .rpm packages produced by Poky.  
+            This directory receives any <filename>.rpm</filename> packages produced by Poky.  
             The packages re sorted into feeds for different architecture types.
         </para>
     </section>
@@ -256,7 +330,7 @@
     <section id='structure-build-tmp-deploy-ipk'>
         <title><filename class="directory">build/tmp/deploy/ipk/</filename></title>
 
-        <para>This directory receives .ipk packages produced by Poky.</para>
+        <para>This directory receives <filename>.ipk</filename> packages produced by Poky.</para>
     </section>
 
     <section id='structure-build-tmp-sysroots'>
@@ -512,6 +586,15 @@
         </para>
     </section>
 
+    <section id='structure-meta-recipes-support'>
+        <title><filename class="directory">meta/recipes-support/</filename></title>
+
+        <para>
+            This directory contains recipes that used by other recipes, but that are not directly 
+            included in images (i.e. depenendies of other recipes).
+        </para>
+    </section>
+
     <section id='structure-meta-site'>
         <title><filename class="directory">meta/site/</filename></title>
 
@@ -522,6 +605,14 @@
             passed to "autoconf" for the various architectures. 
         </para>
     </section>
+
+    <section id='structure-meta-recipes-txt'>
+        <title><filename class="directory">meta/recipes.txt/</filename></title>
+
+        <para>
+            This file is a description of the contents of <filename>recipes-*</filename>.
+        </para>
+    </section>
 </section>
 
 </appendix>
-- 
1.7.0.4


