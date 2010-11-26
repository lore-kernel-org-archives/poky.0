Return-Path: <cyril.humbert.martec@eolane.com>
Received: from relay.martec.fr (mailhost.martec.fr [84.96.83.115])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F8F74C810C0
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 10:01:22 -0600 (CST)
Received: from webmail.martec.fr (unknown [192.168.20.3])
	by relay.martec.fr (Postfix) with ESMTP id 4EA0640C13F
	for <poky@yoctoproject.org>; Fri, 26 Nov 2010 17:01:18 +0100 (CET)
Received: from [192.168.20.66] ([192.168.20.66])
	by webmail.martec.fr (Lotus Domino Release 8.5)
	with ESMTP id 2010112617011819-28856 ;
	Fri, 26 Nov 2010 17:01:18 +0100 
Message-ID: <4CEFD9C9.5090506@eolane.com>
Date: Fri, 26 Nov 2010 17:01:13 +0100
From: Cyril Humbert <cyril.humbert.martec@eolane.com>
Organization: MARTEC
User-Agent: Mozilla-Thunderbird 2.0.0.22 (X11/20091109)
MIME-Version: 1.0
To: Poky ML <poky@yoctoproject.org>
X-MIMETrack: Itemize by SMTP Server on srvm1/martec_sevres/FR(Release
	8.5|December 05, 2008) at 26/11/2010 17:01:18,
	Serialize by Router on srvm1/martec_sevres/FR(Release 8.5|December 05,
	2008) at 26/11/2010 17:01:18,
	Serialize complete at 26/11/2010 17:01:18
X-TNEFEvaluated: 1
Subject: [PATCH] Fix some typos in Poky manual
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
X-List-Received-Date: Fri, 26 Nov 2010 16:01:22 -0000
Content-Type: multipart/mixed; boundary="------------060500040800010100060809"

--------------060500040800010100060809
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=ISO-8859-1; format=flowed

Hello,

The attached patch contains trivial typo fixes in poky-ref-manual.

Best regards,
-- 
Cyril Humbert

--------------060500040800010100060809
Content-Transfer-Encoding: 7bit
Content-Type: text/x-diff;
 name="0001-Fix-some-typos-in-Poky-manual.patch"
Content-Disposition: inline;
 filename="0001-Fix-some-typos-in-Poky-manual.patch"

From ec376b04fa280f37b637f25596f99e1b7e996717 Mon Sep 17 00:00:00 2001
From: Cyril Humbert <cyril.humbert@gmail.com>
Date: Fri, 26 Nov 2010 10:07:33 +0100
Subject: [PATCH] Fix some typos in Poky manual

---
 documentation/poky-ref-manual/development.xml   |    8 ++++----
 documentation/poky-ref-manual/introduction.xml  |    4 ++--
 documentation/poky-ref-manual/ref-bitbake.xml   |    2 +-
 documentation/poky-ref-manual/ref-classes.xml   |    4 ++--
 documentation/poky-ref-manual/ref-images.xml    |    2 +-
 documentation/poky-ref-manual/ref-structure.xml |    6 +++---
 documentation/poky-ref-manual/ref-variables.xml |    8 ++++----
 7 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/documentation/poky-ref-manual/development.xml b/documentation/poky-ref-manual/development.xml
index 0eda1e9..5e9872b 100644
--- a/documentation/poky-ref-manual/development.xml
+++ b/documentation/poky-ref-manual/development.xml
@@ -438,7 +438,7 @@
             toolchain available from the build system is automatically
             used from within QEMU simply by calling "distcc".  You can accomplish this by defining the 
             cross-compiler variable (e.g. <filename>export CC="distcc"</filename>).
-            Alterntatively, if a suitable SDK/toolchain is present in 
+            Alternatively, if a suitable SDK/toolchain is present in 
             <filename>/opt/poky</filename> it is also
             automatically be used.
         </para>
