Return-Path: <Arsalan_Awan@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D45A1E00F04; Thu, 28 Jun 2018 02:26:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3006AE00ED6
	for <poky@yoctoproject.org>; Thu, 28 Jun 2018 02:26:49 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-MBX-03.mgc.mentorg.com)
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1fYTCT-00009G-0V from Arsalan_Awan@mentor.com 
	for poky@yoctoproject.org; Thu, 28 Jun 2018 02:26:49 -0700
Received: from PKL-AAWAN1-UBUNTU.pkl.mentorg.com (137.202.0.87) by
	SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Thu, 28 Jun 2018 10:26:44 +0100
From: Arsalan Awan <Arsalan_Awan@mentor.com>
To: <poky@yoctoproject.org>
Date: Thu, 28 Jun 2018 14:26:25 +0500
Message-ID: <94e7ab15539bb9a10d86a65c5050a6340ddf58e4.1530176497.git.Arsalan_Awan@mentor.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1530176497.git.Arsalan_Awan@mentor.com>
References: <cover.1530176497.git.Arsalan_Awan@mentor.com>
MIME-Version: 1.0
X-Originating-IP: [137.202.0.87]
X-ClientProxiedBy: svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) To
	SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3)
Subject: [PATCH 1/1] initrdscripts/init-live.sh: fix mounts w/ spaces fail to move to real rootfs
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
X-List-Received-Date: Thu, 28 Jun 2018 09:26:49 -0000
Content-Type: text/plain

From: "Arsalan H. Awan" <Arsalan_Awan@mentor.com>

When there are spaces in the mount points of devices e.g.:

 a partition mounted at "/run/media/My Root Partition-sda1",

the initrd fails to move such mount points over to the
corresponding directories at /media under the real root filesystem,
and the mount points would appear at the same location as they were
mounted on when detected by initrd, for example:
 here: "/run/media/My Root Partition-sda1"
 instead of here: "/media/My Root Partition-sda1"

This causes issues such as:

  * The disks/partitions cannot be formated with any filesystem
    using e.g. mkfs.ext4 or mke2fs in general. When tried to do so
    by making sure the device is not mounted, it failed with
    errors such as:

    > /dev/sda1 is apparently in use by the system; will not make a
      filesystem here!
    > /dev/sda1: Device or resource busy while setting up superblock

  * The read/write operations become extremely slow. e.g. Under testing,
    it took approx. 2 hours just to copy 700 MB of data to the partition,
    and it took more than 40 minutes to delete that data from it.
    Same operations took under 5 minutes on a partition that had no
    spaces in its mount point (or that was successfully moved to real
    root by initrd and appeared under /media instead of /run/media).

This commit fixes such issues by quoting the arguments of failing mount
move commands and by parsing OCT or HEX encoded special characters
such as spaces to ASCII charecters in the mount points as kernel
populates the procfs like so.

Signed-off-by: Arsalan H. Awan <Arsalan_Awan@mentor.com>
---
 meta/recipes-core/initrdscripts/files/init-live.sh | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/initrdscripts/files/init-live.sh b/meta/recipes-core/initrdscripts/files/init-live.sh
index 441b41c..e58df12 100644
--- a/meta/recipes-core/initrdscripts/files/init-live.sh
+++ b/meta/recipes-core/initrdscripts/files/init-live.sh
@@ -91,8 +91,11 @@ boot_live_root() {
     # Move the mount points of some filesystems over to
     # the corresponding directories under the real root filesystem.
     for dir in `awk '/\/dev.* \/run\/media/{print $2}' /proc/mounts`; do
-        mkdir -p  ${ROOT_MOUNT}/media/${dir##*/}
-        mount -n --move $dir ${ROOT_MOUNT}/media/${dir##*/}
+        # Parse any OCT or HEX encoded chars such as spaces
+        # in the mount points to actual ASCII chars
+        dir=`printf $dir`
+        mkdir -p "${ROOT_MOUNT}/media/${dir##*/}"
+        mount -n --move "$dir" "${ROOT_MOUNT}/media/${dir##*/}"
     done
     mount -n --move /proc ${ROOT_MOUNT}/proc
     mount -n --move /sys ${ROOT_MOUNT}/sys
-- 
2.7.4


