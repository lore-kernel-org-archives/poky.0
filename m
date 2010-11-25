Return-Path: <saul.wold@intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 113C74C80FAD
	for <poky@lists.pokylinux.org>; Wed, 24 Nov 2010 20:10:43 -0600 (CST)
Received: by pug.o-hand.com (Postfix)
	id 48E0812EC2F2; Wed, 24 Nov 2010 20:48:09 -0600 (CST)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by pug.o-hand.com (Postfix) with ESMTP id D214112EC117
	for <poky@o-hand.com>; Wed, 24 Nov 2010 20:48:08 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Nov 2010 18:10:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,251,1288594800"; d="scan'208";a="577398419"
Received: from unknown (HELO [10.255.13.150]) ([10.255.13.150])
	by orsmga002.jf.intel.com with ESMTP; 24 Nov 2010 18:10:41 -0800
Message-ID: <4CEDC5A0.1030005@intel.com>
Date: Wed, 24 Nov 2010 18:10:40 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@o-hand.com" <poky@o-hand.com>
Subject: [PULL] Consolidated Distro Pull Request
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
X-List-Received-Date: Thu, 25 Nov 2010 02:10:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

Please review the attached set of Updates and Cleanups.

And yes, I really got involved this time and updated 48 recipes!


Sau!

Pull URL: git://git.pokylinux.org/poky-contrib.git
   Branch: distro/master
   Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
     Saul Wold <Saul.Wold@intel.com>
---


Dongxiao Xu (1):
   utility-tasks.bbclass: Move distro related tasks to
     distrodata.bbclass

Mei Lei (45):
   galago-daemon: Add license file checksum and update GPL information
   gccmakedep: Add license checksum to bb file
   gnome-doc-utils:Add LGPL file and GPL file checksum to bb file
   libart-lgpl:Add license file checksum and update the GPL information
   liberation-fonts:Add license file checksum to bb file
   libunique:Add license file checksum to bb file
   libxpm: Add license file checksum to bb file
   libxprintapputil:Add license checksum to bb file
   libxprintutil:Add license checksum to bb file
   ttf-bitstream-vera:Add license file checksum to bb file
   libxtrap:Add license file checksum to bb file
   lttng:Add license file checksum and update the GPL information
   dpkg:Add license file checksum to bb file
   minicom: Add license file checksum and update the GPL information to
     bb file
   acpid: Add license checksum to bb file
   apr:Add license checksum to bb file
   apr-util:Add license checksum to bb file
   apt:Add license checksum to bb file
   beecrypt:Add license checksum and update the GPL to bb file
   chrpath:Add license checksum and update the GPL to bb file
   dosfstools:Add license checksum and update the GPL information
   expat:Add license checksum to bb file
   gssdp:Add license checksum and update the GPL information
   insserv:Add license checksum and update the GPL information
   libacpi:Add license checksum to bb file
   libatomics-ops:Add license checksum and update the GPL information
   libffi:Add license checksum to bb file
   libgdbus:Add license checksum and update the GPL information
   libpam:Add license checksum to bb file
   modutils:Add license checksum to bb file
   mtools:Add license checksum to bb file
   pax-utils:Add license checksum to bb file
   psmisc:Add license checksum to bb file
   autoconf:Add license checksum and add the GPL information
   automake:Add license checksum to bb file
   bison:Add license checksum to bb file
   byacc:Add license checksum and add the GPL information
   diffstat:Add license checksum to bb file
   distcc:Add license checksum to bb file
   gmp:Add license checksum and add the GPL information
   intltool:Add license checksum to bb file
   libmpc:Add license checksum and update the GPL information
   libpcre:Add license checksum to bb file
   m4:Add license checksum to bb file
   makedepend:Add license checksum to bb file

Paul Eggleton (1):
   sanity.bbclass: add wget to required utilities

Qing He (1):
   curl: fix native dependency