@@ -587,7 +587,7 @@
     <para>
         <ulink url="http://sourceware.org/gdb/">GDB</ulink> (The GNU Project Debugger)
         allows you to examine running programs to understand and fix problems and
-        also to perform postmortem style analsys of program crashes. It is available
+        also to perform postmortem style analysis of program crashes. It is available
         as a package within poky and installed by default in sdk images. It works best
         when -dbg packages for the application being debugged are installed as the 
         extra symbols give more meaningful output from GDB. 
@@ -837,11 +837,11 @@ $ opreport -cl
             to see the separate library symbols and callgraph information.
         </para>
         <para>
-            Callgraphing means OProfile not only logs infomation about which 
+            Callgraphing means OProfile not only logs information about which 
             functions time is being spent in but also which functions
             called those functions (their parents) and which functions that 
             function calls (its children). The higher the callgraphing depth, 
-            the more accurate the results but this also increased the loging 
+            the more accurate the results but this also increased the logging 
             overhead so it should be used with caution. On ARM, binaries need 
             to have the frame pointer enabled for callgraphing to work (compile
             with the gcc option -fno-omit-framepointer).
diff --git a/documentation/poky-ref-manual/introduction.xml b/documentation/poky-ref-manual/introduction.xml
index afaa41b..5af4043 100644
--- a/documentation/poky-ref-manual/introduction.xml
+++ b/documentation/poky-ref-manual/introduction.xml
@@ -157,10 +157,10 @@
         </para>
 
         <para>
-           The 'master' is where the deveopment work takes place and you should use this if you're
+           The 'master' is where the development work takes place and you should use this if you're
            interested in working with the latest cutting-edge developments. It is possible for the trunk
            to suffer temporary periods of instability while new features are developed.
-           If these periods of instability are undesireable, we recommend using one of the release branches.
+           If these periods of instability are undesirable, we recommend using one of the release branches.
         </para>
     </section>
 </section>
diff --git a/documentation/poky-ref-manual/ref-bitbake.xml b/documentation/poky-ref-manual/ref-bitbake.xml
index ed6c8bc..d6c13fc 100644
--- a/documentation/poky-ref-manual/ref-bitbake.xml
+++ b/documentation/poky-ref-manual/ref-bitbake.xml
@@ -83,7 +83,7 @@
             <filename class="directory">meta-extras/</filename> can be included 
             too. Adding extra content to
             <glossterm><link linkend='var-BBFILES'>BBFILES</link></glossterm> is best
-            acheived through the use of Bitbake
+            achieved through the use of Bitbake
             <link linkend='usingpoky-changes-layers'>"layers"</link>.
         </para>
 
diff --git a/documentation/poky-ref-manual/ref-classes.xml b/documentation/poky-ref-manual/ref-classes.xml
index 38122c0..d7cfb6e 100644
--- a/documentation/poky-ref-manual/ref-classes.xml
+++ b/documentation/poky-ref-manual/ref-classes.xml
@@ -45,7 +45,7 @@
     <para>
         Autotools (autoconf, automake, libtool) brings standardisation and this
         class aims to define a set of tasks (configure, compile etc.) that will
-        work for all autotooled packages.  It should usualy be enough to define
+        work for all autotooled packages.  It should usually be enough to define
         a few standard variables as documented in the <link
         linkend='usingpoky-extend-addpkg-autotools'>simple autotools
         example</link> section and then simply "inherit autotools". This class
@@ -60,7 +60,7 @@
     <itemizedlist>
       <listitem>
         <para>
-            'do_configure' regenearates the configure script (using autoreconf) and
+            'do_configure' regenerates the configure script (using autoreconf) and
             then launches it with a standard set of arguments used during
             cross-compilation. Additional parameters can be passed to 
             <command>configure</command> through the <glossterm><link 
