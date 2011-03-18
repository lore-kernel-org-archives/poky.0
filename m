Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7CAC34C80AC0
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 11:59:08 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Mar 2011 09:59:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,206,1299484800"; d="scan'208";a="898726507"
Received: from unknown (HELO localhost) ([10.255.12.172])
	by fmsmga001.fm.intel.com with ESMTP; 18 Mar 2011 09:59:07 -0700
Message-Id: <b99807b595496056d5d4adbe87a520dfab3bcfe6.1300467410.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1300467410.git.scott.m.rifenbark@intel.com>
References: <cover.1300467410.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 18 Mar 2011 08:12:42 -0600
Date: Fri, 18 Mar 2011 11:00:00 -0600
To: poky@yoctoproject.org
CC: 
From: <scott.m.rifenbark@intel.com>
Subject: [PATCH 15/15] documentation/poky-ref-manual/faq.xml: Added entry about proxy and firewall
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
X-List-Received-Date: Fri, 18 Mar 2011 16:59:08 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

This is an explanation on how to get by the proxy or around the
firewall when Poky is trying to find and download sources.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/faq.xml |   96 +++++++++++++++++++++++++++++++++
 1 files changed, 96 insertions(+), 0 deletions(-)

diff --git a/documentation/poky-ref-manual/faq.xml b/documentation/poky-ref-manual/faq.xml
index 366db6c..f4b5ae0 100644
--- a/documentation/poky-ref-manual/faq.xml
+++ b/documentation/poky-ref-manual/faq.xml
@@ -413,6 +413,102 @@
         </answer>
     </qandaentry>
 
+    <qandaentry>
+        <question>
+            <para>
+                How does Poky obtain source code and will it work behind my firewall or proxy server?
+            </para>
+        </question>
+        <answer>
+            <para>
+                The way Poky obtains source code is highly configurable.
+                You can setup Poky to get source code in most environmnents if 
+                HTTP transport is available.
+            </para>
+            <para>
+                When Poky searches for source code it first tries the local download directory.
+                If that location fails, Poky tries PREMIRRORS, the upstream source, 
+                and then MIRRORS in that order.
+            </para>
+            <para>
+                By default, Poky uses the Yocto Project source PREMIRRORS for SCM-based sources, 
+                upstreams for normal tarballs and then falls back to a number of other mirrors 
+                including the Yocto Project source mirror if those fail.
+            </para>
+            <para>
+                As an example, you could add a specific server for Poky to attempt before any
+                others by adding something like the following to the <filename>local.conf</filename>
+                configuration file:
+                <literallayout class='monospaced'>
+     PREMIRRORS_prepend = "\
+     git://.*/.* http://autobuilder.yoctoproject.org/sources/ \n \
+     ftp://.*/.* http://autobuilder.yoctoproject.org/sources/ \n \
+     http://.*/.* http://autobuilder.yoctoproject.org/sources/ \n \
+     https://.*/.* http://autobuilder.yoctoproject.org/sources/ \n"
+                </literallayout>
+            </para>
+            <para>
+                These changes cause Poky to intercept GIT, FTP, HTTP, and HTTPS
+                requests and direct them to the <filename>http://</filename> sources mirror.
+                You can use <filename>file://</filename> urls to point to local directories 
+                or network shares as well.
+            </para>
+            <para>
+                Aside from the previous technique, these options also exist:
+                <literallayout class='monospaced'>
+     BB_NO_NETWORK = "1"
+                </literallayout>
+             </para>
+             <para>
+                 This statement tells BitBake to throw an error instead of trying to access the 
+                 Internet.
+                 This technique is useful if you want to ensure code builds only from local sources.
+             </para>
+             <para>
+                 Here is another technique:
+                 <literallayout class='monospaced'>
+     BB_FETCH_PREMIRRORONLY = "1"
+                 </literallayout>
+             </para>
+             <para>
+                 This statement limits Poky to pulling source from the PREMIRRORS only.
+                 Again, this technique is useful for reproducing builds.
+             </para>
+             <para>
+                 Here is another technique:
+                 <literallayout class='monospaced'>
+     BB_GENERATE_MIRROR_TARBALLS = "1"
+                 </literallayout>
+             </para>
+             <para>
+                 This statement tells Poky to generate mirror tarballs.
+                 This technique is useful if you want to create a mirror server.
+                 If not, however, the technique can simply waste time during the build.
+             </para>
+             <para>
+                 Finally, consider an example where you are behind an HTTP-only firewall.
+                 You could make the following changes to the <filename>local.conf</filename>
+                 configuration file as long as the premirror server is up to date:
+                 <literallayout class='monospaced'>
+     PREMIRRORS_prepend = "\
+     ftp://.*/.* http://autobuilder.yoctoproject.org/sources/ \n \
+     http://.*/.* http://autobuilder.yoctoproject.org/sources/ \n \
+     https://.*/.* http://autobuilder.yoctoproject.org/sources/ \n"
+     BB_FETCH_PREMIRRORONLY = "1" 
+                 </literallayout>
+             </para>
+             <para>
+                 These changes would cause Poky to successfully fetch source over HTTP and 
+                 any network accesses to anything other than the premirror would fail.
+             </para>
+             <para>
+                 Poky also honors the standard environment variables 
+                 <filename>http_proxy</filename>, <filename>ftp_proxy</filename>, 
+                 <filename>https_proxy</filename>, and <filename>all_proxy</filename>
+                 to redirect requests through proxy servers.
+             </para>
+        </answer>
+    </qandaentry>
 
 
 
-- 
1.7.1


