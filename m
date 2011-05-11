Return-Path: <ke.yu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3072B4C80A98
	for <poky@yoctoproject.org>; Wed, 11 May 2011 04:13:49 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 May 2011 02:13:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,352,1301900400"; d="scan'208";a="745605981"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.187])
	by orsmga001.jf.intel.com with ESMTP; 11 May 2011 02:13:39 -0700
Message-Id: <cover.1305105317.git.ke.yu@intel.com>
Old-Date: Wed, 11 May 2011 17:15:17 +0800
Date: Wed, 11 May 2011 17:19:55 +0800
To: poky@yoctoproject.org
CC: 
From: Yu Ke <ke.yu@intel.com>
Subject: [PATCH 0/8] Update patch upstream-status
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
X-List-Received-Date: Wed, 11 May 2011 09:13:49 -0000

From: Yu Ke <ke.yu@intel.com>

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: kyu3/patch-status-05-11
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/patch-status-05-11

Thanks,
    Yu Ke <ke.yu@intel.com>
---


Yu Ke (8):
  iputils: update patch Upstream-Status
  mktemp: update patch Upstream-Status
  xinetd: update Upstream-Status
  libdrm: update patch Upstream-Status
  qemugl: update patch Upstream-Status
  x11-common: update patch Upstream-Status
  xorg-app: update patch Upstream-Status
  xorg-driver: update patch Upstream-Status

 .../files/debian/add-icmp-return-codes.diff        |    2 ++
 .../iputils/files/debian/fix-arping-timeouts.diff  |    2 ++
 .../files/debian/fix-dead-host-ping-stats.diff     |    2 ++
 .../iputils/files/debian/targets.diff              |    2 ++
 .../iputils/files/debian/use_gethostbyname2.diff   |    2 ++
 .../mktemp/files/disable-strip.patch               |    2 ++
 ...vices-from-inetd.conf-if-a-service-with-t.patch |    2 ++
 ...arious-fixes-from-the-previous-maintainer.patch |    2 ++
 ...uld-be-able-to-listen-on-IPv6-even-in-ine.patch |    2 ++
 .../drm/libdrm-2.4.25/installtests.patch           |    2 +-
 .../mesa/qemugl/remove-x11r6-lib-dir.patch         |    2 ++
 meta/recipes-graphics/mesa/qemugl/versionfix.patch |    2 ++
 .../x11-common/x11-common/gplv2-license.patch      |    2 ++
 .../xserver-nodm-init/gplv2-license.patch          |    2 ++
 .../xorg-app/xdpyinfo/disable-xkb.patch            |    2 ++
 .../xorg-app/xset/disable-xkb.patch                |    2 ++
 .../xf86-video-omapfb/omap-blacklist-tv-out.patch  |    4 +++-
 .../xf86-video-omapfb/omap-force-plain-mode.patch  |    2 ++
 .../omap-revert-set-CRTC-limit.patch               |    2 ++
 .../omap-revert-set-virtual-size.patch             |    2 ++
 .../xorg-driver/xf86-video-omapfb/omapfb-neon.diff |    2 ++
 21 files changed, 42 insertions(+), 2 deletions(-)


