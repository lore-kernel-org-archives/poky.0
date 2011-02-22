Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B6344C80A79
	for <poky@yoctoproject.org>; Tue, 22 Feb 2011 14:59:56 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Feb 2011 12:59:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,207,1297065600"; d="scan'208";a="392517273"
Received: from unknown (HELO localhost) ([10.255.12.90])
	by azsmga001.ch.intel.com with ESMTP; 22 Feb 2011 12:59:56 -0800
Message-Id: <ac2a0024efebe7f0cac535d9378afd5c88b35d71.1298408196.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1298408196.git.scott.m.rifenbark@intel.com>
References: <cover.1298408196.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 18 Feb 2011 12:30:56 -0600
Date: Tue, 22 Feb 2011 15:00:47 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 2/2] documentation/poky-ref-manual/faq.xml: [BUGID# 628] - Added new question for Python 2.6 requirement.
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
X-List-Received-Date: Tue, 22 Feb 2011 20:59:57 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

As part of the fix for #628 I added a new question to the FAQ for use
of Poky when you do not have Python 2.6.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/faq.xml |   41 +++++++++++++++++++++++++++++++++
 1 files changed, 41 insertions(+), 0 deletions(-)

diff --git a/documentation/poky-ref-manual/faq.xml b/documentation/poky-ref-manual/faq.xml
index b209fff..7a891b0 100644
--- a/documentation/poky-ref-manual/faq.xml
+++ b/documentation/poky-ref-manual/faq.xml
@@ -20,6 +20,47 @@
             </para>
         </answer>
     </qandaentry>
+
+
+
+
+
+    <qandaentry>
+        <question>
+            <para>
+                I only have Python 2.4 or 2.5 but BitBake requires Python 2.6.
+                Can I still use Poky?
+            </para>
+        </question>
+        <answer>
+            <para>
+                You can use a stand-alone tarball to provide Python 2.6.
+                You can find pre-built 32 and 64-bit versions of Python 2.6 at the following locations:
+                <itemizedlist>
+                    <listitem><para><ulink url='http://autobuilder.yoctoproject.org/downloads/miscsupport/python-nativesdk-standalone-i586.tar.bz2'></ulink></para></listitem>
+                    <listitem><para><ulink url='http://autobuilder.yoctoproject.org/downloads/miscsupport/python-nativesdk-standalone-x86_64.tar.bz2'></ulink></para></listitem>
+                </itemizedlist>
+            </para>
+            <para>
+                These tarballs are self-contained with all required libraries and should work 
+                on most Linux systems.  
+                To use the tarballs extract them into the root 
+                directory and run the appropriate command:
+                <literallayout class='monospaced'>
+     $ export PATH=/opt/poky/sysroots/i586-pokysdk-linux/usr/bin/:$PATH
+     $ export PATH=/opt/poky/sysroots/x86_64-pokysdk-linux/usr/bin/:$PATH
+                </literallayout>
+            </para>
+            <para>
+                Once you run the command, BitBake uses Python 2.6.
+            </para>
+        </answer>
+    </qandaentry>
+
+
+
+
+
     <qandaentry>
         <question>
             <para>
-- 
1.7.1


