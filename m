Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B12EE0158A
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:25 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Aug 2013 01:40:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="348814880"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 20 Aug 2013 01:40:24 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 03B026A4093;
	Tue, 20 Aug 2013 01:40:21 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:00 +0200
Message-Id: <b9bf10a5b242b592b922966baa9cf4e1b7ad220f.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 018/186] ref-manual: Added SDKMACHINE variable description.
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

(From yocto-docs rev: f1e3e52257c296cfeb70fea63bf5ea7b142774dc)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 documentation/ref-manual/ref-variables.xml |   27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index 7bf6467..7c7a2dc 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -3341,6 +3341,33 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             </glossdef>
         </glossentry>
 
+        <glossentry id='var-SDKMACHINE'><glossterm>SDKMACHINE</glossterm>
+            <glossdef>
+                <para>
+                    The architecture of the machine that runs Application
+                    Development Toolkit (ADT) items.
+                    In other words, packages are built so that they will run
+                    on the target you specify with the argument.
+                    This implies that you can build out ADT/SDK items that
+                    run on an architecture other than that of your build host.
+                    For example, you can use an x86_64-based build host to
+                    create packages that will run on an i686-based
+                    SDK Machine.
+                </para>
+
+                <para>
+                    You can use "i686" and "x86_64" as possible values for this
+                    variable.
+                    The variable defaults to "i686" and is set in the
+                    <filename>local.conf</filename> file in the
+                    <ulink url='&YOCTO_DOCS_DEV_URL;#build-directory'>Build Directory</ulink>.
+                    <literallayout class='monospaced'>
+     SDKMACHINE ?= "i686"
+                    </literallayout>
+                </para>
+            </glossdef>
+        </glossentry>
+
         <glossentry id='var-SECTION'><glossterm>SECTION</glossterm>
             <glossdef>
                 <para>The section in which packages should be categorized.
-- 
1.7.9.5


