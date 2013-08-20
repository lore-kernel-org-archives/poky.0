Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC6BFE01528
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:26 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Aug 2013 01:40:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="348814887"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 20 Aug 2013 01:40:25 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 8B1A06A4007;
	Tue, 20 Aug 2013 01:40:23 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:01 +0200
Message-Id: <222a9cfa34811fdba7f00fa0c59b12adfd103d68.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 019/186] ref-manual, adt-manual: Added links to SDKMACHINE variable.
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:26 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Now that a glossary entry for SDKMACHINE exists, I needed to
create some links to it where referenced in the ref-manual
and the adt-manual.

(From yocto-docs rev: 6efe13bcda22276e5ef71ebafff6f91961b34679)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 documentation/adt-manual/adt-prepare.xml       |   12 +++++++-----
 documentation/ref-manual/technical-details.xml |    7 +++++--
 2 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/documentation/adt-manual/adt-prepare.xml b/documentation/adt-manual/adt-prepare.xml
index e2eb2af..a2a439d 100644
--- a/documentation/adt-manual/adt-prepare.xml
+++ b/documentation/adt-manual/adt-prepare.xml
@@ -91,8 +91,8 @@
             <para>
                 If you use BitBake to generate the ADT Installer tarball, you must
                 <filename>source</filename> the environment setup script
-                (<ulink url='&YOCTO_DOCS_REF_URL;#structure-core-script'><filename>&OE_INIT_FILE;</filename></ulink>) 
-                located in the Source Directory before running the 
+                (<ulink url='&YOCTO_DOCS_REF_URL;#structure-core-script'><filename>&OE_INIT_FILE;</filename></ulink>)
+                located in the Source Directory before running the
                 BitBake command that creates the tarball.
             </para>
 
@@ -289,10 +289,12 @@
                         In particular, you need to be sure the
                         <ulink url='&YOCTO_DOCS_REF_URL;#var-MACHINE'><filename>MACHINE</filename></ulink>
                         variable matches the architecture for which you are
-                        building and that the <filename>SDKMACHINE</filename>
+                        building and that the
+                        <ulink url='&YOCTO_DOCS_REF_URL;#var-SDKMACHINE'><filename>SDKMACHINE</filename></ulink>
                         variable is correctly set if you are building
-                        a toolchain for an architecture that differs from your
-                        current development host machine.</para>
+                        a toolchain designed to run on an architecture that
+                        differs from your current development host machine
+                        (i.e. the build machine).</para>
                         <para>When the BitBake command
                         completes, the toolchain installer will be in
                         <filename>tmp/deploy/sdk</filename> in the Build
diff --git a/documentation/ref-manual/technical-details.xml b/documentation/ref-manual/technical-details.xml
index f17291f..17f96b5 100644
--- a/documentation/ref-manual/technical-details.xml
+++ b/documentation/ref-manual/technical-details.xml
@@ -263,7 +263,8 @@
         The figure shows the commands you use to easily build out this
         toolchain.
         This cross-development toolchain is built to execute on the
-        <filename>SDKMACHINE</filename>, which might or might not be the same
+        <link linkend='var-SDKMACHINE'><filename>SDKMACHINE</filename></link>,
+        which might or might not be the same
         machine as the Build Host.
         <note>
             If your target architecture is supported by the Yocto Project,
@@ -320,7 +321,9 @@
                 </para></listitem>
             <listitem><para><filename>gcc-cross-canadian</filename>:
                 The final relocatable cross-compiler.
-                When run on the <filename>SDKMACHINE</filename>, this tool
+                When run on the
+                <link linkend='var-SDKMACHINE'><filename>SDKMACHINE</filename></link>,
+                this tool
                 produces executable code that runs on the target device.
                 </para></listitem>
         </itemizedlist>
-- 
1.7.9.5


