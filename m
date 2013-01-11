Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AA63E004D1
	for <poky@yoctoproject.org>; Fri, 11 Jan 2013 14:13:16 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jan 2013 14:13:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,455,1355126400"; d="scan'208";a="272883011"
Received: from unknown (HELO localhost) ([10.255.14.242])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jan 2013 14:13:15 -0800
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Fri, 11 Jan 2013 16:13:12 -0600
Message-Id: <cover.1357930527.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
Subject: [PATCH 0/2] Remove legacy lttng references
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
X-List-Received-Date: Fri, 11 Jan 2013 22:13:16 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

This patchset removes legacy lttng references from meta-yocto to
correspond with the patchset sent to oe-core that removes legacy
lttng.

The following changes since commit 53cc748b93e8af584557d6db5309c3e955182c5c:

  linux-libc-headers: fix headers install in long path name environments (2013-01-10 23:53:51 +0000)

are available in the git repository at:

  git://git.yoctoproject.org/poky-contrib.git tzanussi/rm-legacy-lttng-v2
  http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/rm-legacy-lttng-v2

Tom Zanussi (2):
  lttng: remove references to legacy lttng recipes
  recipe_color.inc: add lttng recipes

 meta-yocto/conf/distro/include/distro_alias.inc    |  3 --
 meta-yocto/conf/distro/include/maintainers.inc     |  3 --
 meta-yocto/conf/distro/include/recipe_color.inc    |  5 +--

-- 
1.7.11.4


