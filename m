Return-Path: <Arsalan_Awan@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5009BE00EFC; Thu, 28 Jun 2018 02:26:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68E01E00EBD
	for <poky@yoctoproject.org>; Thu, 28 Jun 2018 02:26:22 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=SVR-IES-MBX-03.mgc.mentorg.com)
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1fYTC1-00000I-75 from Arsalan_Awan@mentor.com 
	for poky@yoctoproject.org; Thu, 28 Jun 2018 02:26:21 -0700
Received: from PKL-AAWAN1-UBUNTU.pkl.mentorg.com (137.202.0.87) by
	SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Thu, 28 Jun 2018 10:26:17 +0100
From: Arsalan Awan <Arsalan_Awan@mentor.com>
To: <poky@yoctoproject.org>
Date: Thu, 28 Jun 2018 14:25:32 +0500
Message-ID: <cover.1530176497.git.Arsalan_Awan@mentor.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [137.202.0.87]
X-ClientProxiedBy: svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) To
	SVR-IES-MBX-03.mgc.mentorg.com (139.181.222.3)
Subject: [PATCH 0/1] fixing initrd mounts w/ spaces fail to move to real rootfs
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
X-List-Received-Date: Thu, 28 Jun 2018 09:26:23 -0000
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


The following changes since commit 13c465663d0d1835773fb30baba345396cf0906e:

  documentation: Updated manual revision tables with 2.2.4 release date (2018-05-24 17:23:02 +0100)

are available in the git repository at:

  git://push.yoctoproject.org/poky-contrib ArsalanHAwan/initrdscripts-init-live

Arsalan H. Awan (1):
  initrdscripts/init-live.sh: fix mounts w/ spaces fail to move to real
    rootfs

 meta/recipes-core/initrdscripts/files/init-live.sh | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

-- 
2.7.4


