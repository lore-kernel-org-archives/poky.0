Return-Path: <cristian.iorga@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E10F4E00BD3
	for <poky@yoctoproject.org>; Wed,  2 Apr 2014 06:37:53 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Apr 2014 06:31:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,780,1389772800"; d="scan'208";a="485711180"
Received: from sentry.rb.intel.com ([10.237.105.54])
	by orsmga001.jf.intel.com with ESMTP; 02 Apr 2014 06:36:19 -0700
From: Cristian Iorga <cristian.iorga@intel.com>
To: poky@yoctoproject.org
Date: Wed,  2 Apr 2014 16:39:34 +0300
Message-Id: <cover.1396445845.git.cristian.iorga@intel.com>
X-Mailer: git-send-email 1.8.3.2
Subject: [PATCH 0/1] Add Poky 1.6 to tested distros
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
X-List-Received-Date: Wed, 02 Apr 2014 13:37:58 -0000

The following changes since commit 3e528d3e4bc542ca2f654c54363c56af0fb9f61b:

  Make ppce300c3 tune hard-float by default (2014-04-01 23:39:14 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib ciorga/poky-tested-distro
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=ciorga/poky-tested-distro

Cristian Iorga (1):
  poky.conf: added Poky 1.6 as tested distro

 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

-- 
1.8.3.2


