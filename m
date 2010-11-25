Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6F9514C810FF
	for <poky@yoctoproject.org>; Wed, 24 Nov 2010 21:01:31 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Nov 2010 19:01:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,251,1288594800"; d="scan'208";a="861182065"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga001.fm.intel.com with ESMTP; 24 Nov 2010 19:01:30 -0800
Message-Id: <cover.1290654095.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Thu, 25 Nov 2010 11:01:35 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/4] X apps/UX: eds-dbus update, Edwin
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
X-List-Received-Date: Thu, 25 Nov 2010 03:01:31 -0000

Saul,
This is the update of eds-dbus with some other necessry new recipes. Pls. review and pull.

Thanks,
edwin


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/distro01
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/distro01

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (4):
  libgdata: Add 0.6.5 as new recipe
  nspr: Add 4.8.6 as new recipe
  nss: Add 3.12.8 as new recipe
  eds-dbus: Update to 2.32.1

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-gnome/gnome/libgdata_0.6.5.bb         |   12 +
 .../recipes-sato/eds/eds-dbus/compatible_api.patch |  109 +
 .../eds/eds-dbus/new-contact-fix.patch             |   14 +-
 meta/recipes-sato/eds/eds-dbus/nossl.patch         |   56 +-
 .../eds/eds-dbus/optional_imapx_provider.patch     |   62 -
 meta/recipes-sato/eds/eds-dbus_git.bb              |   17 +-
 .../nspr/nspr-4.8.6/30_config_64bits.dpatch        |   41 +
 .../nspr/nspr-4.8.6/30_pkgconfig.dpatch            |   33 +
 .../nspr/nspr-4.8.6/configure_fix.patch            |   19 +
 .../nspr/nspr-4.8.6/unbreak-build.diff             |   46 +
 meta/recipes-sato/nspr/nspr-tools-native_4.8.6.bb  |   35 +
 meta/recipes-sato/nspr/nspr_4.8.6.bb               |   33 +
 .../recipes-sato/nss/nss-3.12.6/00_ckbi_1.79.patch | 6386 ++++++++++++++++++++
 meta/recipes-sato/nss/nss-3.12.6/25_entropy.patch  |   22 +
 meta/recipes-sato/nss/nss-3.12.6/38_hurd.patch     |   59 +
 meta/recipes-sato/nss/nss-3.12.6/38_kbsd.patch     |  152 +
 .../nss/nss-3.12.6/38_mips64_build.patch           |   27 +
 .../nss/nss-3.12.6/80_security_build.patch         |   17 +
 .../nss/nss-3.12.6/80_security_tools.patch         |   26 +
 meta/recipes-sato/nss/nss-3.12.6/81_sonames.patch  |  351 ++
 .../nss/nss-3.12.6/85_security_load.patch          |   79 +
 meta/recipes-sato/nss/nss-3.12.6/90_realpath.patch |   35 +
 .../nss/nss-3.12.6/91_build_pwdecrypt.patch        |   17 +
 .../nss-3.12.6/95_add_spi+cacert_ca_certs.patch    | 1168 ++++
 .../nss/nss-3.12.6/96_NSS_VersionCheck.patch       |   18 +
 .../97_SSL_RENEGOTIATE_TRANSITIONAL.patch          |   21 +
 meta/recipes-sato/nss/nss-3.12.6/build-fix.patch   |   63 +
 meta/recipes-sato/nss/nss-3.12.6/nss.pc.in         |   11 +
 meta/recipes-sato/nss/nss_3.12.6.bb                |  107 +
 30 files changed, 8910 insertions(+), 128 deletions(-)
 create mode 100644 meta/recipes-gnome/gnome/libgdata_0.6.5.bb
 create mode 100644 meta/recipes-sato/eds/eds-dbus/compatible_api.patch
 delete mode 100644 meta/recipes-sato/eds/eds-dbus/optional_imapx_provider.patch
 create mode 100644 meta/recipes-sato/nspr/nspr-4.8.6/30_config_64bits.dpatch
 create mode 100644 meta/recipes-sato/nspr/nspr-4.8.6/30_pkgconfig.dpatch
 create mode 100644 meta/recipes-sato/nspr/nspr-4.8.6/configure_fix.patch
 create mode 100644 meta/recipes-sato/nspr/nspr-4.8.6/unbreak-build.diff
 create mode 100644 meta/recipes-sato/nspr/nspr-tools-native_4.8.6.bb
 create mode 100644 meta/recipes-sato/nspr/nspr_4.8.6.bb
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/00_ckbi_1.79.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/25_entropy.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/38_hurd.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/38_kbsd.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/38_mips64_build.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/80_security_build.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/80_security_tools.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/81_sonames.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/85_security_load.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/90_realpath.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/91_build_pwdecrypt.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/95_add_spi+cacert_ca_certs.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/96_NSS_VersionCheck.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/97_SSL_RENEGOTIATE_TRANSITIONAL.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/build-fix.patch
 create mode 100644 meta/recipes-sato/nss/nss-3.12.6/nss.pc.in
 create mode 100644 meta/recipes-sato/nss/nss_3.12.6.bb