diff --git a/documentation/poky-ref-manual/ref-images.xml b/documentation/poky-ref-manual/ref-images.xml
index 822c6b0..b74b523 100644
--- a/documentation/poky-ref-manual/ref-images.xml
+++ b/documentation/poky-ref-manual/ref-images.xml
@@ -52,7 +52,7 @@
                     <emphasis>meta-toolchain</emphasis> - This generates a tarball containing
                     a standalone toolchain which can be used externally to Poky. It is self
                     contained and unpacks to the <filename class="directory">/opt/poky</filename>
-                    directory. It also contains a copy of QEMU and the scripts neccessary to run 
+                    directory. It also contains a copy of QEMU and the scripts necessary to run 
                     poky QEMU images.
                 </para>
             </listitem>
diff --git a/documentation/poky-ref-manual/ref-structure.xml b/documentation/poky-ref-manual/ref-structure.xml
index 296ea54..7387fda 100644
--- a/documentation/poky-ref-manual/ref-structure.xml
+++ b/documentation/poky-ref-manual/ref-structure.xml
@@ -21,7 +21,7 @@
         <para>
             A copy of BitBake is included within Poky for ease of use, and should 
             usually match the current BitBake stable release from the BitBake project. 
-            Bitbake, a metadata interpreter, reads the Poky metadata and runs the tasks 
+            BitBake, a metadata interpreter, reads the Poky metadata and runs the tasks 
             defined in the Poky metadata. Failures are usually from the metadata, not 
             BitBake itself, so most users don't need to worry about BitBake. The 
             <filename class="directory">bitbake/bin/</filename> directory is placed 
@@ -124,7 +124,7 @@
         <title><filename class="directory">documentation</filename></title>
 
         <para>
-            This is the location for documentaiton about poky including this handbook.
+            This is the location for documentation about poky including this handbook.
         </para>
     </section>
 
@@ -180,7 +180,7 @@ source POKY_SRC/poky-init-build-env [BUILDDIR]
         <title><filename>build/conf/bblayers.conf</filename></title>
 
         <para>
-            This file defines layers walked by bitbake. If there's no <filename>
+            This file defines layers walked by BitBake. If there's no <filename>
             bblayers.conf</filename> present, it is created from <filename>bblayers.conf.sample
             </filename> when the environment setup script is sourced.
         </para>
diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index fc2cbbe..716ea6b 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -101,7 +101,7 @@
 
         <glossentry id='var-BBPATH'><glossterm>BBPATH</glossterm>
             <glossdef>
-                <para>Used by Bitbake to locate bbclass and configuration files.  This variable is analagous to 
+                <para>Used by Bitbake to locate bbclass and configuration files.  This variable is analogous to 
                     the PATH variable.</para>
             </glossdef>
         </glossentry>
@@ -140,9 +140,9 @@
 
         <glossentry id='var-COMPATIBLE_MACHINE'><glossterm>COMPATIBLE_MACHINE</glossterm>
             <glossdef>
-                <para>A regular expression which evalutates to match the machines the recipe 
+                <para>A regular expression which evaluates to match the machines the recipe 
                 works with. It stops recipes being run on machines they're incompatible with, 
-                which is partciuarly useful with kernels. It also helps to increase parsing 
+                which is particularly useful with kernels. It also helps to increase parsing 
                 speed as further parsing of the recipe is skipped as if it found the current
                 machine is not compatible.</para>
             </glossdef>
@@ -813,7 +813,7 @@
 
         <glossentry id='var-SUMMARY'><glossterm>SUMMARY</glossterm>
             <glossdef>
-                <para>Short (72 char suggested) Summary of binary package for packaging sytems such as ipkg, rpm or debian, inherits DESCRIPTION by default</para>
+                <para>Short (72 char suggested) Summary of binary package for packaging systems such as ipkg, rpm or debian, inherits DESCRIPTION by default</para>
             </glossdef>
         </glossentry>
 
-- 
1.7.2.3


--------------060500040800010100060809--