Saul Wold (48):
   libsndfile: remove patches that are no longer required by upstream
   task-poky-tools: fix up blktool
   liburcu: Update to version 0.4.8
   lttng-ust: Update to version 0.8
   lttng-control: Update to version 0.88
   util-macros: Update to version 1.11
   xproto: Update to version 7.0.19
   xtrans: Update to version 1.2.6
   libxxf86vm: Update to version 1.1.1
   libxxf86dga: Update to version 1.1.2
   xkeyboard-config: Update to version 2.0
   libxv: Update to version 1.0.6
   libxtst: Update to version 1.2.0
   libxt: Update to version 1.0.9
   libres: Update to version 1.0.5
   librender: Update to version 0.9.6
   librandr: Update to version 1.3.1
   libxpm: Update to version 3.5.9
   libxmu: Update to version 1.1.0
   libxkbfile: Update to version 1.0.7
   libxinerama: Update to version 1.1.1
   libxi: Update to version 1.4.0
   libxft: Update to version 2.2.0
   libxfont: Update to version 1.4.3
   libxfixes: Update to version 4.0.5
   libxext: Update to version 1.2.0
   libxdmcp: Update to version 1.1.0
   libxdamage: Update to version 1.1.3
   libxcursor: Update to version 1.1.11
   libxcomposite: Update to version 0.4.3
   libxau: Update to version 1.0.6
   libsm: Update to version 1.2.0
   libpciaccess: Update to version 0.12.0
   libice: Update to version 1.0.7
   libfontenc: Update to version 1.1.0
   font-util: Update to version 1.2.0
   font-alias: Update to version 1.0.3
   encodings: Update to version 1.0.4
   xrandr: Update to version 1.3.4
   libxcb: Update to version 1.7
   freetype: Update to version 2.4.3
   librsvg: Update to version 2.32.0
   libart-lgpl: Update to version 2.3.21
   libgnome-vfs: Update to version 2.24.4
   cronie: Update to version 1.4.6
   gnome-doc-utils: Update to version 0.20.2
   liberation-fonts: Added version 1.06, PREFERRED_VERSION is still 1.04
   preferred-xorg-versions: Updated to reflect recipe updates

Scott Garman (4):
   sudo: upgrade to version 1.7.4p4
   libpam: upgrade to version 1.1.3
   mtools: add version 4.0.15
   distro_tracking_fields.inc: update sudo, libpam, and mtools

Tom Zanussi (1):
   blktrace: new package

Yu Ke (3):
   cairo: upgrade from 1.8.10 to 1.10.0
   pango: upgrade from 1.28.0 to 1.28.3
   imake: upgrade from 1.0.2 to 1.0.4

  meta/classes/distrodata.bbclass                    |  440 
+++++++++++++++++++
  meta/classes/sanity.bbclass                        |    2 +-
  meta/classes/utility-tasks.bbclass                 |  442 
