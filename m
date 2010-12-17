Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0DE034C810AC
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 00:34:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Dec 2010 22:34:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,359,1288594800"; d="scan'208";a="869207840"
Received: from unknown (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 22:34:03 -0800
Message-Id: <cover.1292567626.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Fri, 17 Dec 2010 14:33:46 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] SRC_URI checksum support v3
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
X-List-Received-Date: Fri, 17 Dec 2010 06:34:04 -0000

This patch add SRC_URI checksum support. With this patch,fetcher
can verify the MD5 and SHA256 checksum of download src with the
value defined in recipes SRC_URI.

This is the v3 patch with following changes compared with v2:
- add configurable variable BB_STRICT_CHECKSUM to handle checksum missing case
  if checksum is missing and BB_STRICT_CHECKSUM = "1", bitbake will fatal
- add check to only verify checksum for protocol http/https/ftp/ftps, not
  verify checksum for local file and other SCM

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/srcuri-v3
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/srcuri-v3

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (1):
  FetchData: add SRC_URI checksum

 bitbake/lib/bb/fetch/__init__.py |   49 ++++++++++++++++++++++++++++++++++++++
 1 files changed, 49 insertions(+), 0 deletions(-)


