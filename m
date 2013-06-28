Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F1E3E003E3
	for <poky@yoctoproject.org>; Fri, 28 Jun 2013 08:12:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 28 Jun 2013 08:12:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,958,1363158000"; d="scan'208";a="361150671"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.122.97])
	by orsmga002.jf.intel.com with ESMTP; 28 Jun 2013 08:12:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Jun 2013 16:12:20 +0100
Message-Id: <cover.1372432284.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
Subject: [PATCH 0/2] Poky QA warning/error config fixes
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
X-List-Received-Date: Fri, 28 Jun 2013 15:12:37 -0000

The following changes since commit 67f76e6fc2d8476bdaaf500432198670b883138a:

  python-multiprocessing: adding runtime dependencies (2013-06-28 11:02:41 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/qa-config
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/qa-config

Paul Eggleton (2):
  poky.conf: remove la2 check which no longer exists from ERROR_QA
  poky.conf: fix WARN_QA and ERROR_QA settings

 meta-yocto/conf/distro/poky.conf | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

-- 
1.8.1.2


