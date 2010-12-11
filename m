Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 39C8D4C810AC
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 13:35:48 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Dec 2010 11:35:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,329,1288594800"; d="scan'208";a="867145622"
Received: from unknown (HELO localhost) ([10.255.13.46])
	by fmsmga001.fm.intel.com with ESMTP; 11 Dec 2010 11:35:47 -0800
Message-Id: <cover.1292096034.git.sgw@linux.intel.com>
From: Saul Wold <sgw@linux.intel.com>
Date: Sat, 11 Dec 2010 11:33:54 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <Saul.Wold@intel.com>
Subject: [PATCH 00/13] LIC_FILES_CHKSUM Updates (almost last set)
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
X-List-Received-Date: Sat, 11 Dec 2010 19:35:48 -0000

This is one of the last batches of recipes updates for LIC_FILES_CHKSUM.
After this there are less than 5 recipes that need Licenses verified
before they can be added and we can enable the check as fatal

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: distro/stage
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/stage

Thanks,
    Saul Wold <sgw@linux.intel.com>
---


Saul Wold (13):
  meta-ide-suppport: Add LIC_FILES_CHKSUM
  patch: Add LIC_FILES_CHKSUM
  rpm: Add LIC_FILES_CHKSUM
  gtkhtml2: Add LIC_FILES_CHKSUM
  clutter: Add LIC_FILES_CHKSUM
  table: Add LIC_FILES_CHKSUM
  mutter: Add LIC_FILES_CHKSUM
  task-poky-clutter: Add LIC_FILES_CHKSUM
  libxscrnsaver: Add LIC_FILES_CHKSUM
  gst-meta-base: Add LIC_FILES_CHKSUM
  libexif: Add LIC_FILES_CHKSUM
  libsoup: Add LIC_FILES_CHKSUM
  clutter-box2d: Add LIC_FILES_CHKSUM

 meta/recipes-core/meta/meta-ide-support.bb         |    3 +++
 meta/recipes-devtools/patch/patch_2.5.9.bb         |    4 +++-
 meta/recipes-devtools/rpm/rpm_5.1.10.bb            |    2 ++
 meta/recipes-gnome/gtkhtml2/gtkhtml2_svn.bb        |    3 ++-
 meta/recipes-graphics/clutter/clutter-1.0_git.bb   |    1 +
 meta/recipes-graphics/clutter/clutter-box2d.inc    |    2 +-
 meta/recipes-graphics/clutter/clutter-box2d_git.bb |    2 ++
 meta/recipes-graphics/clutter/clutter_git.bb       |    4 +++-
 meta/recipes-graphics/clutter/table.inc            |    2 +-
 meta/recipes-graphics/clutter/table_git.bb         |    3 +++
 meta/recipes-graphics/mutter/mutter_2.28.1.bb      |    4 +++-
 meta/recipes-graphics/mutter/mutter_git.bb         |    2 ++
 meta/recipes-graphics/tasks/task-poky-clutter.bb   |    3 +++
 .../xorg-lib/libxscrnsaver_1.2.1.bb                |    4 +++-
 .../gstreamer/gst-meta-base_0.10.bb                |    3 +++
 meta/recipes-support/libexif/libexif_0.6.16.bb     |    3 ++-
 meta/recipes-support/libsoup/libsoup_2.2.100.bb    |    3 ++-
 17 files changed, 39 insertions(+), 9 deletions(-)


