Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E7EC94C80AC0
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 12:00:32 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Mar 2011 10:00:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,254,1297065600"; d="scan'208";a="663113219"
Received: from unknown (HELO localhost) ([10.255.12.100])
	by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2011 10:00:31 -0800
Message-Id: <4c2dcb376b4be0778cab97138fefdb8a27a0e708.1299088354.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299088353.git.sgw@linux.intel.com>
References: <cover.1299088353.git.sgw@linux.intel.com>
Old-Date: Tue, 1 Mar 2011 07:44:04 -0600
Date: Wed, 02 Mar 2011 10:00:31 -0800
To: openembedded-core@lists.openembedded.org,poky@yoctoproject.org
From: Saul Wold <sgw@linux.intel.com>
X-Mailman-Approved-At: Wed, 02 Mar 2011 12:01:14 -0600
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 17/26] [BUGID# 553] - documentation/bsp-guide/bsp.xml: Re-write of click-through
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
X-List-Received-Date: Wed, 02 Mar 2011 18:00:33 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID# 553] - In the 'BSP Click-Through Licensing Procedure'
section, which is shared between the BSP Guide and the Poky
Reference Manual, there were three links to 'pokylinux.org'
sites.  These links were intended to help a user get a license
for encumbered BSPs.  However, the links never did work.  The
section also had some wording that described a propsed naming
convention for BSP tarballs that were encumbered and non-encumbered.
The naming convention is a good idea but has not been followed
so far.

I removed the links and replaced them with general instructions
on how to get through the licensing situation.  Also removed the
hard-line naming rules and replaces with a more general explanation
of how we are naming BSP (e.g. Crown Bay).

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/bsp.xml |   59 ++++++++++++++++++++++----------------
 1 files changed, 34 insertions(+), 25 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 076c08c..ea9b001 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -533,19 +533,22 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
             </para>
 
             <para>
-	      For cases where you can substitute something and still maintain functionality, the Poky website will make
-	      available a 'de-featured' BSP completely free of the encumbered IP.
-              In that case you can use the substitution directly and without any further licensing requirements.  
-              If present, this fully 'de-featured' BSP will be named meta-&lt;bsp_name&gt; (i.e. the
-	      normal default naming convention).  
-              If available, this is the simplest the most preferred option.
+	      For cases where you can substitute something and still maintain functionality, 
+              the Yocto Project website at 
+              <ulink url='http://yoctoproject.org/download/board-support-package-bsp-downloads'></ulink> 
+              will make available a 'de-featured' BSP completely free of the encumbered IP.
+              In that case you can use the substitution directly and without any further licensing
+              requirements.  
+              If present, this fully 'de-featured' BSP will be named appropiately different 
+              than the normal encumbered BSP.
+              If available, this substitution is the simplest and most preferred option.
               This, of course, assumes the resulting functionality meets requirements.
             </para>
 
             <para>
-	      If however, a non-encumbered version is unavailable or the 'free' version would provide unsuitable
-	      functionality or quality, an encumbered version can be used.  
-              Encumbered versions of a BSP are given names of the form meta-&lt;bsp_name&gt;-nonfree.
+	      If however, a non-encumbered version is unavailable or the 'free' version 
+              would provide unsuitable functionality or quality, you can use 
+              an encumbered version.  
             </para>
 
             <para>  
@@ -559,14 +562,23 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
 
 		<para>
 		  Get a license key (or keys) for the encumbered BSP by visiting 
+                  a website and providing the name of the BSB and your email address
+                  through a web form.
+                </para>
+ 
+<!--
                   <ulink url='https://pokylinux.org/bsp-keys.html'>https://pokylinux.org/bsp-keys.html</ulink>
 		  and give the name of the BSP and your e-mail address in the web form.
 		</para>
 
+                COMMENT:  This link is not implemented at this point.  
+
 		<programlisting>
 		  [screenshot of dialog box]
 		</programlisting>
 
+-->
+
 		<para>
 		  After agreeing to any applicable license terms, the
 		  BSP key(s) will be immediately sent to the address
@@ -609,7 +621,8 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
 		  encumbered BSP.  
                   These prompts usually take the form of instructions
 		  needed to manually fetch the encumbered package(s)
-		  and md5 sums into the required directory (e.g. the poky/build/downloads)
+		  and md5 sums into the required directory 
+                  (e.g. the <filename>poky/build/downloads</filename>).
                   Once the manual package fetch has been
 		  completed, restart the build to continue where
 		  it left off.
@@ -619,25 +632,21 @@ FILESEXTRAPATHS := "${THISDIR}/${PN}"
               </listitem>
               <listitem>
 		<para>
-		  Get a full-featured BSP recipe rather than a key, by
-		  visiting
-		  <ulink url='https://pokylinux.org/bsps.html'>https://pokylinux.org/bsps.html</ulink>.
-		  Accepting the license agreement(s) presented will
-		  subsequently allow you to download a tarball
-		  containing a full-featured BSP that is legally cleared for
-		  your use by the just-given license agreement(s).
-		  This method will also allow the encumbered image to
-		  be built with no change at all to the normal build
-		  process.
-		</para>
+		  Get a full-featured BSP recipe rather than a key.
+                  You can do this by visiting the applicable BSP download page from the Yocto 
+                  Project website at
+                  <ulink url='http://yoctoproject.org/download/board-support-package-bsp-downloads'></ulink>.
+		  BSP tarballs that have proprietary information can be downloaded after agreeing 
+                  to licensing requirements as part of the download process. 
+                  Obtaining the code this way allows you to build an encumbered image with 
+                  no changes at all as compared to the normal build. 
+                </para>
               </listitem>
 	    </orderedlist>
 	    <para>
 	      Note that the third method is also the only option available
-	      when downloading pre-compiled images generated from
-	      non-free BSPs.  
-              Those images are likewise available at
-	      <ulink url='https://pokylinux.org/bsps.html'>https://pokylinux.org/bsps.html</ulink>.
+	      when downloading pre-compiled images generated from non-free BSPs.  
+              Those images are likewise available at from the Yocto Project website.
             </para> 
         </section>
 
-- 
1.7.1


