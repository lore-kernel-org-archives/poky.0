Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D12DB4C811EC
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 07:45:13 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Jan 2011 05:45:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,272,1291622400"; d="scan'208";a="643220771"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.31])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jan 2011 05:45:06 -0800
Message-Id: <cover.1294148490.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Old-Date: Tue, 4 Jan 2011 21:41:30 +0800
Date: Tue, 04 Jan 2011 21:50:13 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/7] [PULL] X apps & base, edwin, Jan4, 2011
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
X-List-Received-Date: Tue, 04 Jan 2011 13:45:14 -0000

Saul,
These are upgrades for some X apps and base. Pls. help to review.

Beecrypt is for 2nd pull request, it works well on target arm / host x86
without "--with-arch".  A hack was added in apr's do_configure_append to handle
some autoconf's output, that is, take place of "top_buildir" by "apr_builddir",
because apr-util just reuse these files.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/upgrade01
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/upgrade01

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Zhai Edwin (7):
  beecrypt: Update to 4.2.1
  apr: Update to 1.4.2
  apr-util: Update to 1.3.10
  xvinfo: Upgrade to 1.1.1
  libcanberra: Upgrade to 0.26
  metacity: Upgrade to 2.30.3
  matchbox-wm-2: Upgrade to svn r2106

 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 .../gnome/metacity/crosscompile.patch              |   60 ++++++++++++++++++++
 .../{metacity_2.22.0.bb => metacity_2.30.3.bb}     |   14 +++-
 .../xorg-app/{xvinfo_1.0.2.bb => xvinfo_1.1.1.bb}  |    4 +-
 .../pulseaudio/libcanberra/autoconf_version.patch  |   38 ------------
 .../pulseaudio/libcanberra/nofallbackfix.patch     |   16 -----
 .../{libcanberra_0.10.bb => libcanberra_0.26.bb}   |   10 +--
 .../apr/{apr-util_1.3.4.bb => apr-util_1.3.10.bb}  |   12 +++-
 meta/recipes-support/apr/apr/buildconf_fix.patch   |   25 ++++++++
 meta/recipes-support/apr/apr/cleanup.patch         |    9 +--
 .../apr/{apr_1.3.3.bb => apr_1.4.2.bb}             |   23 ++++++--
 .../beecrypt/beecrypt/disable-icu-check.patch      |   12 ++--
 .../beecrypt/beecrypt/fix-security.patch           |   51 +++++++++--------
 .../recipes-support/beecrypt/beecrypt/x64fix.patch |   23 --------
 .../{beecrypt_4.1.2.bb => beecrypt_4.2.1.bb}       |   13 ++--
 15 files changed, 171 insertions(+), 141 deletions(-)
 create mode 100644 meta/recipes-gnome/gnome/metacity/crosscompile.patch
 rename meta/recipes-gnome/gnome/{metacity_2.22.0.bb => metacity_2.30.3.bb} (53%)
 rename meta/recipes-graphics/xorg-app/{xvinfo_1.0.2.bb => xvinfo_1.1.1.bb} (58%)
 delete mode 100644 meta/recipes-multimedia/pulseaudio/libcanberra/autoconf_version.patch
 delete mode 100644 meta/recipes-multimedia/pulseaudio/libcanberra/nofallbackfix.patch
 rename meta/recipes-multimedia/pulseaudio/{libcanberra_0.10.bb => libcanberra_0.26.bb} (73%)
 rename meta/recipes-support/apr/{apr-util_1.3.4.bb => apr-util_1.3.10.bb} (72%)
 create mode 100644 meta/recipes-support/apr/apr/buildconf_fix.patch
 rename meta/recipes-support/apr/{apr_1.3.3.bb => apr_1.4.2.bb} (60%)
 delete mode 100644 meta/recipes-support/beecrypt/beecrypt/x64fix.patch
 rename meta/recipes-support/beecrypt/{beecrypt_4.1.2.bb => beecrypt_4.2.1.bb} (56%)


