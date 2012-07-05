Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93410E006AD
	for <poky@yoctoproject.org>; Thu,  5 Jul 2012 11:02:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Jul 2012 11:02:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="161794674"
Received: from miles.jf.intel.com (HELO localhost) ([10.7.199.51])
	by orsmga001.jf.intel.com with ESMTP; 05 Jul 2012 11:02:52 -0700
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu,  5 Jul 2012 11:02:48 -0700
Message-Id: <cover.1341511275.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH 0/2] upstream_tracking updates
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
X-List-Received-Date: Thu, 05 Jul 2012 18:02:52 -0000

Hello,

This updates the upstream_tracking.inc file with recipe upgrades
and manual check updates for recipes I maintain. 

It also includes a .gitignore fix so that files in meta-yocto
are no longer ignored.

Scott

The following changes since commit b0510e547ebcac5548b36df66ad907f7911d33d5:

  documentation/poky-ref-manual/usingpoky.xml: added package-depends.dot (2012-07-05 16:01:32 +0100)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib sgarman/distro-tracking-updates
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/distro-tracking-updates

Scott Garman (2):
  upstream_tracking.inc: recipe upgrades and manual check updates
  .gitignore: unmask meta-yocto files

 .gitignore                                         |    1 +
 .../conf/distro/include/upstream_tracking.inc      |   30 +++++++++++---------
 2 files changed, 17 insertions(+), 14 deletions(-)

-- 
1.7.9.5


