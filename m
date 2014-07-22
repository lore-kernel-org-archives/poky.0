Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08DD9E007B1; Tue, 22 Jul 2014 03:31:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F065E007AE
	for <poky@yoctoproject.org>; Tue, 22 Jul 2014 03:31:26 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s6MAVPOg028947
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 22 Jul 2014 03:31:25 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 22 Jul 2014 03:31:24 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 22 Jul 2014 03:31:23 -0700
Message-ID: <cover.1406024955.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [PATCH 0/2] two fixes for local.conf.sample and local.conf.sample.extended
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
X-List-Received-Date: Tue, 22 Jul 2014 10:31:51 -0000
Content-Type: text/plain

The following changes since commit 8b7116d25ed6255a03895d835e5a0560858ab496:

  bitbake: Updated the the example 'bitbake -h' output to match the actual output, which has been recently patched to fix the '-S SIGNATURE_HANDLER, --dump-signatures=SIGNATURE_HANDLER' option. (2014-07-22 08:33:25 +0100)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/doc
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/doc

Robert Yang (2):
  local.conf.sample.extended: add KERNEL_IMAGE_MAXSIZE and
    IMAGE_ROOTFS_MAXSIZE
  local.conf.sample: qemu-native DEPENDS libxext-naive

 meta-yocto/conf/local.conf.sample          |    1 +
 meta-yocto/conf/local.conf.sample.extended |    8 ++++++++
 2 files changed, 9 insertions(+)

-- 
1.7.9.5


