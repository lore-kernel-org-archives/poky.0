Return-Path: <corneliux.stoicescu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55D9FE00C0A; Fri,  6 Jun 2014 09:21:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=5.0 tests=RCVD_IN_DNSWL_HI,
	SUBJ_ALL_CAPS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	*  1.6 SUBJ_ALL_CAPS Subject is all capitals
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55FE6E00BF9
	for <poky@yoctoproject.org>; Fri,  6 Jun 2014 09:21:49 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Jun 2014 09:21:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,990,1392192000"; d="scan'208";a="524090229"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga001.jf.intel.com with ESMTP; 06 Jun 2014 09:20:30 -0700
Received: from localhost.localdomain (unknown [10.237.112.162])
	by linux.intel.com (Postfix) with ESMTP id 986FB6A4087;
	Fri,  6 Jun 2014 09:20:02 -0700 (PDT)
From: Corneliu Stoicescu <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Fri,  6 Jun 2014 21:24:40 +0300
Message-Id: <1402079083-10096-1-git-send-email-corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.8.3.2
Subject: [PATCH 0/3] YB #6375 #6254
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
X-List-Received-Date: Fri, 06 Jun 2014 16:21:59 -0000

This patch requires the merge of the "[PATCH 0/6] YB #6375 #6254" set of patches on the openembedded-core@lists.openembedded.org mailing list and enables YB #6375 and #6254 for edgerouter and beaglebone BSPs.

This will:
- enable the target controllers to dynamically determine what image fstype to use for the rootfs files
- enable external scripts to get information like rootfs image fstype and extra files needed from the taregt controllers.

Corneliu Stoicescu (3):
  beaglebonetarget.py: Add support for get_extra_files() classmethod
  controllers/beaglebonetarget.py: enable dynamical determination of
    rootfs type
  controllers/edgeroutertarget.py: enable dynamical determination of
    rootfs type

 .../lib/oeqa/controllers/beaglebonetarget.py           | 18 +++++++++++-------
 .../lib/oeqa/controllers/edgeroutertarget.py           |  5 +++--
 2 files changed, 14 insertions(+), 9 deletions(-)

-- 
1.8.3.2


