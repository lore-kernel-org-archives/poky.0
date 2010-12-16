Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D68014C80FA8
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 10:33:14 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2010 08:33:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,356,1288594800"; d="scan'208";a="584369619"
Received: from unknown (HELO localhost) ([10.255.16.75])
	by orsmga002.jf.intel.com with ESMTP; 16 Dec 2010 08:32:58 -0800
Message-Id: <cover.1292516982.git.josh@linux.intel.com>
From: Joshua Lock <josh@linux.intel.com>
Date: Thu, 16 Dec 2010 16:29:42 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 0/8] WIP Make 3.82 fixes for master
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
X-List-Received-Date: Thu, 16 Dec 2010 16:33:15 -0000

Inspired by my recent Laverne patch set this pull request contains patches
towards making Poky master buildable with GNU Make 3.82.

There are still some issues but since I'm away from my multi-core
build machine I thought it best to share the patches, hopefully they are
useful to others and I can finish up the work tomorrow/next week.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: josh/make-382
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/make-382

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (8):
  gstreamer: fix to comply with make 3.82's stricter parser
  libowl-av: fix for Make 3.82
  owl-video-widget: fix Makefile for super strict make 3.82
  web-webkit: fix for make 3.82
  dates: fix for Make 3.82
  contacts: fix for make 3.82
  gst-plugins: fix for make 3.82
  gst-plugins-base: add avahi to DEPENDS

 .../gstreamer/gst-plugins-bad_0.10.20.bb           |    2 +-
 .../gstreamer/gst-plugins-base_0.10.30.bb          |    4 +-
 .../gstreamer/gst-plugins-good_0.10.25.bb          |    2 +-
 .../gstreamer/gst-plugins-ugly_0.10.16.bb          |    2 +-
 meta/recipes-multimedia/gstreamer/gst-plugins.inc  |    5 ++-
 .../gstreamer/gst-plugins/make-382.patch           |   25 +++++++++++++++
 .../gstreamer/gstreamer-0.10.30/make-382.patch     |   32 ++++++++++++++++++++
 .../gstreamer/gstreamer_0.10.30.bb                 |    7 ++--
 .../owl-video-widget/libowl-av/make-382.patch      |   11 +++++++
 .../recipes-sato/owl-video-widget/libowl-av_svn.bb |    5 ++-
 .../owl-video-widget/owl-video/make-382.patch      |   15 +++++++++
 .../recipes-sato/owl-video-widget/owl-video_svn.bb |    3 +-
 meta/recipes-sato/pimlico/contacts/make-382.patch  |   14 ++++++++
 meta/recipes-sato/pimlico/contacts_git.bb          |    5 ++-
 meta/recipes-sato/pimlico/dates/make-382.patch     |   16 ++++++++++
 meta/recipes-sato/pimlico/dates_git.bb             |    5 ++-
 meta/recipes-sato/web/web-webkit/make-382.patch    |   15 +++++++++
 meta/recipes-sato/web/web-webkit_svn.bb            |    5 ++-
 18 files changed, 155 insertions(+), 18 deletions(-)
 create mode 100644 meta/recipes-multimedia/gstreamer/gst-plugins/make-382.patch
 create mode 100644 meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/make-382.patch
 create mode 100644 meta/recipes-sato/owl-video-widget/libowl-av/make-382.patch
 create mode 100644 meta/recipes-sato/owl-video-widget/owl-video/make-382.patch
 create mode 100644 meta/recipes-sato/pimlico/contacts/make-382.patch
 create mode 100644 meta/recipes-sato/pimlico/dates/make-382.patch
 create mode 100644 meta/recipes-sato/web/web-webkit/make-382.patch

-- 
1.7.3.3


