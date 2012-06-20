Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0FE3E01428
	for <poky@yoctoproject.org>; Wed, 20 Jun 2012 01:55:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5K8texG003336
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 20 Jun 2012 01:55:40 -0700 (PDT)
Received: from localhost.localdomain (128.224.162.164) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.1.255.0; Wed, 20 Jun 2012 01:55:40 -0700
From: Kang Kai <kai.kang@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 20 Jun 2012 16:55:51 +0800
Message-ID: <9ecf80039a9c9e9297edff87a14a2c5be6723199.1340182393.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1340182393.git.kai.kang@windriver.com>
References: <cover.1340182393.git.kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.164]
Subject: [PATCH 1/1] runqemu-internal: qemu fails to run on ext2 image
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
X-List-Received-Date: Wed, 20 Jun 2012 08:55:40 -0000
Content-Type: text/plain

[Yocto 2579]

When set DISTRO to poky-tiny, only ext2 image is created. But
runqemu-internal doesn't set QEMUOPTIONS for ext2 image that make qemu
fail to boot.

Fix it for qemux86 arch since poky-tiny can only build for qemux86 now.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 scripts/runqemu-internal |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/runqemu-internal b/scripts/runqemu-internal
index c8e3186..041464d 100755
--- a/scripts/runqemu-internal
+++ b/scripts/runqemu-internal
@@ -319,7 +319,7 @@ fi
 if [ "$MACHINE" = "qemux86" ]; then
     QEMU=qemu
     QEMU_UI_OPTIONS="$QEMU_UI_OPTIONS -vga vmware -enable-gl"
-    if [ "$FSTYPE" = "ext3" -o "$FSTYPE" = "btrfs" ]; then
+    if [ "$FSTYPE" = "ext2" -o "$FSTYPE" = "ext3" -o "$FSTYPE" = "btrfs" ]; then
         KERNCMDLINE="vga=0 root=/dev/hda rw mem=$QEMU_MEMORY $KERNEL_NETWORK_CMD"
         QEMUOPTIONS="$QEMU_NETWORK_CMD -hda $ROOTFS $QEMU_UI_OPTIONS"
     fi
-- 
1.7.5.4


