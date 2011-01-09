Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CEC334C8108C
	for <poky@yoctoproject.org>; Sun,  9 Jan 2011 05:40:58 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jan 2011 03:40:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,295,1291622400"; d="scan'208";a="875794237"
Received: from unknown (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 09 Jan 2011 03:40:14 -0800
Message-Id: <cover.1294571866.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Sun, 9 Jan 2011 19:17:46 +0800
Date: Sun, 09 Jan 2011 19:48:46 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/8] bb.fetch2: SRCREV logic enhancement V2
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
X-List-Received-Date: Sun, 09 Jan 2011 11:40:59 -0000

This is the V2 patch for the SRCREV logic enhancement.

there are several changes compared with the V1:
- rebase it to bb.fetch2 code, and all code are applied to bb.fetch2 instead of bb.fetch
- call urldata_init in FetchData:__init__ according to Richard's suggestion.

this patch has been tested with
- fetch world packages with DISTRO = "poky-bleeding", empty ${DL_DIR},
  and null PREMIRROR, MIRROR

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/srcrev-v2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/srcrev-v2

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (8):
  meta: replace bb.fetch with bb.fetcher.instance
  bb.fetch2: add urldata_init call for Fetch class
  bb.fetch2.git.py: add git urldata_init
  bb.fetch2.svn.py: add urldata_init
  bb.fetch2.hg: add hg urldata_init
  bb.fetch2.bzr: add bzr urldata_init
  Fetcher: break the "SRCREVINACTION" deadlock
  Fetcher: only set __BB_DONT_CACHE when SRCREV = "${AUTOREV}"

 bitbake/lib/bb/fetch/__init__.py  |    3 ++
 bitbake/lib/bb/fetch2/__init__.py |   42 +++++++++++++-----------------------
 bitbake/lib/bb/fetch2/bzr.py      |   13 ++++-------
 bitbake/lib/bb/fetch2/git.py      |   17 +++++++--------
 bitbake/lib/bb/fetch2/hg.py       |   24 +++++++++-----------
 bitbake/lib/bb/fetch2/svn.py      |   16 ++++++--------
 meta/conf/bitbake.conf            |    4 +-
 meta/lib/oe/patch.py              |    6 ++--
 8 files changed, 54 insertions(+), 71 deletions(-)


