Return-Path: <saul.wold@intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6AECC4C81062
	for <poky@lists.pokylinux.org>; Mon, 22 Nov 2010 00:10:01 -0600 (CST)
Received: by pug.o-hand.com (Postfix)
	id 445BC12EC27F; Mon, 22 Nov 2010 00:47:18 -0600 (CST)
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by pug.o-hand.com (Postfix) with ESMTP id DA94E12EC27D
	for <poky@o-hand.com>; Mon, 22 Nov 2010 00:47:17 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 21 Nov 2010 22:10:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,234,1288594800"; d="scan'208";a="351597293"
Received: from unknown (HELO [10.255.13.171]) ([10.255.13.171])
	by azsmga001.ch.intel.com with ESMTP; 21 Nov 2010 22:09:59 -0800
Message-ID: <4CEA0938.4090703@intel.com>
Date: Sun, 21 Nov 2010 22:10:00 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "poky@o-hand.com" <poky@o-hand.com>
Subject: [PULL] Consolidated Distro Update
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
X-List-Received-Date: Mon, 22 Nov 2010 06:10:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Richard,

Please pull this set of distro updates.

Thanks
     Sau!


Pull URL: git://git.pokylinux.org/poky-contrib.git
    Branch: distro/master
    Browse: 
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Thanks,
      Saul Wold <Saul.Wold@intel.com>
---


Dongxiao Xu (7):
    pm-utils: Upgrade to version 1.4.1
    netbase: Upgrade to version 4.43
    mtd-utils: Upgrade to version 1.4.1
    msynctool: Upgrade to version 0.38
    polkit: Upgrade to version 0.99
    polkit-gnome: Upgrade to version 0.99
    distro_tracking: Update distro tracking fields for pm-utils, netbase,
      etc.

Saul Wold (3):
    libfm: rename patch directory for package update
    ed: fix patch and LIC_FILES_CHKSUM
    pimlico-tasks: remove patch

Scott Garman (2):
    tar: upgrade to version 1.25
    distro_tracking_fields.inc: update tar and openssh

Yu Ke (5):
    libdrm: upgrade from 2.4.21 to 2.4.22
    xf86-video-intel: upgrade from 2.12.0 to 2.13.0
    xserver-xf86-dri-lite: upgrade from 1.9.0 rc4 to 1.9.2
    xrandr: upgrade from 1.3.2 to 1.3.4
    pixman: upgrade from 0.18.2 to 0.20.0

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
    distro tracking: Updates for libgpg-error...

   .../conf/distro/include/distro_tracking_fields.inc |  153 
