Return-Path: <srifenbark@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 65A414C80ACD
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:21:26 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gy0-f176.google.com with SMTP id 6so347088gya.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=PSBK+YCUvCfy4M2C0sHOepCnT5iO0dKicdHF1dB4+k4=;
	b=B3qON8yIzXsfhPfdF7L+B0FHq+B2u7mqdTprzEUq/K1oLkKxw0Ev7at++EuGadbHWY
	W5yv2u2EGtxzuZ3yqObreTpQLNxBgkTQdwjvYX1jU+XE+cm64yQUb6X/Q9P+1/lSk/1/
	gRLDzkm/M9kOk/8sAEpGMHC24XebNUj0an0ws=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=rPg/LKRXcTt8jaxbc3OHrxc31Y9rKa3SaaT8jWNPI8UQ2b1nCsMI2ZmInzVuM1N+1c
	jciqXZm/+xC7v8KlXwfgnMObCSSN9LXOd5dz2EOFgO2ppD9Vu2myR2OLrcE2re0DloGd
	DNvg3WzNfWJPV9C2X31Zpqe8oUH2fv9exGI7M=
Received: by 10.151.18.4 with SMTP id v4mr857922ybi.265.1302027686220;
	Tue, 05 Apr 2011 11:21:26 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id v35sm228713yba.4.2011.04.05.11.21.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:21:25 -0700 (PDT)
Message-Id: <de191f35b15e418875be256523d9217446766a13.1302027384.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302027384.git.scott.m.rifenbark@intel.com>
References: <cover.1302027384.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 18:17:46 -0500
Date: Tue, 05 Apr 2011 13:21:23 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 14/15] documentation/poky-ref-manual/ref-bitbake.xml: style tags updated
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
X-List-Received-Date: Tue, 05 Apr 2011 18:21:26 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I got rid of the <filename class='directory'...> and
<filename class='extension'...> and replaced with simple
<filename>/</filename> pairs.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-bitbake.xml |   36 ++++++++++++------------
 1 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-bitbake.xml b/documentation/poky-ref-manual/ref-bitbake.xml
index d870387..75b3bf5 100644
--- a/documentation/poky-ref-manual/ref-bitbake.xml
+++ b/documentation/poky-ref-manual/ref-bitbake.xml
@@ -33,15 +33,15 @@
 
         <para>
             The first thing BitBake does is look for the <filename>bitbake.conf</filename> file.
-            Poky keeps this file in <filename class="directory">meta/conf/</filename>.
+            Poky keeps this file in <filename>meta/conf/</filename>.
             BitBake finds it by examining the <filename>BBPATH</filename> environment 
-            variable and looking for the <filename class="directory">meta/conf/</filename> 
+            variable and looking for the <filename>meta/conf/</filename> 
             directory.
         </para>
 
         <para>
             In Poky, <filename>bitbake.conf</filename> lists other configuration 
-            files to include from a <filename class="directory">conf/</filename> 
+            files to include from a <filename>conf/</filename> 
             directory below the directories listed in <filename>BBPATH</filename>. 
             In general the most important configuration file from a user's perspective 
             is <filename>local.conf</filename>, which contains a user's customized 
@@ -54,11 +54,11 @@
             The DISTRO and MACHINE environment variables are both usually set in 
             the <filename>local.conf</filename> file. 
             Valid distribution 
-            configuration files are available in the <filename class="directory">
+            configuration files are available in the <filename>
             meta/conf/distro/</filename> directory and valid machine configuration 
-            files in the <filename class="directory">meta/conf/machine/</filename> 
+            files in the <filename>meta/conf/machine/</filename> 
             directory. 
-            Within the <filename class="directory">meta/conf/machine/include/</filename> 
+            Within the <filename>meta/conf/machine/include/</filename> 
             directory are various <filename>tune-*.inc</filename> configuration files that provide common 
             "tuning" settings specific to and shared between particular architectures and machines.
         </para>
@@ -79,29 +79,29 @@
             variable <glossterm><link linkend='var-BBFILES'>BBFILES</link></glossterm> 
             is set, usually in
             <filename>local.conf</filename>, and defines the list of places to search for 
-            <filename class="extension">.bb</filename> files. 
-            By default, the BBFILES variable specifies the <filename class="directory">meta/recipes-*/
+            <filename>.bb</filename> files. 
+            By default, the BBFILES variable specifies the <filename>meta/recipes-*/
             </filename> directory within Poky. 
             Adding extra content to BBFILES is best achieved through the use of BitBake
             <link linkend='usingpoky-changes-layers'>"layers"</link>.
         </para>
 
         <para>
-            BitBake parses each <filename class="extension">.bb</filename> file in BBFILES and 
+            BitBake parses each <filename>.bb</filename> file in BBFILES and 
             stores the values of various variables.  
-            In summary, for each <filename class="extension">.bb</filename> 
+            In summary, for each <filename>.bb</filename> 
             file the configuration plus the base class of variables are set, followed 
-            by the data in the <filename class="extension">.bb</filename> file 
+            by the data in the <filename>.bb</filename> file 
             itself, followed by any inherit commands that
-            <filename class="extension">.bb</filename> file might contain.
+            <filename>.bb</filename> file might contain.
         </para>
 
         <para>
-            Because parsing <filename class="extension">.bb</filename> files is a time 
+            Because parsing <filename>.bb</filename> files is a time 
             consuming process, a cache is kept to speed up subsequent parsing. 
-            This cache is invalid if the timestamp of the <filename class="extension">.bb</filename> 
+            This cache is invalid if the timestamp of the <filename>.bb</filename> 
             file itself changes, or if the timestamps of any of the include, 
-            configuration or class files the <filename class="extension">.bb</filename>
+            configuration or class files the <filename>.bb</filename>
             file depends on changes.
         </para>
     </section>
@@ -110,7 +110,7 @@
         <title>Preferences and Providers</title>
 
         <para>
-            Once all the <filename class="extension">.bb</filename> files have been 
+            Once all the <filename>.bb</filename> files have been 
             parsed, BitBake starts to build the target (poky-image-sato in the previous section's 
             example) and looks for providers of that target.
             Once a provider is selected, BitBake resolves all the dependencies for  
@@ -200,11 +200,11 @@ PREFERRED_PROVIDER_virtual/kernel = "linux-rp"
         <para>
             As each task completes, a timestamp is written to the directory specified by the 
             <glossterm><link linkend='var-STAMPS'>STAMPS</link></glossterm> variable (usually 
-            <filename class="directory">build/tmp/stamps/*/</filename>). 
+            <filename>build/tmp/stamps/*/</filename>). 
             On subsequent runs, BitBake looks at the STAMPS directory and does not rerun 
             tasks that are already completed unless a timestamp is found to be invalid. 
             Currently, invalid timestamps are only considered on a per 
-            <filename class="extension">.bb</filename> file basis.
+            <filename>.bb</filename> file basis.
             So, for example, if the configure stamp has a timestamp greater than the 
             compile timestamp for a given target then the compile task would rerun.
             Running the compile task again, however, has no effect on other providers 
-- 
1.7.0.4


