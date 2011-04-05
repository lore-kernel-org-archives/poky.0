Return-Path: <srifenbark@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 44D524C802F2
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:32:59 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxd5 with SMTP id 5so148249yxd.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=rtYZY1ygnbRwYuhgPI/s9WPVV2XqhQyCDj+9SuTsRxs=;
	b=bSly+BnwHPPRqsJb7LLvDhPbwBX0jKLhT/+Zk1yGA0ZvK8a1PqaSGxeufVOwGejF53
	Y+9wB4BgNjk6p8U7PUftBRdZj3M1zEgY4eVX0vN6m0Zf0yfhJuuiBAzDHBXqOBu2CglN
	YbhD+CIT7rUWqrf/xh3mkPsPmgtuQAKsqs5Fc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=jpgc5SHMQ3V0DO4/LRnB/AGR7TP/gFVl+W7CQDuz5krfx3rRycGmFOUfRH5pdF7HYn
	N90JhddREcZ2aJAXtxmI/0l+ezkI4Yj7V7NigodQ6N3YI0tcl38/RQXmtyr29E8DGrD+
	WlZGrJbLhtJsLp623q+CZUy+76Kc2VflidG88=
Received: by 10.91.33.1 with SMTP id l1mr548136agj.207.1302010373997;
	Tue, 05 Apr 2011 06:32:53 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id x37sm738250ana.34.2011.04.05.06.32.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:32:53 -0700 (PDT)
Message-Id: <f1d1f3e25993b53ac7a3b5e7cfe3ec71c8f47523.1302009987.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 11:36:17 -0500
Date: Tue, 05 Apr 2011 06:32:53 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 04/16] documentation/poky-ref-manual/development.xml: OProfileUI section updated
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
X-List-Received-Date: Tue, 05 Apr 2011 13:33:04 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Section 5.3.2 (Using OProfileUI) was out of date.  Several of the URLs
would not resolve.  They were pointing to openedhand links that had
not been maintained.  I updated the entire section.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/development.xml |   13 ++++++-------
 1 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/documentation/poky-ref-manual/development.xml b/documentation/poky-ref-manual/development.xml
index 5479854..45df028 100644
--- a/documentation/poky-ref-manual/development.xml
+++ b/documentation/poky-ref-manual/development.xml
@@ -937,8 +937,8 @@ $ opreport -cl
 
         <para>
             A graphical user interface for OProfile is also available. 
-            You can download and build it from svn at
-            <ulink url="http://svn.o-hand.com/repos/oprofileui/trunk/"></ulink>. 
+            You can download and build it from the Yocto Project at
+            <ulink url="http://git.yoctoproject.org/cgit.cgi/oprofileui/"></ulink>. 
             If the "tools-profile" image feature is selected, all necessary binaries
             are installed onto the target device for OProfileUI interaction.
         </para>
@@ -954,7 +954,7 @@ $ opreport -cl
             </caption>
          </mediaobject>
          </screenshot>
--->
+
         <para>
             In order to convert the data in the sample format from the target
             to the host you need the <filename>opimport</filename> program. 
@@ -963,13 +963,12 @@ $ opreport -cl
             <ulink url='http://debian.o-hand.com/'>OpenedHand repository</ulink>.
             We recommend using OProfile 0.9.3 or greater. 
         </para>
+-->
         <para>
             Even though Poky usually includes all needed patches on the target device, you 
             might find you need other OProfile patches for recent OProfileUI features.
-            If so, see the <ulink url='http://svn.o-hand.com/repos/oprofileui/trunk/README'>
+            If so, see the <ulink url='http://git.yoctoproject.org/cgit.cgi/oprofileui/tree/README'>
             OProfileUI README</ulink> for the most recent information.
-            You can also see <ulink url="http://labs.o-hand.com/oprofileui">OProfileUI website
-            </ulink> for general information on the OProfileUI project. 
         </para>
 
         <section id="platdev-oprofile-oprofileui-online">
@@ -1066,7 +1065,7 @@ $ opreport -cl
                 a "vmlinux" file that matches the running kernel is available. 
                 In Poky, that file is usually located in 
                 <filename>/boot/vmlinux-KERNELVERSION</filename>, where KERNEL-version is the 
-                version of the kernel (e.g. 2.6.23). 
+                version of the kernel. 
                 Poky generates separate vmlinux packages for each kernel
                 it builds so it should be a question of just making sure a matching package is 
                 installed - for example: <filename>opkg install kernel-vmlinux</filename>. 
-- 
1.7.0.4