+++++++++++---------
   .../conf/distro/include/poky-default-revisions.inc |    4 +-
   .../distro/include/preferred-xorg-versions.inc     |   10 +-
   meta/recipes-bsp/pm-utils/pm-utils_1.3.0.bb        |   17 ---
   meta/recipes-bsp/pm-utils/pm-utils_1.4.1.bb        |   23 +++
   .../avahi/{avahi_0.6.27.bb =avahi_0.6.28.bb}     |    2 +-
   .../opensync/msynctool_0.37.bb                     |   14 --
   .../opensync/msynctool_0.38.bb                     |   20 +++
   .../{netbase =netbase-4.43}/colinux/interfaces   |    0
   .../{netbase =netbase-4.43}/epia/interfaces      |    0
   .../netbase/{netbase =netbase-4.43}/hosts        |    0
   .../netbase/{netbase =netbase-4.43}/init         |    0
   .../netbase/{netbase =netbase-4.43}/interfaces   |    0
   .../{netbase =netbase-4.43}/mtx-1/interfaces     |    0
   .../netbase/{netbase =netbase-4.43}/nfsroot      |    0
   .../{netbase =netbase-4.43}/nokia800/interfaces  |    0
   .../netbase/{netbase =netbase-4.43}/openmn/hosts |    0
   .../{netbase =netbase-4.43}/openmn/interfaces    |    0
   .../{netbase =netbase-4.43}/qemuarm/interfaces   |    0
   .../{netbase =netbase-4.43}/qemuarmv6/interfaces |    0
   .../{netbase =netbase-4.43}/qemuarmv7/interfaces |    0
   .../qemux86-64/interfaces                          |    0
   .../{netbase =netbase-4.43}/qemux86/interfaces   |    0
   .../{netbase =netbase-4.43}/tosa/interfaces      |    0
   .../{netbase =netbase-4.43}/wrt54/interfaces     |    0
   .../{netbase =netbase-4.43}/xxs1500/interfaces   |    0
   .../netbase/{netbase_4.41.bb =netbase_4.43.bb}   |    6 +-
   ...size-64-and-writesize-4096-as-normal-nand.patch |   24 ---
   .../add-exclusion-to-mkfs-jffs2-git-2.patch        |    0
   .../mtd/{mtd-utils_1.3.1.bb =mtd-utils_1.4.1.bb} |   13 ++-
   .../ed/{ed-1.4 =ed-1.5}/ed-1.2-build.patch       |   16 +--
   meta/recipes-extended/ed/{ed_1.4.bb =ed_1.5.bb}  |    4 +-
   .../disable-sgml-doc.patch                         |    0
   .../{libuser_0.56.16.bb =libuser_0.56.18.bb}     |    0
   meta/recipes-extended/polkit/polkit-gnome_0.96.bb  |   19 ---
   meta/recipes-extended/polkit/polkit-gnome_0.99.bb  |   27 ++++
   .../polkit/{polkit_0.96.bb =polkit_0.99.bb}      |   14 ++-
   meta/recipes-extended/tar/tar_1.23.bb              |    9 --
   meta/recipes-extended/tar/tar_1.25.bb              |    9 ++
   .../xz/{xz_4.999.9beta.bb =xz_5.0.0.bb}          |    0
   ...e-keyring_2.31.4.bb =gnome-keyring_2.32.1.bb} |    0
   ...eyring_2.30.1.bb =libgnome-keyring_2.32.0.bb} |    0
   .../installtests.patch                             |    0
   meta/recipes-graphics/drm/libdrm_2.4.21.bb         |    4 -
   meta/recipes-graphics/drm/libdrm_2.4.22.bb         |    7 +
   .../xorg-app/xrandr/resolve_symbol_clash.patch     |   33 -----
   .../xorg-app/{xrandr_1.3.2.bb =xrandr_1.3.4.bb}  |    3 +-
   ...-intel_2.12.0.bb =xf86-video-intel_2.13.0.bb} |    3 +
   .../{pixman_0.18.2.bb =pixman_0.20.0.bb}         |    3 +
   ....8.99.904.bb =xserver-xf86-dri-lite_1.9.2.bb} |    5 +-
   .../matchbox-panel-2/fix_sync_funcname.patch       |   34 -----
   .../matchbox-panel-2/matchbox-panel-2_svn.bb       |    5 +-
   .../pcmanfm/{pcmanfm_0.9.7.bb =pcmanfm_0.9.8.bb} |    0
   .../pimlico/tasks/fix_pre-GTK+2.16.patch           |   26 ----
   .../pimlico/{tasks_0.16.bb =tasks_0.18.bb}       |    0
   .../atk/{atk_1.30.0.bb =atk_1.32.0.bb}           |    2 +-
   .../{libassuan_2.0.0.bb =libassuan_2.0.1.bb}     |    4 +-
   .../add_missing.patch                              |    0
   .../libfm/{libfm_0.1.12.bb =libfm_0.1.14.bb}     |    0
   .../pkgconfig.patch                                |    0
   .../{libgpg-error_1.8.bb =libgpg-error_1.9.bb}   |    1 -
   ...libsoup-2.4_2.31.2.bb =libsoup-2.4_2.32.1.bb} |    2 +-
   62 files changed, 233 insertions(+), 283 deletions(-)
   delete mode 100644 meta/recipes-bsp/pm-utils/pm-utils_1.3.0.bb
   create mode 100644 meta/recipes-bsp/pm-utils/pm-utils_1.4.1.bb
   rename meta/recipes-connectivity/avahi/{avahi_0.6.27.bb 
=avahi_0.6.28.bb} (98%)
   delete mode 100644 meta/recipes-connectivity/opensync/msynctool_0.37.bb
   create mode 100644 meta/recipes-connectivity/opensync/msynctool_0.38.bb
   rename meta/recipes-core/netbase/{netbase 
=netbase-4.43}/colinux/interfaces (100%)
   rename meta/recipes-core/netbase/{netbase 
=netbase-4.43}/epia/interfaces (100%)
   rename meta/recipes-core/netbase/{netbase =netbase-4.43}/hosts (100%)
   rename meta/recipes-core/netbase/{netbase =netbase-4.43}/init (100%)
   rename meta/recipes-core/netbase/{netbase =netbase-4.43}/interfaces 
(100%)
   rename meta/recipes-core/netbase/{netbase 
=netbase-4.43}/mtx-1/interfaces (100%)
   rename meta/recipes-core/netbase/{netbase =netbase-4.43}/nfsroot (100%)
   rename meta/recipes-core/netbase/{netbase 
=netbase-4.43}/nokia800/interfaces (100%)
   rename meta/recipes-core/netbase/{netbase =netbase-4.43}/openmn/hosts 
