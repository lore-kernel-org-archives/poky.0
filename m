Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 89E9A4C81206
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 04:04:58 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 Dec 2010 02:04:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,341,1288594800"; d="scan'208";a="361390944"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by azsmga001.ch.intel.com with ESMTP; 14 Dec 2010 02:04:41 -0800
Message-Id: <cover.1292320885.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Date: Tue, 14 Dec 2010 18:01:25 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/1] SRC_URI checksum support v2
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
X-List-Received-Date: Tue, 14 Dec 2010 10:04:58 -0000

This patch add SRC_URI checksum support. With this patch,fetcher
can verify the MD5 and SHA256 checksum of download src with the
value defined in recipes SRC_URI.

This is the V2 patch. The major change compared to V1 is:
moving the logic from poky bbclass to bitbake fetcher, per
Richard's comment

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/srcuri-v2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/srcuri-v2

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (1):
  FetchData: add SRC_URI checksum

 bitbake/lib/bb/fetch/__init__.py |   36 ++++++++++++++++++++++++++++++++++++
 1 files changed, 36 insertions(+), 0 deletions(-)


