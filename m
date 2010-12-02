Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 940E24C80052
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 19:17:13 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Dec 2010 17:17:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,285,1288594800"; d="scan'208";a="355836085"
Received: from kalpana-mobl3.amr.corp.intel.com (HELO [10.24.143.186])
	([10.24.143.186])
	by azsmga001.ch.intel.com with ESMTP; 01 Dec 2010 17:17:13 -0800
Message-ID: <4CF6F396.9030805@linux.intel.com>
Date: Wed, 01 Dec 2010 17:17:10 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: [PATCH] Remove gstreamer and libtheora in favor of those in the base poky meta
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
X-List-Received-Date: Thu, 02 Dec 2010 01:17:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Any objections?

From 3018332dc69843a9e4dbd6c11538f66d5dea9bf6 Mon Sep 17 00:00:00 2001
From: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 1 Dec 2010 15:39:03 -0800
Subject: [PATCH] Remove gstreamer and libtheora in favor of those in the base poky meta

The demo layer needed newer versions of gstreamer and libtheora than those
provided by the base poky meta layer. Now that those have been updated,
these can be removed. This also addresses a bug in gst-plugins-base where
-DTREMOR caused the build to fail (possibly only on very parallel builds).
The poky meta version of gstreamer removes the -DTREMOR directive via a
patch.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 recipes-multimedia/gstreamer/gst-meta-base_0.10.bb |   56 ---
 .../gstreamer/gst-plugins-bad_0.10.20.bb           |   24 -
 .../gstreamer/gst-plugins-base_0.10.30.bb          |   22 -
 .../gstreamer/gst-plugins-good_0.10.25.bb          |   19 -
 .../gstreamer/gst-plugins-ugly_0.10.16.bb          |   19 -
 recipes-multimedia/gstreamer/gst-plugins.inc       |   41 --
 .../gstreamer/gstreamer-0.10.30/check_fix.patch    |   17 -
 .../gst-inspect-check-error.patch                  |   14 -
 .../gstreamer-0.10.30/gstregistrybinary.c          |  487 --------------------
 .../gstreamer-0.10.30/gstregistrybinary.h          |  194 --------
 recipes-multimedia/gstreamer/gstreamer_0.10.30.bb  |   30 --
 .../libtheora/libtheora-1.1.1/no-docs.patch        |   13 -
 recipes-multimedia/libtheora/libtheora.inc         |   18 -
 recipes-multimedia/libtheora/libtheora_1.1.1.bb    |    9 -

 14 files changed, 0 insertions(+), 963 deletions(-)

 delete mode 100644 recipes-multimedia/gstreamer/gst-meta-base_0.10.bb
 delete mode 100644 recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb
 delete mode 100644 recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
 delete mode 100644 recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb
 delete mode 100644 recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.16.bb
 delete mode 100644 recipes-multimedia/gstreamer/gst-plugins.inc
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer-0.10.30/check_fix.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer-0.10.30/gst-inspect-check-error.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer-0.10.30/gstregistrybinary.c
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer-0.10.30/gstregistrybinary.h
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
 delete mode 100644 recipes-multimedia/libtheora/libtheora-1.1.1/no-docs.patch
 delete mode 100644 recipes-multimedia/libtheora/libtheora.inc
 delete mode 100644 recipes-multimedia/libtheora/libtheora_1.1.1.bb


Note: I've snipped the patch as it is strictly a removal of the above files.

-- 
Darren Hart
Yocto Linux Kernel

