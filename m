Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFE6CE009DF; Thu,  4 Jun 2015 21:17:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A58BE009B8
	for <poky@yoctoproject.org>; Thu,  4 Jun 2015 21:17:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.1/8.15.1) with ESMTPS id t554HnqC021444
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 4 Jun 2015 21:17:50 -0700 (PDT)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.224.2; Thu, 4 Jun 2015 21:17:49 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Fri, 5 Jun 2015 00:17:48 -0400
Message-ID: <cover.1433477676.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.1.0
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] yocto-bsps: set preferred version to 3.19
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
X-List-Received-Date: Fri, 05 Jun 2015 04:17:55 -0000
Content-Type: text/plain

Kevin Hao has updated and boot tested the yocto reference BSPs on the
3.19 kernel. So we can now bump the preferred version, and start to 
migrate everything towards the 4.1 kernel (which will be the next
LTSI), but getting off of 3.14 is key, since it solves many of our
gcc5 issues as a side effect.

Cheers,

Bruce

The following changes since commit c954cdeeaf11fb5bd8f4fbf63ddf0904998f2ca4:

  linux-yocto: update beaglebone, mpc8315e and edgerouter to 3.19 (2015-06-04 23:58:17 -0400)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Kevin Hao (1):
  meta-yocto-bsp: bump to linux-yocto 3.19 for the non-x86 BSPs

 meta-yocto-bsp/conf/machine/beaglebone.conf                   | 2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf                   | 2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf                 | 2 +-
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.19.bbappend | 9 +++++++++
 4 files changed, 12 insertions(+), 3 deletions(-)

-- 
2.1.0


