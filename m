Return-Path: <michel.thebeau@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E38C1E014D0
	for <poky@yoctoproject.org>; Thu, 28 Mar 2013 12:33:14 -0700 (PDT)
Received: from yow-mthebeau-lx2.wrs.com (yow-mthebeau-lx2.wrs.com
	[128.224.146.159])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2SJX8HT024524;
	Thu, 28 Mar 2013 12:33:09 -0700 (PDT)
From: michel.thebeau@windriver.com
To: richard.purdie@linuxfoundation.org, bruce.ashfield@windriver.com
Date: Thu, 28 Mar 2013 15:32:52 -0400
Message-Id: <1364499172-28976-3-git-send-email-michel.thebeau@windriver.com>
X-Mailer: git-send-email 1.7.9.7
In-Reply-To: <1364499172-28976-1-git-send-email-michel.thebeau@windriver.com>
References: <1364499172-28976-1-git-send-email-michel.thebeau@windriver.com>
Cc: poky@yoctoproject.org
Subject: [OE-core] [PATCH 2/2] kernel.bbclass: do_sizecheck: update path to build image and do not delete
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

do_sizecheck has been around for a while but looks to have been unused.
There are a few issues.

It breaks because KERNEL_OUTPUT is a path relative to ${B}, and
resolves to a soft link to ${B}/${KERNEL_IMAGETYPE}.  When
do_sizecheck runs it does not find the file (because the working
directory is elsewhere) and does not fail.

Also, when do_sizecheck deletes the oversized kernel image it leaves
the previously run do_compile task with inaccurate status.

So, do the following:
 - keep the oversized image file so the status of do_compile is valid
 - specify the full path with ${B} to break the dependency on working
   directory
 - test for the image file in two typical locations and print a
   "not supported" warning when it is not found
 - finally, print a note that the size check was run successfully

[YOCTO #3514]

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
Signed-off-by: Michel Thebeau <michel.thebeau@windriver.com>
---
 meta/classes/kernel.bbclass |   25 +++++++++++++++++++++----
 1 file changed, 21 insertions(+), 4 deletions(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 6f988e7..d25d98a 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -300,10 +300,27 @@ python split_kernel_packages () {
 # with a fixed length or there is a limit in transferring the kernel to memory
 do_sizecheck() {
 	if [ ! -z "${KERNEL_IMAGE_MAXSIZE}" ]; then
-		size=`ls -l ${KERNEL_OUTPUT} | awk '{ print $5}'`
-		if [ $size -ge ${KERNEL_IMAGE_MAXSIZE} ]; then
-			rm ${KERNEL_OUTPUT}
-			die "This kernel (size=$size > ${KERNEL_IMAGE_MAXSIZE}) is too big for your device. Please reduce the size of the kernel by making more of it modular."
+		if [ -f ${B}/${KERNEL_OUTPUT} ]; then
+			# vmlinux.bin is usually found here
+			koutf="${B}/${KERNEL_OUTPUT}"
+		elif [ -f ${B}/${KERNEL_IMAGETYPE} ]; then
+			# vmlinux is usually found here
+			koutf="${B}/${KERNEL_IMAGETYPE}"
+		else
+			# if we're lucky we'll catch some other image
+			# types in the previous conditions; otherwise:
+			koutf=""
+		fi
+
+		if [ -z "$koutf" ]; then
+			bbwarn "KERNEL_IMAGE_MAXSIZE enabled but" \
+			       "${KERNEL_IMAGETYPE} not supported (or not found)"
+		else
+			size=`ls -l $koutf | awk '{ print $5}'`
+			if [ $size -ge ${KERNEL_IMAGE_MAXSIZE} ]; then
+				die "This kernel (size=$size > ${KERNEL_IMAGE_MAXSIZE}) is too big for your device. Please reduce the size of the kernel by making more of it modular."
+			fi
+			bbnote "kernel image size check... done"
 		fi
 	fi
 }
-- 
1.7.9.7


