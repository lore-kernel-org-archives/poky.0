Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3DE9E4C811B9
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 00:56:34 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2010 22:56:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,340,1288594800"; d="scan'208";a="583498827"
Received: from unknown (HELO [10.255.13.56]) ([10.255.13.56])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2010 22:56:33 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 14 Dec 2010 00:56:23 -0600
Message-ID: <1292309785.2318.140.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH 0/1] Add meta-crownbay, v2
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
X-List-Received-Date: Tue, 14 Dec 2010 06:56:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Adds a new layer for Tunnel Creek/Topcliff systems.

This version is against laverne (0.90) - the changes against
master will follow soon.

This also still uses the 2.6.34 kernel; the crownbay kernel changes
are the same as before, so I won't bother reposting them.

v2 changes:

- adhere to the new internal BSP filesystem layout scheme
- move the whole layer over to the meta-intel repository

Pull URL: git://git.pokylinux.org/meta-intel.git
  Branch: meta-crownbay/laverne
  Browse: http://git.pokylinux.org/cgit.cgi/meta-intel/log/?h=meta-crownbay/laverne

Tom Zanussi (1):
  This layer provides support for Tunnel Creek + Topcliff Intel systems
        to laverne (0.90).

Tom Zanussi (1):
  meta-crownbay: new layer for E6xx/EG20T systems

 meta-crownbay/COPYING.MIT                          |   17 ++
 meta-crownbay/README                               |  198 ++++++++++++++++++++
 meta-crownbay/conf/layer.conf                      |   10 +
 meta-crownbay/conf/machine/crownbay.conf           |   46 +++++
 .../formfactor/formfactor/crownbay/machconfig      |    3 +
 .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
 .../xserver-xf86-config/crownbay/xorg.conf         |   47 +++++
 .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |    3 +
 .../xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb |   90 +++++++++
 .../xserver-xf86-emgd/crosscompile.patch           |   19 ++
 .../fix_open_max_preprocessor_error.patch          |   13 ++
 .../xserver-xf86-emgd/macro_tweak.patch            |   18 ++
 .../xorg-xserver/xserver-xf86-emgd/nodolt.patch    |   12 ++
 .../xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb     |   25 +++
 .../recipes-kernel/linux/linux-wrs_git.bbappend    |    3 +
 15 files changed, 507 insertions(+), 0 deletions(-)
 create mode 100644 meta-crownbay/COPYING.MIT
 create mode 100644 meta-crownbay/README
 create mode 100644 meta-crownbay/binary/.gitignore
 create mode 100644 meta-crownbay/conf/layer.conf
 create mode 100644 meta-crownbay/conf/machine/crownbay.conf
 create mode 100644 meta-crownbay/recipes-bsp/formfactor/formfactor/crownbay/machconfig
 create mode 100644 meta-crownbay/recipes-bsp/formfactor/formfactor_0.0.bbappend
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay/xorg.conf
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin/.gitignore
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd-bin_1.7.99.2.bb
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/crosscompile.patch
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/fix_open_max_preprocessor_error.patch
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/macro_tweak.patch
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd/nodolt.patch
 create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-emgd_1.7.99.2.bb
 create mode 100644 meta-crownbay/recipes-kernel/linux/linux-wrs_git.bbappend




