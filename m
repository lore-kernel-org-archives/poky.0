Return-Path: <edwin.zhai@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 843384C80A74
	for <poky@yoctoproject.org>; Fri, 19 Nov 2010 05:21:23 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Nov 2010 03:21:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,222,1288594800"; d="scan'208";a="628377075"
Received: from gzhai-nhm.sh.intel.com (HELO localhost) ([10.239.36.111])
	by fmsmga002.fm.intel.com with ESMTP; 19 Nov 2010 03:21:22 -0800
Message-Id: <cover.1290165996.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 19 Nov 2010 19:26:36 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/17] *** [PULL] X apps/UX upgrade, Edwin, Nov19, 2010 ***
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
X-List-Received-Date: Fri, 19 Nov 2010 11:21:23 -0000

Saul,
This is upgrade for X apps and UX. Pls. review and pull.
Thanks,
edwin

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: gzhai/distro
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=gzhai/distro

Thanks,
    Zhai Edwin <edwin.zhai@intel.com>
---


Dongxiao Xu (1):
  matchbox-panel: Change function name "sync" to avoid conflict

Zhai Edwin (16):
  libgpg-error: Update to 1.9
  libassuan: Update to 2.0.1
  libuser: Update to 0.56.18
  xz: Update to 5.0.0
  ed: Update to 1.5
  avahi: Update to 0.6.28
  libowl-av: Update to svn r416
  tasks: Update to 0.18
  atk: Update to 1.32.0
  libsoup-2.4: Update to 2.32.1
  matchbox-panel-2: Update to svn r2111
  libgnome-keyring: Update to 2.32.0
  gnome-keyring: Update to 2.32.1
  libfm: Update to 0.1.14
  pcmanfm: Update to 0.9.8
  commit ae8dd607a154e8639d18014eb442f0fa48d55971

 .../conf/distro/include/distro_tracking_fields.inc |   82 ++++++++++----------
 .../conf/distro/include/poky-default-revisions.inc |    4 +-
 .../avahi/{avahi_0.6.27.bb => avahi_0.6.28.bb}     |    2 +-
 .../ed/{ed-1.4 => ed-1.5}/ed-1.2-build.patch       |    0
 meta/recipes-extended/ed/{ed_1.4.bb => ed_1.5.bb}  |    0
 .../disable-sgml-doc.patch                         |    0
 .../{libuser_0.56.16.bb => libuser_0.56.18.bb}     |    0
 .../xz/{xz_4.999.9beta.bb => xz_5.0.0.bb}          |    0
 ...e-keyring_2.31.4.bb => gnome-keyring_2.32.1.bb} |    0
 ...eyring_2.30.1.bb => libgnome-keyring_2.32.0.bb} |    0
 .../matchbox-panel-2/matchbox-panel-2_svn.bb       |    2 +-
 .../pcmanfm/{pcmanfm_0.9.7.bb => pcmanfm_0.9.8.bb} |    0
 .../pimlico/{tasks_0.16.bb => tasks_0.18.bb}       |    0
 .../atk/{atk_1.30.0.bb => atk_1.32.0.bb}           |    2 +-
 .../{libassuan_2.0.0.bb => libassuan_2.0.1.bb}     |    4 +-
 .../libfm/{libfm_0.1.12.bb => libfm_0.1.14.bb}     |    0
 .../pkgconfig.patch                                |    0
 .../{libgpg-error_1.8.bb => libgpg-error_1.9.bb}   |    0
 ...libsoup-2.4_2.31.2.bb => libsoup-2.4_2.32.1.bb} |    2 +-
 19 files changed, 49 insertions(+), 49 deletions(-)
 rename meta/recipes-connectivity/avahi/{avahi_0.6.27.bb => avahi_0.6.28.bb} (98%)
 rename meta/recipes-extended/ed/{ed-1.4 => ed-1.5}/ed-1.2-build.patch (100%)
 rename meta/recipes-extended/ed/{ed_1.4.bb => ed_1.5.bb} (100%)
 rename meta/recipes-extended/libuser/{libuser-0.56.16 => libuser-0.56.18}/disable-sgml-doc.patch (100%)
 rename meta/recipes-extended/libuser/{libuser_0.56.16.bb => libuser_0.56.18.bb} (100%)
 rename meta/recipes-extended/xz/{xz_4.999.9beta.bb => xz_5.0.0.bb} (100%)
 rename meta/recipes-gnome/gnome/{gnome-keyring_2.31.4.bb => gnome-keyring_2.32.1.bb} (100%)
 rename meta/recipes-gnome/gnome/{libgnome-keyring_2.30.1.bb => libgnome-keyring_2.32.0.bb} (100%)
 rename meta/recipes-sato/pcmanfm/{pcmanfm_0.9.7.bb => pcmanfm_0.9.8.bb} (100%)
 rename meta/recipes-sato/pimlico/{tasks_0.16.bb => tasks_0.18.bb} (100%)
 rename meta/recipes-support/atk/{atk_1.30.0.bb => atk_1.32.0.bb} (81%)
 rename meta/recipes-support/libassuan/{libassuan_2.0.0.bb => libassuan_2.0.1.bb} (72%)
 rename meta/recipes-support/libfm/{libfm_0.1.12.bb => libfm_0.1.14.bb} (100%)
 rename meta/recipes-support/libgpg-error/{libgpg-error-1.8 => libgpg-error-1.9}/pkgconfig.patch (100%)
 rename meta/recipes-support/libgpg-error/{libgpg-error_1.8.bb => libgpg-error_1.9.bb} (100%)
 rename meta/recipes-support/libsoup/{libsoup-2.4_2.31.2.bb => libsoup-2.4_2.32.1.bb} (86%)