--------------------
  .../conf/distro/include/distro_tracking_fields.inc |   31 +-
  .../conf/distro/include/poky-default-revisions.inc |    1 +
  meta/conf/distro/include/poky-fixed-revisions.inc  |    3 +
  .../distro/include/preferred-xorg-versions.inc     |   46 +-
  meta/conf/distro/poky.conf                         |    1 -
  meta/recipes-bsp/acpid/acpid_1.0.6.bb              |    2 +-
  meta/recipes-bsp/libacpi/libacpi_0.2.bb            |    1 +
  .../galago/galago-daemon_0.5.1.bb                  |    3 +-
  meta/recipes-connectivity/gupnp/gssdp_0.7.1.bb     |    3 +-
  meta/recipes-core/expat/expat_2.0.1.bb             |    2 +-
  meta/recipes-core/tasks/task-poky-tools.bb         |    4 +-
  meta/recipes-devtools/apt/apt_0.7.14.bb            |    2 +-
  meta/recipes-devtools/autoconf/autoconf_2.65.bb    |    4 +-
  meta/recipes-devtools/automake/automake_1.11.1.bb  |    3 +-
  meta/recipes-devtools/bison/bison_2.4.3.bb         |    3 +-
  meta/recipes-devtools/chrpath/chrpath_0.13.bb      |    3 +-
  meta/recipes-devtools/diffstat/diffstat_1.54.bb    |    1 +
  meta/recipes-devtools/distcc/distcc_2.18.3.bb      |    1 +
  .../recipes-devtools/dosfstools/dosfstools_2.10.bb |    4 +-
  .../recipes-devtools/dosfstools/dosfstools_2.11.bb |    4 +-
  meta/recipes-devtools/dpkg/dpkg_1.15.8.5.bb        |    1 +
  meta/recipes-devtools/insserv/insserv_1.11.0.bb    |    3 +-
  meta/recipes-devtools/intltool/intltool_0.40.6.bb  |    3 +-
  meta/recipes-devtools/m4/m4_1.4.13.bb              |    1 +
  .../mtools/mtools/no-x11.gplv3.patch               |   15 +
  meta/recipes-devtools/mtools/mtools_3.9.9.bb       |    3 +-
  meta/recipes-devtools/mtools/mtools_4.0.15.bb      |   21 +
  meta/recipes-devtools/pax-utils/pax-utils_0.2.1.bb |    2 +-
  meta/recipes-extended/byacc/byacc_20100610.bb      |    3 +-
  .../cronie/{cronie_1.4.4.bb =cronie_1.4.6.bb}    |    0
  meta/recipes-extended/minicom/minicom_2.3.bb       |    3 +-
  .../pam/libpam-1.1.1/disable_crossbinary.patch     |   34 --
  .../pam/{libpam-1.1.1 =libpam}/99_pam            |    0
  .../{libpam-1.1.1 =libpam}/pam.d/common-account  |    0
  .../pam/{libpam-1.1.1 =libpam}/pam.d/common-auth |    0
  .../{libpam-1.1.1 =libpam}/pam.d/common-password |    0
  .../{libpam-1.1.1 =libpam}/pam.d/common-session  |    0
  .../pam.d/common-session-noninteractive            |    0
  .../pam/{libpam-1.1.1 =libpam}/pam.d/other       |    0
  .../pam/{libpam_1.1.1.bb =libpam_1.1.3.bb}       |   12 +-
  meta/recipes-extended/psmisc/psmisc_22.2.bb        |    2 +
  meta/recipes-extended/sudo/files/autofoo.patch     |  143 -------
  meta/recipes-extended/sudo/files/libtool.patch     |   20 +
  meta/recipes-extended/sudo/files/noexec-link.patch |   17 -
  meta/recipes-extended/sudo/files/nostrip.patch     |   23 -
  meta/recipes-extended/sudo/site/bit-32             |    2 -
  meta/recipes-extended/sudo/site/bit-64             |    2 -
  meta/recipes-extended/sudo/sudo.inc                |   21 +-
  meta/recipes-extended/sudo/sudo_1.7.2p7.bb         |    7 -
  meta/recipes-extended/sudo/sudo_1.7.4p4.bb         |   11 +
  meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb |    3 -
  meta/recipes-gnome/gnome/gnome-doc-utils_0.20.2.bb |    4 +
  .../gconftool-lossage.patch                        |    0
  .../gnome-vfs-no-kerberos.patch                    |    0
  .../{gnome-vfs_2.24.3.bb =gnome-vfs_2.24.4.bb}   |    0
  .../gnome/libart-lgpl/Makefile.am.patch            |   22 +-
  ...libart-lgpl_2.3.19.bb =libart-lgpl_2.3.21.bb} |    3 +-
  meta/recipes-gnome/libffi/libffi_3.0.9.bb          |    2 +-
  .../librsvg/librsvg-2.32.0/doc_Makefile.patch      |   17 +
  .../{librsvg_2.26.3.bb =librsvg_2.32.0.bb}       |    2 +
  meta/recipes-gnome/libunique/libunique_1.1.6.bb    |    2 +-
  .../cairo/cairo-1.8.10/hardcoded_libtool.patch     |   17 -
  meta/recipes-graphics/cairo/cairo_1.10.0.bb        |   36 ++
  meta/recipes-graphics/cairo/cairo_1.8.10.bb        |    8 -
  .../no-hardcode.patch                              |    0
  .../{freetype_2.3.12.bb =freetype_2.4.3.bb}      |    0
  .../{pango-1.28.0 =pango-1.28.3}/no-tests.patch  |    0
  meta/recipes-graphics/pango/pango.inc              |    1 +
  .../pango/{pango_1.28.0.bb =pango_1.28.3.bb}     |    0
  .../ttf-fonts/liberation-fonts_1.04.bb             |    1 +
  .../ttf-fonts/liberation-fonts_1.06.bb             |   39 ++
  .../ttf-fonts/ttf-bitstream-vera_1.10.bb           |    1 +
  .../xcb/{libxcb_1.6.bb =libxcb_1.7.bb}           |    0
  meta/recipes-graphics/xorg-app/xrandr_1.3.4.bb     |    2 +-
  .../{encodings_1.0.3.bb =encodings_1.0.4.bb}     |    2 +-
  ..._1f8141a5e3b585dfccc748400b05c9c24b41e767.patch |    0
  .../{font-alias_1.0.2.bb =font-alias_1.0.3.bb}   |    0
  .../{font-util_1.1.1.bb =font-util_1.2.0.bb}     |    4 +-
  .../{libfontenc_1.0.5.bb =libfontenc_1.1.0.bb}   |    0
  .../xorg-lib/{libice_1.0.6.bb =libice_1.0.7.bb}  |    0
  ...bpciaccess_0.11.0.bb =libpciaccess_0.12.0.bb} |    2 +-
  .../xorg-lib/{libsm_1.1.1.bb =libsm_1.2.0.bb}    |    2 +-
  .../xorg-lib/{libxau_1.0.5.bb =libxau_1.0.6.bb}  |    0
  .../libxcomposite/change-include-order.patch       |   10 +-
  ...bxcomposite_0.4.1.bb =libxcomposite_0.4.3.bb} |    2 +-
  .../{libxcursor_1.1.10.bb =libxcursor_1.1.11.bb} |    0
  .../{libxdamage_1.1.2.bb =libxdamage_1.1.3.bb}   |    2 +-
  .../{libxdmcp_1.0.3.bb =libxdmcp_1.1.0.bb}       |    0
  .../{libxext_1.1.2.bb =libxext_1.2.0.bb}         |    2 +-
  .../{libxfixes_4.0.4.bb =libxfixes_4.0.5.bb}     |    2 +-
  .../{libxfont_1.4.2.bb =libxfont_1.4.3.bb}       |    0
  .../xorg-lib/{libxft_2.1.14.bb =libxft_2.2.0.bb} |    0
  .../xorg-lib/{libxi_1.3.bb =libxi_1.4.0.bb}      |    2 +-
  .../{libxinerama_1.1.bb =libxinerama_1.1.1.bb}   |    4 +-
  .../{libxkbfile_1.0.6.bb =libxkbfile_1.0.7.bb}   |    0
  .../xorg-lib/{libxmu_1.0.5.bb =libxmu_1.1.0.bb}  |    0
  .../xorg-lib/{libxpm_3.5.7.bb =libxpm_3.5.9.bb}  |    1 +
  .../xorg-lib/libxprintapputil_1.0.1.bb             |    1 +
  .../xorg-lib/libxprintutil_1.0.1.bb                |    1 +
  .../{libxrandr_1.3.0.bb =libxrandr_1.3.1.bb}     |    2 +-
  .../{libxrender_0.9.5.bb =libxrender_0.9.6.bb}   |    2 +-
  .../{libxres_1.0.4.bb =libxres_1.0.5.bb}         |    0
  .../xorg-lib/{libxt_1.0.8.bb =libxt_1.0.9.bb}    |    2 +-
  meta/recipes-graphics/xorg-lib/libxtrap_1.0.0.bb   |    2 +-
  .../{libxtst_1.1.0.bb =libxtst_1.2.0.bb}         |    2 +-
  .../xorg-lib/{libxv_1.0.5.bb =libxv_1.0.6.bb}    |    0
  .../{libxxf86dga_1.1.1.bb =libxxf86dga_1.1.2.bb} |    2 +-
  .../{libxxf86vm_1.1.0.bb =libxxf86vm_1.1.1.bb}   |    2 +-
  ...board-config_1.9.bb =xkeyboard-config_2.0.bb} |    0
  .../xorg-lib/{xtrans_1.2.5.bb =xtrans_1.2.6.bb}  |    2 +-
  .../{xproto_7.0.17.bb =xproto_7.0.19.bb}         |    0
  .../recipes-graphics/xorg-util/gccmakedep_1.0.2.bb |    2 +-
  meta/recipes-graphics/xorg-util/imake_1.0.4.bb     |   10 +
  .../recipes-graphics/xorg-util/makedepend_1.0.2.bb |    2 +-
  ...util-macros_1.10.0.bb =util-macros_1.11.0.bb} |    2 +-
  .../blktrace/blktrace/blktrace-makefile.patch      |   53 +++
  meta/recipes-kernel/blktrace/blktrace_git.bb       |   25 ++
  ...lttng-control_0.87.bb =lttng-control_0.88.bb} |    6 +-
  .../lttng/{lttng-ust_0.7.bb =lttng-ust_0.8.bb}   |    2 +-
  meta/recipes-kernel/modutils/modutils_2.4.27.bb    |    1 +
  .../libsndfile/libsndfile1_1.0.23.bb               |    4 +-
  .../pulseaudio/libatomics-ops_1.2.bb               |    6 +-
  meta/recipes-support/apr/apr-util_1.3.4.bb         |    2 +-
  meta/recipes-support/apr/apr_1.3.3.bb              |    2 +-
  meta/recipes-support/beecrypt/beecrypt_4.1.2.bb    |    4 +-
  meta/recipes-support/curl/curl_7.21.2.bb           |    7 +-
  meta/recipes-support/gmp/gmp_5.0.1.bb              |    4 +-
  meta/recipes-support/libgdbus/libgdbus_git.bb      |    4 +-
  meta/recipes-support/libmpc/libmpc_0.8.2.bb        |    3 +-
  meta/recipes-support/libpcre/libpcre_8.10.bb       |    1 +
  .../liburcu/{liburcu_0.4.6.bb =liburcu_0.4.8.bb} |    0
  134 files changed, 881 insertions(+), 827 deletions(-)
  create mode 100644 meta/recipes-devtools/mtools/mtools/no-x11.gplv3.patch
  create mode 100644 meta/recipes-devtools/mtools/mtools_4.0.15.bb
  rename meta/recipes-extended/cronie/{cronie_1.4.4.bb =cronie_1.4.6.bb} 
