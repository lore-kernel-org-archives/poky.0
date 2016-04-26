Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CD3BE00D06; Mon, 25 Apr 2016 23:48:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C377E0093B
	for <poky@yoctoproject.org>; Mon, 25 Apr 2016 23:48:02 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u3Q6m1EB017001
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 25 Apr 2016 23:48:01 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 25 Apr 2016 23:48:00 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 25 Apr 2016 23:47:57 -0700
Message-ID: <cover.1461653189.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.8.0
MIME-Version: 1.0
Subject: [PATCH 0/3] [jethro] Consolidated pull
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
X-List-Received-Date: Tue, 26 Apr 2016 06:48:05 -0000
Content-Type: text/plain

The following changes since commit 6dba9abd43f7584178de52b623c603a5d4fcec5c:

  tzcode: update to 2016c (2016-04-11 22:03:08 +0100)

are available in the git repository at:

  git://git.pokylinux.org/poky-contrib rbt/jethro
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/jethro

Humberto Ibarra (2):
  yocto-bsp: fix default kernel for x86_64 arch
  yocto-bsp: Set correct default branches and branches base for i386,
    qemu and x86_64 archs

Ross Burton (1):
  conf/distro/poky.conf: use example.com for connectivity check

 meta-yocto/conf/distro/poky.conf                                  | 5 +----
 .../arch/i386/recipes-kernel/linux/linux-yocto_4.1.bbappend       | 4 ++--
 .../arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend       | 8 ++++----
 .../arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend       | 8 ++++----
 .../target/arch/x86_64/recipes-kernel/linux/kernel-list.noinstall | 2 +-
 .../arch/x86_64/recipes-kernel/linux/linux-yocto_4.1.bbappend     | 4 ++--
 6 files changed, 14 insertions(+), 17 deletions(-)

-- 
2.8.0


