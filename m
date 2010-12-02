Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D3DF4C81060
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 18:38:44 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Dec 2010 16:38:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,285,1288594800"; d="scan'208";a="355823463"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by azsmga001.ch.intel.com with ESMTP; 01 Dec 2010 16:38:29 -0800
Message-Id: <cover.1291250127.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 2 Dec 2010 08:35:27 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/1]Fix opkg-config-base little issue
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
X-List-Received-Date: Thu, 02 Dec 2010 00:38:44 -0000

remove the variable "L" from bb file,because the change to bitbake.conf and insane.bbclass were removed in modutils-collateral patch.We use ${POKYBASE} to replace the ${L}

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/fix-opkg-config
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/fix-opkg-config

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  opkg-config-base: remove the variable "L" from bb file

 meta/recipes-devtools/opkg/opkg-config-base_1.0.bb |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)