(100%)
  delete mode 100644 
meta/recipes-extended/pam/libpam-1.1.1/disable_crossbinary.patch
  rename meta/recipes-extended/pam/{libpam-1.1.1 =libpam}/99_pam (100%)
  rename meta/recipes-extended/pam/{libpam-1.1.1 
=libpam}/pam.d/common-account (100%)
  rename meta/recipes-extended/pam/{libpam-1.1.1 
=libpam}/pam.d/common-auth (100%)
  rename meta/recipes-extended/pam/{libpam-1.1.1 
=libpam}/pam.d/common-password (100%)
  rename meta/recipes-extended/pam/{libpam-1.1.1 
=libpam}/pam.d/common-session (100%)
  rename meta/recipes-extended/pam/{libpam-1.1.1 
=libpam}/pam.d/common-session-noninteractive (100%)
  rename meta/recipes-extended/pam/{libpam-1.1.1 =libpam}/pam.d/other (100%)
  rename meta/recipes-extended/pam/{libpam_1.1.1.bb =libpam_1.1.3.bb} (89%)
  delete mode 100644 meta/recipes-extended/sudo/files/autofoo.patch
  create mode 100644 meta/recipes-extended/sudo/files/libtool.patch
  delete mode 100644 meta/recipes-extended/sudo/files/noexec-link.patch
  delete mode 100644 meta/recipes-extended/sudo/files/nostrip.patch
  delete mode 100644 meta/recipes-extended/sudo/site/bit-32
  delete mode 100644 meta/recipes-extended/sudo/site/bit-64
  delete mode 100644 meta/recipes-extended/sudo/sudo_1.7.2p7.bb
  create mode 100644 meta/recipes-extended/sudo/sudo_1.7.4p4.bb
  delete mode 100644 meta/recipes-gnome/gnome/gnome-doc-utils_0.12.0.bb
  create mode 100644 meta/recipes-gnome/gnome/gnome-doc-utils_0.20.2.bb
  rename meta/recipes-gnome/gnome/{gnome-vfs-2.24.3 
=gnome-vfs-2.24.4}/gconftool-lossage.patch (100%)
  rename meta/recipes-gnome/gnome/{gnome-vfs-2.24.3 
=gnome-vfs-2.24.4}/gnome-vfs-no-kerberos.patch (100%)
  rename meta/recipes-gnome/gnome/{gnome-vfs_2.24.3.bb 
=gnome-vfs_2.24.4.bb} (100%)
  rename meta/recipes-gnome/gnome/{libart-lgpl_2.3.19.bb 
=libart-lgpl_2.3.21.bb} (86%)
  create mode 100644 
