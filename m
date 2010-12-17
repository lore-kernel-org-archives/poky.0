Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1D6594C80B71
	for <poky@yoctoproject.org>; Fri, 17 Dec 2010 14:02:50 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Dec 2010 12:02:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,189,1291622400"; d="scan'208";a="637616080"
Received: from unknown (HELO [10.255.14.44]) ([10.255.14.44])
	by fmsmga002.fm.intel.com with ESMTP; 17 Dec 2010 12:02:47 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Fri, 17 Dec 2010 14:02:33 -0600
Message-ID: <1292616153.2104.461.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH 0/1] Add meta-crownbay -noemgd machine config
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
X-List-Received-Date: Fri, 17 Dec 2010 20:02:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

This adds a second machine configuration to the meta-crownbay BSP,
one that that doesn't use EMGD graphics.

Pull URL: git://git.pokylinux.org/meta-intel.git
  Branch: meta-crownbay/laverne
  Browse:
http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=meta-crownbay/laverne

Tom Zanussi (1):
  meta-crownbay: add a machine configuration that doesn't use EMGD
    graphics

 meta-crownbay/conf/layer.conf                      |    6 ++-
 meta-crownbay/conf/machine/crownbay-noemgd.conf    |   45 ++++++++++++++++++++
 .../formfactor/crownbay-noemgd/machconfig          |    3 +
 .../xserver-xf86-config/crownbay-noemgd/xorg.conf  |   26 +++++++++++
 .../recipes-kernel/linux/linux-wrs_git.bbappend    |    4 ++
 5 files changed, 83 insertions(+), 1 deletions(-)
 create mode 100644 meta-crownbay/conf/machine/crownbay-noemgd.conf
 create mode 100644 meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay-noemgd/machconfig
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay-noemgd/xorg.conf




