Return-Path: <marc.ferland@gmail.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 654ACE0129D
	for <poky@yoctoproject.org>; Mon, 25 Mar 2013 13:45:22 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id m17so4984430vca.39
	for <poky@yoctoproject.org>; Mon, 25 Mar 2013 13:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:sender:from:to:subject:date:message-id:x-mailer;
	bh=A5x2VktjMOga6GPnSYL0x0EmQ5vhwhA+UaJg0nE/hqI=;
	b=PlR1l5+jWwlfso4vILHEwJrMOtL5LlzAQSmS3u9laaEzHaNVAyO+k720oQI3Exncub
	L8XgcZtlYvvP3oGz6Cqsw683MBMmPLSar9Q9XL7qIDQMRrUM+q5KAbUVl55cAyBg/z7N
	GgiYV7fvE8mDB61+qlKusxsclzWOfc6xhEZsE3aGG+/4UF5rEYYncQr6YvK0E2brnRz+
	YbyYJUsX3bb+/y7uuXJagPRAmvNS4Kck3izNnZxbD5NkjcQ8mE+GrIgjnxyBE6SwysK4
	uI0V5jbP1+AumxqBJyIKL/EavJIwyAyql6U9cfjjmriSzQ9Dk3G6khVNxlcGJNHLZjmI
	vM1Q==
X-Received: by 10.220.156.8 with SMTP id u8mr17521761vcw.24.1364244321729;
	Mon, 25 Mar 2013 13:45:21 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id l18sm22408239vdh.10.2013.03.25.13.45.19
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Mon, 25 Mar 2013 13:45:20 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Mon, 25 Mar 2013 16:45:24 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: poky@yoctoproject.org
Date: Mon, 25 Mar 2013 16:45:24 -0400
Message-Id: <1364244324-29732-1-git-send-email-ferlandm@sonatest.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] image_types.bbclass: Replace squashfs-lzma with squashfs-xz
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
X-List-Received-Date: Mon, 25 Mar 2013 20:45:22 -0000

Booting an image generated with squashfs-lzma results in a kernel
error: "Filesystem uses "lzma" compression. This is not supported".

Currently (well at least in Linux 3.8) the officially supported
decompressors are:
* LZO
* XZ
* ZLIB

This change makes sure we use a supported compression algorithm for
squashed root filesystems.

Signed-off-by: Marc Ferland <ferlandm@sonatest.com>
---
 meta/classes/image_types.bbclass |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/classes/image_types.bbclass b/meta/classes/image_types.bbclass
index f7b8314..98d31f5 100644
--- a/meta/classes/image_types.bbclass
+++ b/meta/classes/image_types.bbclass
@@ -171,7 +171,7 @@ IMAGE_CMD_btrfs () {
 }
 
 IMAGE_CMD_squashfs = "mksquashfs ${IMAGE_ROOTFS} ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.squashfs ${EXTRA_IMAGECMD} -noappend"
-IMAGE_CMD_squashfs-lzma = "mksquashfs ${IMAGE_ROOTFS} ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.squashfs-lzma ${EXTRA_IMAGECMD} -noappend -comp lzma"
+IMAGE_CMD_squashfs-xz = "mksquashfs ${IMAGE_ROOTFS} ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.squashfs-xz ${EXTRA_IMAGECMD} -noappend -comp xz"
 IMAGE_CMD_tar = "cd ${IMAGE_ROOTFS} && tar -cvf ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.tar ."
 
 CPIO_TOUCH_INIT () {
@@ -230,13 +230,13 @@ IMAGE_DEPENDS_ext3 = "genext2fs-native e2fsprogs-native"
 IMAGE_DEPENDS_ext4 = "genext2fs-native e2fsprogs-native"
 IMAGE_DEPENDS_btrfs = "btrfs-tools-native"
 IMAGE_DEPENDS_squashfs = "squashfs-tools-native"
-IMAGE_DEPENDS_squashfs-lzma = "squashfs-tools-native"
+IMAGE_DEPENDS_squashfs-xz = "squashfs-tools-native"
 IMAGE_DEPENDS_elf = "virtual/kernel mkelfimage-native"
 IMAGE_DEPENDS_ubi = "mtd-utils-native"
 IMAGE_DEPENDS_ubifs = "mtd-utils-native"
 
 # This variable is available to request which values are suitable for IMAGE_FSTYPES
-IMAGE_TYPES = "jffs2 sum.jffs2 cramfs ext2 ext2.gz ext2.bz2 ext3 ext3.gz ext2.lzma btrfs live squashfs squashfs-lzma ubi tar tar.gz tar.bz2 tar.xz cpio cpio.gz cpio.xz cpio.lzma vmdk elf"
+IMAGE_TYPES = "jffs2 sum.jffs2 cramfs ext2 ext2.gz ext2.bz2 ext3 ext3.gz ext2.lzma btrfs live squashfs squashfs-xz ubi tar tar.gz tar.bz2 tar.xz cpio cpio.gz cpio.xz cpio.lzma vmdk elf"
 
 COMPRESSIONTYPES = "gz bz2 lzma xz"
 COMPRESS_CMD_lzma = "lzma -k -f -7 ${IMAGE_NAME}.rootfs.${type}"
-- 
1.7.10.4


