Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1A3F44C80889
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 13:31:47 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yi0-f48.google.com with SMTP id 28so1426884yia.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 11:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=4oGb+2bbikz0qsnsQXymqOIDhFvTOkk/N3/H97yALm8=;
	b=L+pa2x/NybCN2Ws7CcFtrkGxIJic++7a/jRtj9NCgyBcbUiFLH+hyH8P/knzr0q9TS
	MYd+hS3Wh7OIYBQvMn6Qx7p77aTpYuoEZ7V3glWwVktRAsj6ZaaXXzvfpeIx8w/NZWTm
	TKJlWpn6o0I7NGRM2YBKl1oxvDjUywlEWVCIs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=i38KRUSDfwIG/3ELRHv0LFGnsemNwuKSKg/7T2v64CFRSJOf7i7riVP4y3t7y3Eo1c
	Xjl/kj/+l6jQE2AIDk0P4pxWw+97DlzSV8rhLu6evngk0CI+7VTX3wXw8uJQyWF7TcSE
	kwplNT9rbv8lHby5F+g3VpZxvV1E0sDrnEN2E=
Received: by 10.150.174.19 with SMTP id w19mr2970939ybe.252.1301596307236;
	Thu, 31 Mar 2011 11:31:47 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id p51sm695200yhm.52.2011.03.31.11.31.46
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 11:31:46 -0700 (PDT)
Message-Id: <40b002e3e67f11ebc039a5dadc8909423972e09a.1301596085.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301596085.git.scott.m.rifenbark@intel.com>
References: <cover.1301596085.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 13:25:02 -0500
Date: Thu, 31 Mar 2011 13:31:42 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 8/8] documentation/yocto-project-qs/yocto-project-qs.xml: Updates for PDF creation
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
X-List-Received-Date: Thu, 31 Mar 2011 18:31:48 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I had to make edits to eliminate the stand-alone logo and insert the
commands to include the title-page PNG for PDF creation.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |   19 +++++++++++++++----
 1 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index f011f09..52baba1 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -1,14 +1,23 @@
 <!DOCTYPE chapter PUBLIC "-//OASIS//DTD DocBook XML V4.2//EN"
 "http://www.oasis-open.org/docbook/xml/4.2/docbookx.dtd">
 
-<article id='intro'>
-   <imagedata fileref="figures/yocto-project-transp.png" width="6in" depth="1in" align="right" scale="25" />
+<chapter id='intro'>
+<!--   <imagedata fileref="figures/yocto-project-transp.png" width="6in" depth="1in" align="right" scale="25" />
+-->
+
+    <title>Yocto Project Quick Start</title>
 
-<section id='fake-title'>
+<!-- <section id='fake-title'>
     <title>Yocto Project Quick Start</title>
     <para>Copyright &copy; 2010-2011 Linux Foundation</para>
 </section>
 
+
+    <para>
+        This is some intro text.
+    </para>
+-->
+
 <section id='welcome'>
     <title>Welcome!</title>
     <para>
@@ -299,10 +308,12 @@
                  <ulink url='http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html'>
                  Poky Reference Manual</ulink>.
              </para></note>
+             <para>
              The final command runs the image:
              <literallayout class='monospaced'>
      $ poky-qemu qemux86
              </literallayout>
+             </para>
              <note><para>
                  Depending on the number of processors and cores, the amount or RAM, the speed of your
                  Internet connection and other factors, the build process could take several hours the first
@@ -519,7 +530,7 @@
     </section>
 </section>
 
-</article>
+</chapter>
 <!--
 vim: expandtab tw=80 ts=4
 -->
-- 
1.7.0.4


