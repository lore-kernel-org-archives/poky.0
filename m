Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0315E0034A
	for <poky@yoctoproject.org>; Fri, 10 Aug 2012 09:13:51 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Aug 2012 09:13:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,745,1336374000"; d="scan'208";a="206252217"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.252.121.78])
	by fmsmga002.fm.intel.com with ESMTP; 10 Aug 2012 09:13:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org,
	Scott Garman <scott.a.garman@intel.com>
Date: Fri, 10 Aug 2012 17:13:45 +0100
Message-Id: <cover.1344615154.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [denzil][PATCH 0/1] denzil fix for bitbake
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 10 Aug 2012 16:13:51 -0000

A single bitbake patch cherry-picked from master for denzil-next.


The following changes since commit 73cdebf60df225ee10f2eb215935be3b61e1b831:

  documentation/dev-manual/dev-manual-kernel-appendix.xml: Add note about conflict (2012-06-29 15:54:26 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/denzil-fixes-bitbake
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/denzil-fixes-bitbake

Paul Eggleton (1):
  cooker: fix UnboundLocalError when exception occurs during parsing

 bitbake/lib/bb/cooker.py |    2 ++
 1 file changed, 2 insertions(+)

-- 
1.7.9.5


