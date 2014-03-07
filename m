Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED5BFE00A1C
	for <poky@yoctoproject.org>; Fri,  7 Mar 2014 02:20:52 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Mar 2014 02:20:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,607,1389772800"; d="scan'208";a="468311504"
Received: from lbhoopat-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.98])
	by orsmga001.jf.intel.com with ESMTP; 07 Mar 2014 02:20:49 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri,  7 Mar 2014 10:20:43 +0000
Message-Id: <cover.1394187600.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.5.3
Subject: [PATCH 0/2] meta-yocto updates for core-image-full-cmdline
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
X-List-Received-Date: Fri, 07 Mar 2014 10:20:53 -0000

The following changes since commit 003d3170edaa9472ee46111caa901ac7ddf9321c:

  bitbake: data: add vardepvalueexclude varflag (2014-03-06 17:31:11 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib paule/meta-yocto-full-cmdline
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/meta-yocto-full-cmdline

Paul Eggleton (2):
  poky-tiny.conf: update for rename of core-image-basic
  meta-yocto/conf/distro/include/*: update image/packagegroup entries

 meta-yocto/conf/distro/include/distro_alias.inc | 15 +++------------
 meta-yocto/conf/distro/include/maintainers.inc  |  5 +++--
 meta-yocto/conf/distro/poky-tiny.conf           |  2 +-
 3 files changed, 7 insertions(+), 15 deletions(-)

-- 
1.8.5.3


