Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A4AD34C80097
	for <poky@yoctoproject.org>; Sun, 15 May 2011 20:10:25 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 15 May 2011 18:10:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,371,1301900400"; 
   d="scan'208";a="2053142"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by fmsmga002.fm.intel.com with ESMTP; 15 May 2011 18:10:24 -0700
Message-Id: <cover.1305508488.git.ke.yu@intel.com>
Old-Date: Mon, 16 May 2011 09:14:48 +0800
Date: Mon, 16 May 2011  9:16:08 +0800
To: poky@yoctoproject.org
CC: 
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 0/1] [RFC]git fetch support for rebaseable repo (a.k.a crazy git fetcher)
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
X-List-Received-Date: Mon, 16 May 2011 01:10:26 -0000

From: Yu Ke <ke.yu@intel.com>


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/crazygit
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/crazygit

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (1):
  git fetcher: add support for rebaseable git repo

 bitbake/lib/bb/fetch2/git.py |   28 ++++++++++++++++++++--------
 1 files changed, 20 insertions(+), 8 deletions(-)


