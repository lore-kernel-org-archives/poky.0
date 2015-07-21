Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10EBDE009BE; Tue, 21 Jul 2015 08:24:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA463E00837
	for <poky@yoctoproject.org>; Tue, 21 Jul 2015 08:24:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t6LFOOf3001341
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 21 Jul 2015 08:24:25 -0700 (PDT)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.235.1; Tue, 21 Jul 2015 08:24:18 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 21 Jul 2015 11:24:22 -0400
Message-ID: <cover.1437492124.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.1.0
MIME-Version: 1.0
Subject: [PATCH 0/2] yocto-bsps: update preferred version to 4.1 and introduce 3.14-rt
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
X-List-Received-Date: Tue, 21 Jul 2015 15:24:27 -0000
Content-Type: text/plain

Hi all,

The 4.1 version switch on this change obviously depends on the 4.1 series
that I've sent to oe-core, but I wanted to send this out as well .. to show
that I didn't forget to update the default version to be 4.1.

Once 4.1 is in the core, we are good to go with this change.

Cheers,

Bruce

The following changes since commit a888ca8e0a3739cc603c0d286076ad926a88bacc:

  linux-yocto: introduce 4.1 versioned recipes (2015-07-21 10:41:12 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (2):
  yocto-bsps: add 3.14-rt configuration
  qemu: change default version to 4.1

 .../recipes-kernel/linux/linux-yocto-rt_3.14.bbappend      | 11 +++++++++++
 meta-yocto/conf/distro/poky.conf                           | 14 +++++++-------
 2 files changed, 18 insertions(+), 7 deletions(-)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.14.bbappend

-- 
2.1.0


