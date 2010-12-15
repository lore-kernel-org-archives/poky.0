Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1C9A24C80FAD
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:27:53 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Dec 2010 08:27:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="687432806"
Received: from unknown (HELO localhost) ([10.255.16.78])
	by orsmga001.jf.intel.com with ESMTP; 15 Dec 2010 08:27:51 -0800
Message-Id: <cover.1292430240.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Wed, 15 Dec 2010 16:24:00 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 00/14] [Laverne 4.0] Fixes for building on Fedora 14
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
X-List-Received-Date: Wed, 15 Dec 2010 16:27:53 -0000

Make 3.82 in Fedora 14 fixes some bugs in the parser which happen to have
been relied upon behaviour in many projects Makefiles.

With this patch series I am able to build poky-image-sdk and meta-toolchain
for qemuppc on a Fedora 14 x86_64 with the default SELINUX policy enabled.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/laverne
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/laverne

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (12):
  eglibc: fix build of eglibc-initial for make 3.82
  busybox: import upstream patch for make 3.82
  procps: fix for build against make 3.82
  busybox: additional fixes for Make 3.82
  linux-libc-headers: fix for Make 3.82
  gstreamer: fix to comply with make 3.82's stricter parser
  gst-plugins: fix for make 3.82
  libowl-av: fix for Make 3.82
  owl-video-widget: fix Makefile for super strict make 3.82
  dates: fix for Make 3.82
  contacts: fix for make 3.82
  web-webkit: fix for make 3.82

Paul Eggleton (2):
  openssl-native: disable execstack flag to prevent problems with
    SELinux
  qemu: fix failure to find zlib header files during configure

 meta/recipes-connectivity/openssl/openssl.inc      |    6 ++-
 .../recipes-connectivity/openssl/openssl_0.9.8o.bb |    2 +-
 .../busybox/busybox-1.16.2/make-382-fix.patch      |   56 ++++++++++++++++++++
 meta/recipes-core/busybox/busybox_1.16.2.bb        |    3 +-
 .../eglibc/eglibc-2.12/fix-for-make-3.82.diff      |   25 +++++++++
 meta/recipes-core/eglibc/eglibc_2.12.bb            |    5 +-
 .../qemu/qemu-0.12.4/fix-configure-checks.patch    |   20 +++++++
 meta/recipes-devtools/qemu/qemu_0.12.4.bb          |    3 +-
 .../procps-3.2.7/procps-3.2.8+gmake-3.82.patch     |   17 ++++++
 meta/recipes-extended/procps/procps_3.2.7.bb       |    3 +-
 .../connector-msg-size-fix.patch                   |    4 +-
 .../linux-libc-headers/make-382.patch              |   36 +++++++++++++
 .../linux-libc-headers_2.6.34.bb                   |    7 ++-
 .../gstreamer/gst-plugins-bad_0.10.19.bb           |    2 +-
 .../gstreamer/gst-plugins-base_0.10.29.bb          |    2 +-
 .../gstreamer/gst-plugins-good_0.10.23.bb          |    2 +-
 .../gstreamer/gst-plugins-ugly_0.10.15.bb          |    2 +-
 meta/recipes-multimedia/gstreamer/gst-plugins.inc  |    5 ++-
 .../gstreamer/gst-plugins/make-382.patch           |   25 +++++++++
 .../gstreamer/gstreamer-0.10.29/make-382.patch     |   32 +++++++++++
 .../gstreamer/gstreamer_0.10.29.bb                 |    7 ++-
 .../owl-video-widget/libowl-av/make-382.patch      |   11 ++++
 .../recipes-sato/owl-video-widget/libowl-av_svn.bb |    5 +-
 .../owl-video-widget/owl-video/make-382.patch      |   15 +++++
 .../recipes-sato/owl-video-widget/owl-video_svn.bb |    3 +-
 meta/recipes-sato/pimlico/contacts/make-382.patch  |   14 +++++
 meta/recipes-sato/pimlico/contacts_git.bb          |    5 +-
 meta/recipes-sato/pimlico/dates/make-382.patch     |   16 ++++++
 meta/recipes-sato/pimlico/dates_git.bb             |    5 +-
 meta/recipes-sato/web/web-webkit/make-382.patch    |   15 +++++
 meta/recipes-sato/web/web-webkit_svn.bb            |    5 +-
 31 files changed, 329 insertions(+), 29 deletions(-)
 create mode 100644 meta/recipes-core/busybox/busybox-1.16.2/make-382-fix.patch
 create mode 100644 meta/recipes-core/eglibc/eglibc-2.12/fix-for-make-3.82.diff
 create mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/fix-configure-checks.patch
 create mode 100644 meta/recipes-extended/procps/procps-3.2.7/procps-3.2.8+gmake-3.82.patch
 create mode 100644 meta/recipes-kernel/linux-libc-headers/linux-libc-headers/make-382.patch
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch
 create mode 100644 meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/make-382.patch
 create mode 100644 meta/recipes-sato/owl-video-widget/libowl-av/make-382.patch
 create mode 100644 meta/recipes-sato/owl-video-widget/owl-video/make-382.patch
 create mode 100644 meta/recipes-sato/pimlico/contacts/make-382.patch
 create mode 100644 meta/recipes-sato/pimlico/dates/make-382.patch
 create mode 100644 meta/recipes-sato/web/web-webkit/make-382.patch

-- 
1.7.3.3


