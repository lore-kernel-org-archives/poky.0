Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 728DAE004D1
	for <poky@yoctoproject.org>; Fri, 11 Jan 2013 15:56:55 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 11 Jan 2013 15:56:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,455,1355126400"; d="scan'208";a="190352151"
Received: from unknown (HELO localhost) ([10.255.14.242])
	by AZSMGA002.ch.intel.com with ESMTP; 11 Jan 2013 15:56:54 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Fri, 11 Jan 2013 17:56:52 -0600
Message-Id: <cover.1357948365.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/1] lttng reference updates
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
X-List-Received-Date: Fri, 11 Jan 2013 23:56:55 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This updates the lttng references in poky with the corresponging
changes submitted to oe-core

The following changes since commit 8dd276a78340059151c4cb5d5ef37f7940494df0:

  recipes-kernel/lttng-2.0: rename to recipes-kernel/lttng (2013-01-11 17:22:28 -0600)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/updates-for-legacy-lttng-v3
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/updates-for-legacy-lttng-v3

Tom Zanussi (1):
  lttng: update references to legacy lttng recipes

 meta-yocto/conf/distro/include/distro_alias.inc | 3 ---
 meta-yocto/conf/distro/include/maintainers.inc  | 3 ---
 meta-yocto/conf/distro/include/recipe_color.inc | 5 +++--
 3 files changed, 3 insertions(+), 8 deletions(-)

-- 
1.7.11.4