meta/recipes-gnome/librsvg/librsvg-2.32.0/doc_Makefile.patch
  rename meta/recipes-gnome/librsvg/{librsvg_2.26.3.bb 
=librsvg_2.32.0.bb} (97%)
  delete mode 100644 
meta/recipes-graphics/cairo/cairo-1.8.10/hardcoded_libtool.patch
  create mode 100644 meta/recipes-graphics/cairo/cairo_1.10.0.bb
  delete mode 100644 meta/recipes-graphics/cairo/cairo_1.8.10.bb
  rename meta/recipes-graphics/freetype/{freetype-2.3.12 
=freetype-2.4.3}/no-hardcode.patch (100%)
  rename meta/recipes-graphics/freetype/{freetype_2.3.12.bb 
=freetype_2.4.3.bb} (100%)
  rename meta/recipes-graphics/pango/{pango-1.28.0 
=pango-1.28.3}/no-tests.patch (100%)
  rename meta/recipes-graphics/pango/{pango_1.28.0.bb =pango_1.28.3.bb} 
(100%)
  create mode 100644 
meta/recipes-graphics/ttf-fonts/liberation-fonts_1.06.bb
  rename meta/recipes-graphics/xcb/{libxcb_1.6.bb =libxcb_1.7.bb} (100%)
  rename meta/recipes-graphics/xorg-font/{encodings_1.0.3.bb 
=encodings_1.0.4.bb} (94%)
  rename meta/recipes-graphics/xorg-font/{font-alias-1.0.2 
=font-alias-1.0.3}/fix_COPYING_1f8141a5e3b585dfccc748400b05c9c24b41e767.patch 
(100%)
  rename meta/recipes-graphics/xorg-font/{font-alias_1.0.2.bb 
=font-alias_1.0.3.bb} (100%)
  rename meta/recipes-graphics/xorg-font/{font-util_1.1.1.bb 
=font-util_1.2.0.bb} (89%)
  rename meta/recipes-graphics/xorg-lib/{libfontenc_1.0.5.bb 
=libfontenc_1.1.0.bb} (100%)
  rename meta/recipes-graphics/xorg-lib/{libice_1.0.6.bb 
=libice_1.0.7.bb} (100%)
  rename meta/recipes-graphics/xorg-lib/{libpciaccess_0.11.0.bb 
=libpciaccess_0.12.0.bb} (66%)
  rename meta/recipes-graphics/xorg-lib/{libsm_1.1.1.bb =libsm_1.2.0.bb} 