(100%)
   rename meta/recipes-core/netbase/{netbase 
=netbase-4.43}/openmn/interfaces (100%)
   rename meta/recipes-core/netbase/{netbase 
=netbase-4.43}/qemuarm/interfaces (100%)
   rename meta/recipes-core/netbase/{netbase 
=netbase-4.43}/qemuarmv6/interfaces (100%)
   rename meta/recipes-core/netbase/{netbase 
=netbase-4.43}/qemuarmv7/interfaces (100%)
   rename meta/recipes-core/netbase/{netbase 
=netbase-4.43}/qemux86-64/interfaces (100%)
   rename meta/recipes-core/netbase/{netbase 
=netbase-4.43}/qemux86/interfaces (100%)
   rename meta/recipes-core/netbase/{netbase 
=netbase-4.43}/tosa/interfaces (100%)
   rename meta/recipes-core/netbase/{netbase 
=netbase-4.43}/wrt54/interfaces (100%)
   rename meta/recipes-core/netbase/{netbase 
=netbase-4.43}/xxs1500/interfaces (100%)
   rename meta/recipes-core/netbase/{netbase_4.41.bb =netbase_4.43.bb} (90%)
   delete mode 100644 
meta/recipes-devtools/mtd/mtd-utils-1.3.1/add-oobsize-64-and-writesize-4096-as-normal-nand.patch
   rename meta/recipes-devtools/mtd/{mtd-utils-1.3.1 
=mtd-utils-1.4.1}/add-exclusion-to-mkfs-jffs2-git-2.patch (100%)
   rename meta/recipes-devtools/mtd/{mtd-utils_1.3.1.bb 
=mtd-utils_1.4.1.bb} (61%)
   rename meta/recipes-extended/ed/{ed-1.4 =ed-1.5}/ed-1.2-build.patch (76%)
   rename meta/recipes-extended/ed/{ed_1.4.bb =ed_1.5.bb} (70%)
   rename meta/recipes-extended/libuser/{libuser-0.56.16 
=libuser-0.56.18}/disable-sgml-doc.patch (100%)
   rename meta/recipes-extended/libuser/{libuser_0.56.16.bb 
=libuser_0.56.18.bb} (100%)
   delete mode 100644 meta/recipes-extended/polkit/polkit-gnome_0.96.bb
   create mode 100644 meta/recipes-extended/polkit/polkit-gnome_0.99.bb
   rename meta/recipes-extended/polkit/{polkit_0.96.bb =polkit_0.99.bb} 
(51%)
   delete mode 100644 meta/recipes-extended/tar/tar_1.23.bb
   create mode 100644 meta/recipes-extended/tar/tar_1.25.bb
   rename meta/recipes-extended/xz/{xz_4.999.9beta.bb =xz_5.0.0.bb} (100%)
   rename meta/recipes-gnome/gnome/{gnome-keyring_2.31.4.bb 
=gnome-keyring_2.32.1.bb} (100%)
   rename meta/recipes-gnome/gnome/{libgnome-keyring_2.30.1.bb 
=libgnome-keyring_2.32.0.bb} (100%)
   rename meta/recipes-graphics/drm/{libdrm-2.4.21 
=libdrm-2.4.22}/installtests.patch (100%)
   delete mode 100644 meta/recipes-graphics/drm/libdrm_2.4.21.bb
   create mode 100644 meta/recipes-graphics/drm/libdrm_2.4.22.bb
   delete mode 100644 
meta/recipes-graphics/xorg-app/xrandr/resolve_symbol_clash.patch
   rename meta/recipes-graphics/xorg-app/{xrandr_1.3.2.bb 
=xrandr_1.3.4.bb} (61%)
   rename meta/recipes-graphics/xorg-driver/{xf86-video-intel_2.12.0.bb 
=xf86-video-intel_2.13.0.bb} (67%)
   rename meta/recipes-graphics/xorg-lib/{pixman_0.18.2.bb 
=pixman_0.20.0.bb} (80%)
   rename 
meta/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.8.99.904.bb 
=xserver-xf86-dri-lite_1.9.2.bb} (76%)
   delete mode 100644 
meta/recipes-sato/matchbox-panel-2/matchbox-panel-2/fix_sync_funcname.patch
   rename meta/recipes-sato/pcmanfm/{pcmanfm_0.9.7.bb =pcmanfm_0.9.8.bb} 
(100%)
   delete mode 100644 meta/recipes-sato/pimlico/tasks/fix_pre-GTK+2.16.patch
   rename meta/recipes-sato/pimlico/{tasks_0.16.bb =tasks_0.18.bb} (100%)
   rename meta/recipes-support/atk/{atk_1.30.0.bb =atk_1.32.0.bb} (81%)
   rename meta/recipes-support/libassuan/{libassuan_2.0.0.bb 
=libassuan_2.0.1.bb} (72%)
   rename meta/recipes-support/libfm/{libfm-0.1.12 
=libfm-0.1.14}/add_missing.patch (100%)
   rename meta/recipes-support/libfm/{libfm_0.1.12.bb =libfm_0.1.14.bb} 
(100%)
   rename meta/recipes-support/libgpg-error/{libgpg-error-1.8 
=libgpg-error-1.9}/pkgconfig.patch (100%)
   rename meta/recipes-support/libgpg-error/{libgpg-error_1.8.bb 
=libgpg-error_1.9.bb} (96%)
   rename meta/recipes-support/libsoup/{libsoup-2.4_2.31.2.bb 
=libsoup-2.4_2.32.1.bb} (86%)



