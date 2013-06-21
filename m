Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FA38E0140D
	for <poky@yoctoproject.org>; Fri, 21 Jun 2013 15:24:07 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Jun 2013 15:24:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,915,1363158000"; d="scan'208";a="333586298"
Received: from unknown (HELO localhost) ([10.255.13.131])
	by orsmga001.jf.intel.com with ESMTP; 21 Jun 2013 15:23:55 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: paul.eggleton@linux.intel.com, jessica.zhang@intel.com,
	poky@yoctoproject.org
Date: Fri, 21 Jun 2013 17:23:51 -0500
Message-Id: <cover.1371853159.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 0/1] master/dylan fix for bogus 'layer' arch in yocto-bsp list
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
X-List-Received-Date: Fri, 21 Jun 2013 22:24:12 -0000

This fixes YOCTO bug #4735 and can be pulled into both master and dylan.

The following changes since commit 011608a7b08c7fe5ad065da5179e1946ce250c57:

  bitbake: data_smart: Fix bug with overrides and weak default values (2013-06-21 13:00:57 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/bug-4735-fix
  http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/bug-4735-fix

Tom Zanussi (1):
  yocto-bsp: filter out 'layer' from arch list

 scripts/lib/bsp/engine.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
1.7.11.4


