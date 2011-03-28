Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 971B44C800AC
	for <poky@yoctoproject.org>; Mon, 28 Mar 2011 18:31:59 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Mar 2011 16:31:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,258,1299484800"; d="scan'208";a="672587512"
Received: from unknown (HELO localhost) ([10.255.16.103])
	by fmsmga002.fm.intel.com with ESMTP; 28 Mar 2011 16:31:58 -0700
Message-Id: <cover.1301354978.git.josh@linux.intel.com>
Old-Date: Tue, 29 Mar 2011 00:29:38 +0100
Date: Tue, 29 Mar 2011  0:31:52 +0100
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 0/4] Recipes for Clutter 1.6 v2
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
X-List-Received-Date: Mon, 28 Mar 2011 23:31:59 -0000

From: Joshua Lock <josh@linux.intel.com>

v2 of a series series of patches adds recipes for Clutter 1.6 and versions of
clutter-box2d and clutter-gst which build against it.

Pull URL: git://git.openembedded.org/openembedded-core-contrib
  Branch: josh/clutter
  Browse: http://git.openembedded.org/cgit.cgi/openembedded-core-contrib/log/?h=josh/clutter

Thanks,
    Joshua Lock <josh@linux.intel.com>
---


Joshua Lock (4):
  clutter: add 1.6.8
  clutter-gst: add 1.3.6 for use with clutter 1.6
  clutter-box2d: add version 0.10.0 for use with clutter 1.6
  clutter-gtk: remove duplicate gtk+ DEPENDS entry

 meta/recipes-graphics/clutter/clutter-1.6_1.6.8.bb |   25 +++++++++++++++++
 .../clutter/clutter-box2d-1.6_0.10.0.bb            |   20 ++++++++++++++
 meta/recipes-graphics/clutter/clutter-box2d.inc    |    4 +-
 .../clutter-box2d/fix-disable-introspection.patch  |   28 ++++++++++++++++++++
 meta/recipes-graphics/clutter/clutter-box2d_git.bb |    2 +-
 .../clutter/clutter-gst-1.6_1.3.6.bb               |   16 +++++++++++
 meta/recipes-graphics/clutter/clutter-gst.inc      |    2 +-
 .../clutter/clutter-gtk-1.4_git.bb                 |    2 +-
 8 files changed, 94 insertions(+), 5 deletions(-)
 create mode 100644 meta/recipes-graphics/clutter/clutter-1.6_1.6.8.bb
 create mode 100644 meta/recipes-graphics/clutter/clutter-box2d-1.6_0.10.0.bb
 create mode 100644 meta/recipes-graphics/clutter/clutter-box2d/fix-disable-introspection.patch
 create mode 100644 meta/recipes-graphics/clutter/clutter-gst-1.6_1.3.6.bb

-- 
1.7.4.1


