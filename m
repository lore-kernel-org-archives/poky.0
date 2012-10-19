Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C36BE00348
	for <poky@yoctoproject.org>; Fri, 19 Oct 2012 10:22:15 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Oct 2012 10:22:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,613,1344236400"; d="scan'208";a="237598978"
Received: from unknown (HELO localhost) ([10.255.14.73])
	by fmsmga002.fm.intel.com with ESMTP; 19 Oct 2012 10:22:12 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Fri, 19 Oct 2012 12:22:10 -0500
Message-Id: <cover.1350666665.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/1] Fix for YOCTO #3233
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
X-List-Received-Date: Fri, 19 Oct 2012 17:22:15 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This fixes a problem seen on one of the QA systems running 'create bsp'
functionality in ADT.  We haven't been able to reproduce the problem
elsewhere, but it fixes it there.

The following changes since commit fadb4079014514beb7d2d3e6c66f63397d4ebce2:

  PACKAGES_DYNAMIC: use += instead of = in most cases (2012-10-19 18:02:26 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/3233-fix
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/3233-fix

Tom Zanussi (1):
  yocto-bsp: set branches_base for list_property_values()

 scripts/lib/bsp/engine.py | 4 ++++
 1 file changed, 4 insertions(+)

-- 
1.7.11.4


