Return-Path: <qing.he@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 111BE4C81003
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 21:22:47 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 30 Dec 2010 19:21:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,253,1291622400"; d="scan'208";a="368308201"
Received: from qhe2-db.sh.intel.com ([10.239.13.38])
	by azsmga001.ch.intel.com with ESMTP; 30 Dec 2010 19:21:46 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PYVTQ-0001gJ-At; Fri, 31 Dec 2010 11:16:12 +0800
Message-Id: <cover.1293765141.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Old-Date: Fri, 31 Dec 2010 11:12:21 +0800
Date: Fri, 31 Dec 2010 11:16:12 +0800
To: poky@yoctoproject.org
Subject: [PATCH 0/6] recipe upgrades, Qing He, 12/31/2010
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
X-List-Received-Date: Fri, 31 Dec 2010 03:22:48 -0000

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/distro

Thanks,
    Qing He
---


Qing He (6):
  parted: upgrade to version 2.3
  libtasn1: upgrade to version 2.9
  gnutls: upgrade to version 2.10.4
  ncurses: upgrade to version 5.7
  augeas: upgrade to version 0.7.4
  lzo: upgrade to version 2.04

 meta/recipes-core/ncurses/ncurses-5.7/config.cache |    4 +
 .../ncurses/ncurses-5.7/tic-hang.patch             |   25 +
 .../ncurses/ncurses/makefile_tweak.patch           |   89 -
 meta/recipes-core/ncurses/ncurses/visibility.patch | 4904 --------------------
 meta/recipes-core/ncurses/ncurses_5.4.bb           |   11 -
 meta/recipes-core/ncurses/ncurses_5.7.bb           |  242 +
 meta/recipes-extended/augeas/augeas_0.7.3.bb       |    6 -
 meta/recipes-extended/augeas/augeas_0.7.4.bb       |    6 +
 .../{parted-1.9.0 => parted-2.3}/no_check.patch    |    0
 .../{parted-1.9.0 => parted-2.3}/syscalls.patch    |    0
 .../parted/{parted_1.9.0.bb => parted_2.3.bb}      |   12 +-
 .../configure-fix.patch                            |    0
 .../gnutls-openssl.patch                           |    0
 .../gnutls-texinfo-euro.patch                      |    0
 .../gnutls/{gnutls_2.8.6.bb => gnutls_2.10.4.bb}   |    4 +-
 .../gnutls/{libtasn1_2.8.bb => libtasn1_2.9.bb}    |    4 +-
 meta/recipes-support/lzo/lzo-2.03/autofoo.patch    |   17 -
 .../lzo/{lzo-2.03 => lzo-2.04}/acinclude.m4        |    0
 meta/recipes-support/lzo/lzo-2.04/autoconf.patch   |   19 +
 .../lzo/{lzo_2.03.bb => lzo_2.04.bb}               |    9 +-
 20 files changed, 311 insertions(+), 5041 deletions(-)
 create mode 100644 meta/recipes-core/ncurses/ncurses-5.7/config.cache
 create mode 100644 meta/recipes-core/ncurses/ncurses-5.7/tic-hang.patch
 delete mode 100644 meta/recipes-core/ncurses/ncurses/makefile_tweak.patch
 delete mode 100644 meta/recipes-core/ncurses/ncurses/visibility.patch
 delete mode 100644 meta/recipes-core/ncurses/ncurses_5.4.bb
 create mode 100644 meta/recipes-core/ncurses/ncurses_5.7.bb
 delete mode 100644 meta/recipes-extended/augeas/augeas_0.7.3.bb
 create mode 100644 meta/recipes-extended/augeas/augeas_0.7.4.bb
 rename meta/recipes-extended/parted/{parted-1.9.0 => parted-2.3}/no_check.patch (100%)
 rename meta/recipes-extended/parted/{parted-1.9.0 => parted-2.3}/syscalls.patch (100%)
 rename meta/recipes-extended/parted/{parted_1.9.0.bb => parted_2.3.bb} (54%)
 rename meta/recipes-support/gnutls/{gnutls-2.8.6 => gnutls-2.10.4}/configure-fix.patch (100%)
 rename meta/recipes-support/gnutls/{gnutls-2.8.6 => gnutls-2.10.4}/gnutls-openssl.patch (100%)
 rename meta/recipes-support/gnutls/{gnutls-2.8.6 => gnutls-2.10.4}/gnutls-texinfo-euro.patch (100%)
 rename meta/recipes-support/gnutls/{gnutls_2.8.6.bb => gnutls_2.10.4.bb} (53%)
 rename meta/recipes-support/gnutls/{libtasn1_2.8.bb => libtasn1_2.9.bb} (81%)
 delete mode 100644 meta/recipes-support/lzo/lzo-2.03/autofoo.patch
 rename meta/recipes-support/lzo/{lzo-2.03 => lzo-2.04}/acinclude.m4 (100%)
 create mode 100644 meta/recipes-support/lzo/lzo-2.04/autoconf.patch
 rename meta/recipes-support/lzo/{lzo_2.03.bb => lzo_2.04.bb} (72%)


