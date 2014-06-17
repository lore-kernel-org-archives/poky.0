Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD1D7E00C66; Tue, 17 Jun 2014 09:13:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9EEFE00C3B
	for <poky@yoctoproject.org>; Tue, 17 Jun 2014 09:13:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5HGDTPt000436
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Jun 2014 09:13:29 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Tue, 17 Jun 2014 09:13:29 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 17 Jun 2014 12:13:17 -0400
Message-ID: <cover.1403021468.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/4] meta-yocto-bsps: 3.14 updates and NAND support
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
X-List-Received-Date: Tue, 17 Jun 2014 16:13:46 -0000
Content-Type: text/plain

Richard/Saul,

This series builds on the 3.14 update changes that were sent earlier to oe-core.
It updates all the reference BSPs to the latest 3.14 SRCREVs, and enables NAND
support on the mpc8315e-rdb. With this, we can now shake out bugs in the various
flash filesystems.

Cheers,

Bruce

The following changes since commit e44fa5496d08662444babd4506d8dde61fd2d229:

  linux-yocto/3.10: update to v3.10.43 (2014-06-17 10:46:32 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (1):
  meta-yocto-bsps: update 3.14 SRCREVs

Kevin Hao (3):
  mpc8315e-rdb: bump to linux-yocto 3.14
  mpc8315e-rdb: add the jffs2 image support
  mpc8315e-rdb: add the example about booting from jffs2 root

 README.hardware                                          | 16 ++++++++++++++++
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf            |  5 ++++-
 .../recipes-kernel/linux/linux-yocto_3.14.bbappend       | 11 +++++++----
 3 files changed, 27 insertions(+), 5 deletions(-)

-- 
1.8.1.2


