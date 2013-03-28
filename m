Return-Path: <michel.thebeau@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E60AEE014D3
	for <poky@yoctoproject.org>; Thu, 28 Mar 2013 12:33:14 -0700 (PDT)
Received: from yow-mthebeau-lx2.wrs.com (yow-mthebeau-lx2.wrs.com
	[128.224.146.159])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2SJX8HS024524;
	Thu, 28 Mar 2013 12:33:09 -0700 (PDT)
From: michel.thebeau@windriver.com
To: richard.purdie@linuxfoundation.org, bruce.ashfield@windriver.com
Date: Thu, 28 Mar 2013 15:32:51 -0400
Message-Id: <1364499172-28976-2-git-send-email-michel.thebeau@windriver.com>
X-Mailer: git-send-email 1.7.9.7
In-Reply-To: <1364499172-28976-1-git-send-email-michel.thebeau@windriver.com>
References: <1364499172-28976-1-git-send-email-michel.thebeau@windriver.com>
Cc: poky@yoctoproject.org
Subject: [OE-core] [PATCH 1/2] kernel.bbclass: omit vmlinux from rpm file when it is the alternative image
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
X-List-Received-Date: Thu, 28 Mar 2013 19:33:15 -0000

From: Michel Thebeau <michel.thebeau@windriver.com>

For routerstationpro, setting vmlinux as KERNEL_ALT_IMAGETYPE would
cause both the default KERNEL_IMAGETYPE and the alternate to be
inserted into the kernel rpm file.  This is because copying "vmlinux"
is hardcoded.

RSP is presently the only board that specifies vmlinux as the alternate
image.

Testing KERNEL_ALT_IMAGETYPE to disable this install of vmlinux will
cause the vmlinux output to not appear in the kernel rpm file.

[YOCTO #3515]

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
Signed-off-by: Michel Thebeau <michel.thebeau@windriver.com>
---
 meta/classes/kernel.bbclass |    9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index d57d1f5..6f988e7 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -111,7 +111,14 @@ kernel_do_install() {
 	install -m 0644 ${KERNEL_OUTPUT} ${D}/${KERNEL_IMAGEDEST}/${KERNEL_IMAGETYPE}-${KERNEL_VERSION}
 	install -m 0644 System.map ${D}/boot/System.map-${KERNEL_VERSION}
 	install -m 0644 .config ${D}/boot/config-${KERNEL_VERSION}
-	install -m 0644 vmlinux ${D}/boot/vmlinux-${KERNEL_VERSION}
+
+	# if vmlinux is the alternate image type, then do not install it
+	# in the deployed rpm.  The default will install instead, above
+	# via the variable KERNEL_OUTPUT (KERNEL_IMAGETYPE)
+	if [ ! ${KERNEL_ALT_IMAGETYPE} == "vmlinux" ]; then
+		install -m 0644 vmlinux ${D}/boot/vmlinux-${KERNEL_VERSION}
+	fi
+
 	[ -e Module.symvers ] && install -m 0644 Module.symvers ${D}/boot/Module.symvers-${KERNEL_VERSION}
 	install -d ${D}${sysconfdir}/modules-load.d
 	install -d ${D}${sysconfdir}/modprobe.d
-- 
1.7.9.7


