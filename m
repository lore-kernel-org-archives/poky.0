Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 237404C800BA
	for <poky@yoctoproject.org>; Mon,  9 May 2011 01:47:31 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 May 2011 23:47:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,339,1301900400"; d="scan'208";a="690000759"
Received: from lke-nhm.sh.intel.com (HELO localhost) ([10.239.36.48])
	by fmsmga002.fm.intel.com with ESMTP; 08 May 2011 23:47:30 -0700
Message-Id: <cover.1304922517.git.liping.ke@intel.com>
Old-Date: Mon, 9 May 2011 14:28:37 +0800
Date: Mon, 09 May 2011 14:36:29 +0800
To: poky@yoctoproject.org
CC: 
From: Liping Ke <liping.ke@intel.com>
Subject: [PATCH 0/4] Put extra requested fields into different cache files
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
X-List-Received-Date: Mon, 09 May 2011 06:47:31 -0000

From: Liping Ke <liping.ke@intel.com>

Below four patches are for putting extra requested fields inito different
cache files instead of using only on bb_cache.dat. Now image creator need
extra three fields. And in the future, there might be more similar requests.
For each extra requestor, we will save the requested fields data into a
separate cache files so that those who don't need it will not be impacted
with larger fields and large data files.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lke/cache_impl
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/cache_impl

Thanks,
    Liping Ke <liping.ke@intel.com>
---


Liping Ke (4):
  Introduce new param bitbake_mode into Cache.py
  Split Cache Data Retrieve method from Data Fields
  Introduce Extra required fields for image creator
  Implement independent cache for Extra Cache Fields Request

 bitbake/lib/bb/cache.py  |  189 +++++++++++++++++++++++++++++++++++++---------
 bitbake/lib/bb/cooker.py |   55 ++++++++++----
 2 files changed, 193 insertions(+), 51 deletions(-)


