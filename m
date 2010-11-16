Return-Path: <dongxiao.xu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 490E04C80FD4
	for <poky@yoctoproject.org>; Tue, 16 Nov 2010 07:41:52 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Nov 2010 05:41:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,206,1288594800"; d="scan'208";a="349371342"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.22])
	by azsmga001.ch.intel.com with ESMTP; 16 Nov 2010 05:41:42 -0800
Message-Id: <cover.1289914982.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 16 Nov 2010 21:43:02 +0800
To: poky@yoctoproject.org
Subject: [PATCH 00/14] Multimedia/Connectivity/Base, Dongxiao, 2010/11/16
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
X-List-Received-Date: Tue, 16 Nov 2010 13:41:52 -0000

Hi Saul, 

Here are the pull request for multimedia, connectivity, and base part. Please help to review and pull. Thanks!

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (14):
  bluez4: Upgraded to version 4.79.
  neon: Upgraded to version 0.29.5
  libogg: Upgrade to version 1.2.1
  libvorbis: Upgraded to version 1.3.2
  quota: Upgraded to version 4.00-pre1
  kexec_tools: Upgraded to version 2.0.2
  libical: Upgraded to version 0.46
  libproxy: Upgraded to version 0.4.6
  tremor: Upgraded to rev 17572 (2010/10/27)
  valgrind: Upgraded to version 3.6.0
  glib-2.0: Upgraded to version 2.27.3
  taglib: Upgraded to version 1.6.3
  libmusicbrainz: Upgraded to version 3.0.3
  distro_tracking: update distro tracking fileds for bluez4, neon, etc.

 .../conf/distro/include/distro_tracking_fields.inc |   74 ++++++++++----------
 .../{bluez4-4.66 => bluez4-4.79}/bluetooth.conf    |    0
 .../fix-dfutool-usb-declaration-mismatch.patch     |    0
 .../hid2hci_usb_init.patch                         |    0
 .../{bluez4-4.66 => bluez4-4.79}/sbc-thumb.patch   |    0
 .../bluez/{bluez4_4.66.bb => bluez4_4.79.bb}       |    0
 .../gatomic-proper-pointer-get-cast.patch          |   37 ----------
 .../60_wait-longer-for-threads-to-die.patch        |   12 ++--
 .../configure-libtool.patch                        |   16 +++--
 .../glib-gettextize-dir.patch                      |   13 ++--
 .../{glib-2.0_2.24.1.bb => glib-2.0_2.27.3.bb}     |    3 +-
 .../fix_issue_caused_by_ccache.patch               |    0
 .../fixed-perl-path.patch                          |    0
 .../valgrind/valgrind_3.5.0-svn_r11264.patch.bz2   |  Bin 3681800 -> 0 bytes
 .../{valgrind_3.5.0.bb => valgrind_3.6.0.bb}       |    3 +-
 .../quota/{quota_3.17.bb => quota_4.00-pre1.bb}    |    0
 .../kexec/kexec-tools-2.0.1/configurefix.patch     |   51 --------------
 meta/recipes-kernel/kexec/kexec-tools.inc          |    5 +-
 .../{kexec-tools_2.0.1.bb => kexec-tools_2.0.2.bb} |    0
 .../libogg/{libogg_1.2.0.bb => libogg_1.2.1.bb}    |    0
 .../{libvorbis_1.3.1.bb => libvorbis_1.3.2.bb}     |    0
 .../fix_build_issue_for_gcc_4.5.0.patch            |    0
 ...usicbrainz_3.0.2.bb => libmusicbrainz_3.0.3.bb} |    4 +-
 .../{tremor_20100422.bb => tremor_20101027.bb}     |    2 +-
 .../libical/{libical_0.44.bb => libical_0.46.bb}   |    1 +
 .../libproxy-0.4.3/disable_Os_option.patch         |   17 -----
 .../{libproxy_0.4.3.bb => libproxy_0.4.6.bb}       |    5 +-
 .../{neon-0.29.3 => neon-0.29.5}/pkgconfig.patch   |    0
 .../neon/{neon_0.29.3.bb => neon_0.29.5.bb}        |    0
 .../configuretweak.patch                           |    0
 .../{taglib-1.6.1 => taglib-1.6.3}/nolibtool.patch |    0
 .../taglib/{taglib_1.6.1.bb => taglib_1.6.3.bb}    |    8 ++-
 32 files changed, 78 insertions(+), 173 deletions(-)
 rename meta/recipes-connectivity/bluez/{bluez4-4.66 => bluez4-4.79}/bluetooth.conf (100%)
 rename meta/recipes-connectivity/bluez/{bluez4-4.66 => bluez4-4.79}/fix-dfutool-usb-declaration-mismatch.patch (100%)
 rename meta/recipes-connectivity/bluez/{bluez4-4.66 => bluez4-4.79}/hid2hci_usb_init.patch (100%)
 rename meta/recipes-connectivity/bluez/{bluez4-4.66 => bluez4-4.79}/sbc-thumb.patch (100%)
 rename meta/recipes-connectivity/bluez/{bluez4_4.66.bb => bluez4_4.79.bb} (100%)
 delete mode 100644 meta/recipes-core/glib-2.0/glib-2.0-2.24.1/gatomic-proper-pointer-get-cast.patch
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.24.1 => glib-2.0-2.27.3}/60_wait-longer-for-threads-to-die.patch (63%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.24.1 => glib-2.0-2.27.3}/configure-libtool.patch (73%)
 rename meta/recipes-core/glib-2.0/{glib-2.0-2.24.1 => glib-2.0-2.27.3}/glib-gettextize-dir.patch (62%)
 rename meta/recipes-core/glib-2.0/{glib-2.0_2.24.1.bb => glib-2.0_2.27.3.bb} (66%)
 rename meta/recipes-devtools/valgrind/{valgrind => valgrind-3.6.0}/fix_issue_caused_by_ccache.patch (100%)
 rename meta/recipes-devtools/valgrind/{valgrind => valgrind-3.6.0}/fixed-perl-path.patch (100%)
 delete mode 100644 meta/recipes-devtools/valgrind/valgrind/valgrind_3.5.0-svn_r11264.patch.bz2
 rename meta/recipes-devtools/valgrind/{valgrind_3.5.0.bb => valgrind_3.6.0.bb} (93%)
 rename meta/recipes-extended/quota/{quota_3.17.bb => quota_4.00-pre1.bb} (100%)
 delete mode 100644 meta/recipes-kernel/kexec/kexec-tools-2.0.1/configurefix.patch
 rename meta/recipes-kernel/kexec/{kexec-tools_2.0.1.bb => kexec-tools_2.0.2.bb} (100%)
 rename meta/recipes-multimedia/libogg/{libogg_1.2.0.bb => libogg_1.2.1.bb} (100%)
 rename meta/recipes-multimedia/libvorbis/{libvorbis_1.3.1.bb => libvorbis_1.3.2.bb} (100%)
 rename meta/recipes-multimedia/musicbrainz/{libmusicbrainz => libmusicbrainz-3.0.3}/fix_build_issue_for_gcc_4.5.0.patch (100%)
 rename meta/recipes-multimedia/musicbrainz/{libmusicbrainz_3.0.2.bb => libmusicbrainz_3.0.3.bb} (89%)
 rename meta/recipes-multimedia/tremor/{tremor_20100422.bb => tremor_20101027.bb} (88%)
 rename meta/recipes-sato/libical/{libical_0.44.bb => libical_0.46.bb} (97%)
 delete mode 100644 meta/recipes-support/libproxy/libproxy-0.4.3/disable_Os_option.patch
 rename meta/recipes-support/libproxy/{libproxy_0.4.3.bb => libproxy_0.4.6.bb} (93%)
 rename meta/recipes-support/neon/{neon-0.29.3 => neon-0.29.5}/pkgconfig.patch (100%)
 rename meta/recipes-support/neon/{neon_0.29.3.bb => neon_0.29.5.bb} (100%)
 rename meta/recipes-support/taglib/{taglib-1.6.1 => taglib-1.6.3}/configuretweak.patch (100%)
 rename meta/recipes-support/taglib/{taglib-1.6.1 => taglib-1.6.3}/nolibtool.patch (100%)
 rename meta/recipes-support/taglib/{taglib_1.6.1.bb => taglib_1.6.3.bb} (67%)


