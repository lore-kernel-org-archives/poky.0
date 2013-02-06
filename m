Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C0ABE00527
	for <poky@yoctoproject.org>; Wed,  6 Feb 2013 07:34:21 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Feb 2013 07:34:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,615,1355126400"; d="scan'208";a="287380278"
Received: from unknown (HELO localhost) ([10.255.12.217])
	by fmsmga002.fm.intel.com with ESMTP; 06 Feb 2013 07:34:20 -0800
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org,
	ross.burton@intel.com
Date: Wed,  6 Feb 2013 09:34:18 -0600
Message-Id: <cover.1360164582.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/1][danny] fix for bug 3233
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
X-List-Received-Date: Wed, 06 Feb 2013 15:34:21 -0000

From: Tom Zanussi <tom.zanussi@linux.intel.com>

This bug cropped up just before the danny release and was pulled into
denzil and master, and also needs to go into danny.

Please pull into poky/danny.

The following changes since commit a7ce81df2f6e513a7e364c443759733c778b5c1f:

  yocto-bsp: qualify user files with machine name (2013-02-05 21:37:35 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/3233-fix-danny
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/3233-fix-danny

Tom Zanussi (1):
  yocto-bsp: set branches_base for list_property_values()

 scripts/lib/bsp/engine.py | 4 ++++
 1 file changed, 4 insertions(+)

-- 
1.7.11.4


