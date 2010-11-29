Return-Path: <dongxiao.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C53F4C811F4
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 00:09:32 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Nov 2010 22:09:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="354271551"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.9])
	by azsmga001.ch.intel.com with ESMTP; 28 Nov 2010 22:09:32 -0800
Message-Id: <cover.1291011420.git.dongxiao.xu@intel.com>
From: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Mon, 29 Nov 2010 14:17:00 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/13][PULL] Fix LICENSE and LIC_FILES_CHKSUM info
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
X-List-Received-Date: Mon, 29 Nov 2010 06:09:33 -0000

Hi Saul,

This pull request updates some LICENSE information, also it add
LIC_FILES_CHKSUM if missing.

Besides, the last commit fixed [BUGID #531].

Please help to review and pull, thanks!

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: dxu4/license
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/license

Thanks,
    Dongxiao Xu <dongxiao.xu@intel.com>
---


Dongxiao Xu (13):
  linux-firmware: Update LIC_FILES_CHKSUM info
  clutter-gst: Update LICENSE and LIC_FILES_CHKSUM info
  gst-ffmpeg: Update LICENSE and LIC_FILES_CHKSUM info
  gst-fluendo-mp3: Update LICENSE and LIC_FILES_CHKSUM info
  gst-fluendo-mpegdemux: Fix LICENSE info
  gupnp: Update LICENSE and LIC_FILES_CHKSUM info
  libomxil: Fix LICENSE and LIC_FILES_CHKSUM info
  libsamplerate0: Fix LICENSE and LIC_FILES_CHKSUM info
  libtelepathy: Fix LICENSE and LIC_FILES_CHKSUM info
  pulseaudio: Fix LICENSE and LIC_FILES_CHKSUM info
  telepathy-idle: Fix LICENSE and LIC_FILES_CHKSUM info
  zeroconf: Fix LICENSE and LIC_FILES_CHKSUM info
  Use completion scheduler in rm_work.bbclass

 meta/classes/rm_work.bbclass                       |    1 +
 meta/recipes-connectivity/gupnp/gupnp_0.13.2.bb    |    4 +++-
 .../telepathy/libtelepathy_0.3.3.bb                |    4 +++-
 .../telepathy/telepathy-idle_0.1.6.bb              |    4 +++-
 meta/recipes-connectivity/zeroconf/zeroconf_0.9.bb |    4 +++-
 .../clutter/clutter-gst-1.0_git.bb                 |    3 +++
 meta/recipes-graphics/clutter/clutter-gst.inc      |    2 +-
 .../linux-firmware/linux-firmware_git.bb           |   13 +++++++++++++
 .../gstreamer/gst-ffmpeg_0.10.1.bb                 |    5 ++++-
 .../gstreamer/gst-fluendo-mp3_0.10.2.bb            |    3 +++
 .../gstreamer/gst-fluendo-mpegdemux_0.10.7.bb      |    4 ++++
 meta/recipes-multimedia/gstreamer/gst-fluendo.inc  |    1 -
 meta/recipes-multimedia/libomxil/libomxil_0.3.3.bb |    4 +++-
 .../libsamplerate/libsamplerate0_0.1.2.bb          |    4 +++-
 meta/recipes-multimedia/pulseaudio/pulseaudio.inc  |    6 +++++-
 15 files changed, 52 insertions(+), 10 deletions(-)


