Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9D24E002AB
	for <poky@yoctoproject.org>; Tue, 15 Jan 2013 15:00:00 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Jan 2013 15:00:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,475,1355126400"; d="scan'208";a="244343799"
Received: from unknown (HELO localhost) ([10.255.14.217])
	by azsmga001.ch.intel.com with ESMTP; 15 Jan 2013 14:59:55 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Tue, 15 Jan 2013 16:59:52 -0600
Message-Id: <cover.1358290189.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/1] yocto-bsp: add basic connectivity check
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
X-List-Received-Date: Tue, 15 Jan 2013 23:00:01 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset adds a basic connectivity check meant to detect
basic connectivity and git configuration issues for yocto-bsp.

The check can be skipped by adding the new -s option to the
yocto-bsp create command-line.

The following changes since commit 5ba0919b5bcadba47f59a3b342aaa27048f0ff18:

  scripts/lib/bsp/engine.py: add handling for JSON strings (2013-01-11 14:18:17 -0600)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-git-check
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-git-check

Tom Zanussi (1):
  yocto-bsp: add basic git connectivity check

 scripts/lib/bsp/tags.py |  2 +-
 scripts/yocto-bsp       | 13 +++++++++++++
 2 files changed, 14 insertions(+), 1 deletion(-)

-- 
1.7.11.4


