Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id ED4334C8007E
	for <poky@yoctoproject.org>; Wed,  2 Feb 2011 21:58:21 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Feb 2011 19:58:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,417,1291622400"; d="scan'208";a="703470971"
Received: from sgarman-ws.jf.intel.com (HELO localhost) ([10.7.199.157])
	by orsmga001.jf.intel.com with ESMTP; 02 Feb 2011 19:58:21 -0800
Message-Id: <cover.1296704077.git.scott.a.garman@intel.com>
Old-Date: Wed, 2 Feb 2011 19:34:37 -0800
Date: Wed, 02 Feb 2011 19:59:07 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
Subject: [PATCH 0/1] docbook-utils-native fix
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
X-List-Received-Date: Thu, 03 Feb 2011 03:58:22 -0000

From: Scott Garman <scott.a.garman@intel.com>

Hi Saul,

This patch fixes the issues building docbook-utils-native. I'm still working on fixes for docbook-utils and openjade for target installs, but wanted to get you this fix ASAP to resolve the failure on the autobuilder.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: sgarman/docbook-utils-fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/docbook-utils-fix

Thanks,
    Scott Garman <scott.a.garman@intel.com>
---


Scott Garman (1):
  docbook-utils: fix build errors

 .../docbook-utils/docbook-utils_0.6.14.bb          |   30 ++++++++++++++++++++
 1 files changed, 30 insertions(+), 0 deletions(-)

-- 
1.7.3.5