(74%)
  rename meta/recipes-graphics/xorg-lib/{libxau_1.0.5.bb 
=libxau_1.0.6.bb} (100%)
  rename meta/recipes-graphics/xorg-lib/{libxcomposite_0.4.1.bb 
=libxcomposite_0.4.3.bb} (79%)
  rename meta/recipes-graphics/xorg-lib/{libxcursor_1.1.10.bb 
=libxcursor_1.1.11.bb} (100%)
  rename meta/recipes-graphics/xorg-lib/{libxdamage_1.1.2.bb 
=libxdamage_1.1.3.bb} (73%)
  rename meta/recipes-graphics/xorg-lib/{libxdmcp_1.0.3.bb 
=libxdmcp_1.1.0.bb} (100%)
  rename meta/recipes-graphics/xorg-lib/{libxext_1.1.2.bb 
=libxext_1.2.0.bb} (77%)
  rename meta/recipes-graphics/xorg-lib/{libxfixes_4.0.4.bb 
=libxfixes_4.0.5.bb} (75%)
  rename meta/recipes-graphics/xorg-lib/{libxfont_1.4.2.bb 
=libxfont_1.4.3.bb} (100%)
  rename meta/recipes-graphics/xorg-lib/{libxft_2.1.14.bb 
=libxft_2.2.0.bb} (100%)
  rename meta/recipes-graphics/xorg-lib/{libxi_1.3.bb =libxi_1.4.0.bb} (77%)
  rename meta/recipes-graphics/xorg-lib/{libxinerama_1.1.bb 
=libxinerama_1.1.1.bb} (69%)
  rename meta/recipes-graphics/xorg-lib/{libxkbfile_1.0.6.bb 
=libxkbfile_1.0.7.bb} (100%)
  rename meta/recipes-graphics/xorg-lib/{libxmu_1.0.5.bb 
=libxmu_1.1.0.bb} (100%)
  rename meta/recipes-graphics/xorg-lib/{libxpm_3.5.7.bb 
=libxpm_3.5.9.bb} (76%)
  rename meta/recipes-graphics/xorg-lib/{libxrandr_1.3.0.bb 
=libxrandr_1.3.1.bb} (75%)
  rename meta/recipes-graphics/xorg-lib/{libxrender_0.9.5.bb 
=libxrender_0.9.6.bb} (76%)
  rename meta/recipes-graphics/xorg-lib/{libxres_1.0.4.bb 
=libxres_1.0.5.bb} (100%)
  rename meta/recipes-graphics/xorg-lib/{libxt_1.0.8.bb =libxt_1.0.9.bb} 
