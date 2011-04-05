Return-Path: <srifenbark@gmail.com>
Received: from mail-gw0-f48.google.com (unknown [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 29AAE4C80AC5
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:33:21 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gw0-f48.google.com with SMTP id 22so148292gwj.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=imdvhfxedvS3m7/8Ak0hN/r/pZDtr9P/Kh6oZ8lu4Fs=;
	b=a7KwiIBVBfVWqx52zy8APqc0AGQu1kKAqWfzw+XRllDpBJP0Nbq5R/l8fKINhTq/L6
	1qrZMTcIa0gkHAXarVHlyQHggVdUHnT1mbtPMCpnGvyMk8oPUHHBBB8F3S7Vd+MwcBqg
	HOTThs8X/fDxjzQPgEqzzxj4Dvsp1gi+MfzDc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=U81J/xhrc065p1ROG3XyjKHZMhV3pMM0M2Z6tbwqHMS3c48Hov08eYjVTyZsJbf0rD
	nnRErqO/ZVLUhUUKdX6P/zl3w6Ks9gZAefy9FF59tnNLxLKI6RlE7MeJBNM5dFDZf8/m
	Sx2rZRXdgNrPrZxLcmG4Zr6DTjn6ErdybMlyI=
Received: by 10.236.155.195 with SMTP id j43mr11433900yhk.158.1302010401019;
	Tue, 05 Apr 2011 06:33:21 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id x76sm2833866yhn.94.2011.04.05.06.33.19
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:33:19 -0700 (PDT)
Message-Id: <dbcec8e7565f73e60a0bb5a32c78d3812e09434e.1302009987.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 16:20:58 -0500
Date: Tue, 05 Apr 2011 06:33:19 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 11/16] documentation/poky-ref-manual/ref-classes.xml: re-write of autotooled packages
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
X-List-Received-Date: Tue, 05 Apr 2011 13:33:21 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Section C.2 (Autotooled Packages) was re-written.  I removed a bunch
of <variable> tags and replaced them with <filename>.  Also removed
some Britishisms.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-classes.xml |   39 +++++++++++++-----------
 1 files changed, 21 insertions(+), 18 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-classes.xml b/documentation/poky-ref-manual/ref-classes.xml
index 0cb2fce..1402955 100644
--- a/documentation/poky-ref-manual/ref-classes.xml
+++ b/documentation/poky-ref-manual/ref-classes.xml
@@ -15,7 +15,7 @@
     by BUILDDIR (e.g. <filename class="directory">build/</filename>)in the same way as
     <filename class="extension">.conf</filename> files in the <filename 
     class="directory">conf</filename> directory. Class files are searched for 
-    in BBPATH in the same was as <filename class="extension">.conf</filename> files too.
+    in BBPATH in the same was as <filename>.conf</filename> files too.
 </para>
 
 <para>
@@ -43,13 +43,13 @@
     <title>Autotooled Packages - <filename>autotools.bbclass</filename></title>
 
     <para>
-        Autotools (autoconf, automake, libtool) brings standardisation and this
-        class aims to define a set of tasks (configure, compile etc.) that will
-        work for all autotooled packages.  It should usually be enough to define
-        a few standard variables as documented in the <link
-        linkend='usingpoky-extend-addpkg-autotools'>simple autotools
-        example</link> section and then simply "inherit autotools". This class
-        can also work with software that emulates autotools.
+        Autotools (autoconf, automake, libtool) bring standardization. 
+        This class defines a set of tasks (configure, compile etc.) that 
+        work for all autotooled packages.  
+        It should usually be enough to define a few standard variables as documented in the 
+        <link linkend='usingpoky-extend-addpkg-autotools'>simple autotools
+        example</link> section and then simply "inherit autotools". 
+        This class can also work with software that emulates autotools.
     </para>
 
     <para>
@@ -60,26 +60,29 @@
     <itemizedlist>
       <listitem>
         <para>
-            'do_configure' regenerates the configure script (using autoreconf) and
-            then launches it with a standard set of arguments used during
-            cross-compilation. Additional parameters can be passed to 
-            <command>configure</command> through the <glossterm><link 
-            linkend='var-EXTRA_OECONF'>EXTRA_OECONF</link></glossterm> variable.
+            <filename>do_configure</filename> &dash; regenerates the configure script (using autoreconf) 
+            and then launches it with a standard set of arguments used during
+            cross-compilation. 
+            You can pass additional parameters to 
+            <filename>configure</filename> through the 
+            <glossterm><link linkend='var-EXTRA_OECONF'>EXTRA_OECONF</link></glossterm> variable.
         </para>
       </listitem>
       <listitem>
         <para>
-            'do_compile' runs <command>make</command> with arguments specifying 
-            the compiler and linker. Additional arguments can be passed through 
+            <filename>do_compile</filename> &dash; runs <filename>make</filename> with 
+            arguments that specify the compiler and linker. 
+            You can pass additional arguments through 
             the <glossterm><link linkend='var-EXTRA_OEMAKE'>EXTRA_OEMAKE</link>
             </glossterm> variable.
         </para>
       </listitem>
       <listitem>
         <para>
-            'do_install' runs <command>make install</command> passing a DESTDIR 
-            option taking its value from the standard <glossterm><link
-            linkend='var-DESTDIR'>DESTDIR</link></glossterm> variable.
+            <filename>do_install</filename> &dash; runs <filename>make install</filename> 
+            and passes a <filename>DESTDIR</filename> 
+            option, which takes its value from the standard 
+            <glossterm><link linkend='var-DESTDIR'>DESTDIR</link></glossterm> variable.
         </para>
       </listitem>
     </itemizedlist>
-- 
1.7.0.4


