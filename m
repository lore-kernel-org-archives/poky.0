Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85062E00A38; Mon, 13 Aug 2018 18:38:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F23FE0096A
	for <poky@yoctoproject.org>; Mon, 13 Aug 2018 18:38:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7E1cHZ9013102
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 13 Aug 2018 18:38:17 -0700 (PDT)
Received: from pek-lpggp6.wrs.com (128.224.153.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.399.0;
	Mon, 13 Aug 2018 18:38:17 -0700
From: Kevin Hao <kexin.hao@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 14 Aug 2018 09:31:20 +0800
Message-ID: <20180814013126.191534-1-kexin.hao@windriver.com>
X-Mailer: git-send-email 2.14.4
MIME-Version: 1.0
Subject: [PATCH 0/6] wic: bootimg-partition: Create the u-boot specific boot config
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
X-List-Received-Date: Tue, 14 Aug 2018 01:38:18 -0000
Content-Type: text/plain

Hi,

So far, we still have to manually setup the correct boot command for the
u-boot before booting the wic image. This patch series tries to leverage
the distro boot command in u-boot and compose the corresponding
extlinux.conf when creating the wic image. Then the wic image could boot
automatically without any manual setting up.

Kevin Hao (6):
  wic: Remove the unused variable Partition.sourceparams_dict
  wic: bootimg-partition: Use the relative path in the install_task
  wic: bootimg-partition: Add do_configure_partition() method
  wic: bootimg-partition: Add support to create the u-boot boot config
    file
  meta-yocto-bsp: beaglebone: Add the u-boot boot config file for the
    wic image
  meta-yocto-bsp: beaglebone: Use the uuid for the block device naming
    in wic image

 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf  |   2 +-
 meta-yocto-bsp/wic/beaglebone-yocto.wks            |   4 +-
 scripts/lib/wic/partition.py                       |   1 -
 .../lib/wic/plugins/source/bootimg-partition.py    | 102 ++++++++++++++++-----
 4 files changed, 82 insertions(+), 27 deletions(-)

-- 
2.14.4


