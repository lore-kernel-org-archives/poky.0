Return-Path: <srifenbark@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id C9E564C8050D
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 13:31:32 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gy0-f176.google.com with SMTP id 6so1426948gya.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 11:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=WbHFf8PcnSq5QyS9DkYMxPMnUsKQoUo+cdRfO5+L7Pg=;
	b=Pt+6ZC/F0BDgZ8sKfgCqPdjwATGRp5L7YUAzvSPWLlx+kE7cQ13xrBmxaceginrcAv
	oaPMO9VAlHsIAG7CWnQpVHBD49Cf8XxsRZf56KegoF6N34xuGQBspvfplE4jGZjQ1VZu
	HZPbEic8937l9cvr4oozbVh+LAnADZAh1Ff1Y=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=r9EgVjhH+/7NEB4cSbI+xzDXmnXy2ip+mlv1Ark62cP8F7wxEHPY9exaJHWZGUSsTA
	rzhrjoyPCUld37djrCMxETYRJNKPQOoYQYCPfXICflx4AAutVCXAnXIH4XT7dy9FfYXr
	iHccNV3gMcg06OO9ukgJwWRmxUJR17MEOLENQ=
Received: by 10.236.73.132 with SMTP id v4mr4243894yhd.46.1301596292580;
	Thu, 31 Mar 2011 11:31:32 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id p67sm692643yhm.100.2011.03.31.11.31.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 11:31:32 -0700 (PDT)
Message-Id: <79c1cfca4fd849540107834094e319d2213fc4a5.1301596085.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301596085.git.scott.m.rifenbark@intel.com>
References: <cover.1301596085.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 30 Mar 2011 08:20:09 -0500
Date: Thu, 31 Mar 2011 13:31:27 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 2/8] documentation/yocto-project-qs/yocto-project-qs.xml: Edits plus Matt Madison note regarding older host systems
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
X-List-Received-Date: Thu, 31 Mar 2011 18:31:33 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

I made a few small edits and I added a reference to the
wiki page 'https://wiki.yoctoproject.org/wiki/BuildingOnRHEL4'
that has entries for older development hosts.  Right now all that
is there is the RHEL4 notes but the wiki page can be expanded as needed.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |   17 +++++++++++------
 1 files changed, 11 insertions(+), 6 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 2936fde..f011f09 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -91,11 +91,11 @@
     </itemizedlist>
 
     <para>
-        Yocto Project can generate images for many kinds of devices.  
+        The Yocto Project can generate images for many kinds of devices.  
         However, the standard example machines target QEMU full system emulation for x86, ARM, MIPS,
-        and PPC based architectures as well as specific hardware such as the Intel Desktop Board
+        and PPC-based architectures as well as specific hardware such as the Intel Desktop Board
         DH55TC.  
-        Because an image developed with Yocto Project can boot inside a QEMU emulator, the 
+        Because an image developed with the Yocto Project can boot inside a QEMU emulator, the 
         development environment works nicely as a test platform for developing embedded software.
     </para>
 
@@ -103,7 +103,7 @@
         Another important Yocto Project feature is the Sato reference User Interface. 
         This optional GNOME mobile-based UI, which is intended for devices with
         resolution but restricted size screens, sits neatly on top of a device using the 
-        GNOME Mobile Stack providing a well defined user experience. 
+        GNOME Mobile Stack providing a well-defined user experience. 
         Implemented in its own layer, it makes it clear to developers how they can implement 
         their own UIs on top of Yocto Linux.
     </para>
@@ -119,7 +119,12 @@
     <itemizedlist>
         <listitem>
             <para>A host system running a supported Linux distribution (i.e. recent releases of
-                Fedora, OpenSUSE, Debian, and Ubuntu).</para>
+                Fedora, OpenSUSE, Debian, and Ubuntu).
+            <note>
+                For notes about using the Yocto Project on development systems that use 
+                older Linux distributions see 
+                <ulink url='https://wiki.yoctoproject.org/wiki/BuildingOnRHEL4'></ulink>
+            </note></para>
         </listitem>
         <listitem>
             <para>The right packages.</para>
@@ -260,7 +265,7 @@
              Adding this statement deletes the work directory used for building a package
              once the package is built.
              <literallayout class='monospaced'>
-     INHERIT += "rm_work"
+     INHERIT += rm_work
              </literallayout>
          </para></tip>
 
-- 
1.7.0.4


