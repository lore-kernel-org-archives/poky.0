Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 368284C811B9
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 01:07:42 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Dec 2010 23:07:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="358056685"
Received: from unknown (HELO [10.255.13.237]) ([10.255.13.237])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2010 23:07:41 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 07 Dec 2010 01:07:59 -0600
Message-ID: <1291705679.2848.62.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH 0/3][KERNEL] crownbay-meta: wrs_meta
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
X-List-Received-Date: Tue, 07 Dec 2010 07:07:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

This patchset provides the initial branch and config options for the
crownbay-meta layer.

Pull URL: git://git.pokylinux.org/linux-2.6-windriver-contrib.git
  Branch: tzanussi/crownbay-wrs_meta
  Browse: http://git.pokylinux.org/cgit.cgi/linux-2.6-windriver-contrib/log/?h=tzanussi/crownbay-wrs_meta

Thanks,
    Tom Zanussi <tom.zanussi@intel.com>

Tom Zanussi (3):
  crownbay: create initial BSP infrastructure
  crownbay: add drm emgd feature
  crownbay: add EG20T config

 .../bsp/crownbay/crownbay-standard.scc             |    7 ++
 wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg     |   68 ++++++++++++++++++++
 wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc     |    8 ++
 wrs/cfg/kernel-cache/bsp/crownbay/eg20t.cfg        |   36 ++++++++++
 .../kernel-cache/features/drm-emgd/drm-emgd.cfg    |    3 +
 .../kernel-cache/features/drm-emgd/drm-emgd.scc    |    1 +
 6 files changed, 123 insertions(+), 0 deletions(-)
 create mode 100644 wrs/cfg/kernel-cache/bsp/crownbay/crownbay-standard.scc
 create mode 100644 wrs/cfg/kernel-cache/bsp/crownbay/crownbay.cfg
 create mode 100644 wrs/cfg/kernel-cache/bsp/crownbay/crownbay.scc
 create mode 100644 wrs/cfg/kernel-cache/bsp/crownbay/eg20t.cfg
 create mode 100644 wrs/cfg/kernel-cache/features/drm-emgd/drm-emgd.cfg
 create mode 100644 wrs/cfg/kernel-cache/features/drm-emgd/drm-emgd.scc




