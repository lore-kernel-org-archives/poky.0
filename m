Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88C6BE01404
	for <poky@yoctoproject.org>; Wed, 29 Aug 2012 16:18:43 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 29 Aug 2012 16:18:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,335,1344236400"; d="scan'208";a="215938761"
Received: from unknown (HELO localhost) ([10.255.13.47])
	by fmsmga001.fm.intel.com with ESMTP; 29 Aug 2012 16:18:42 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org, richard.purdie@linuxfoundation.org,
	sgw@linux.intel.com
Date: Wed, 29 Aug 2012 18:18:40 -0500
Message-Id: <cover.1346282120.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/3] yocto-bsp updates to reflect ia32-base move
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
X-List-Received-Date: Wed, 29 Aug 2012 23:18:43 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

ia32-base was moved to oe-core, which resulted in some more changes
yo yocto-bsp.

The following changes since commit bb0aab79e488a99cb1b43f72f0e8ddbe39d97519:

  yocto-bsp: use KBRANCH_DEFAULT in 'newbranch' cases (2012-08-29 14:23:36 -0700)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-ia32-base-updates
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-ia32-base-updates

Tom Zanussi (3):
  yocto-bsp: include meta-intel.inc if emgd selected
  yocto-bsp: update the help regarding the meta-intel layer
  yocto-bsp: add a LICENSE_FLAGS_WHITELIST blurb for emgd to README

 scripts/lib/bsp/help.py                                      | 12 ++++++------
 scripts/lib/bsp/substrate/target/arch/common/README          |  8 ++++++++
 .../target/arch/i386/conf/machine/{{=machine}}.conf          |  2 ++
 3 files changed, 16 insertions(+), 6 deletions(-)

-- 
1.7.11.4