(90%)
  rename meta/recipes-graphics/xorg-lib/{libxtst_1.1.0.bb 
=libxtst_1.2.0.bb} (90%)
  rename meta/recipes-graphics/xorg-lib/{libxv_1.0.5.bb =libxv_1.0.6.bb} 
(100%)
  rename meta/recipes-graphics/xorg-lib/{libxxf86dga_1.1.1.bb 
=libxxf86dga_1.1.2.bb} (69%)
  rename meta/recipes-graphics/xorg-lib/{libxxf86vm_1.1.0.bb 
=libxxf86vm_1.1.1.bb} (71%)
  rename meta/recipes-graphics/xorg-lib/{xkeyboard-config_1.9.bb 
=xkeyboard-config_2.0.bb} (100%)
  rename meta/recipes-graphics/xorg-lib/{xtrans_1.2.5.bb 
=xtrans_1.2.6.bb} (79%)
  rename meta/recipes-graphics/xorg-proto/{xproto_7.0.17.bb 
=xproto_7.0.19.bb} (100%)
  create mode 100644 meta/recipes-graphics/xorg-util/imake_1.0.4.bb
  rename meta/recipes-graphics/xorg-util/{util-macros_1.10.0.bb 
=util-macros_1.11.0.bb} (81%)
  create mode 100644 
meta/recipes-kernel/blktrace/blktrace/blktrace-makefile.patch
  create mode 100644 meta/recipes-kernel/blktrace/blktrace_git.bb
  rename meta/recipes-kernel/lttng/{lttng-control_0.87.bb 
=lttng-control_0.88.bb} (79%)
  rename meta/recipes-kernel/lttng/{lttng-ust_0.7.bb =lttng-ust_0.8.bb} 
(90%)
  rename meta/recipes-support/liburcu/{liburcu_0.4.6.bb 
=liburcu_0.4.8.bb} (100%)



