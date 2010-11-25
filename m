Return-Path: <lei.mei@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 56A454C80FA8
	for <poky@yoctoproject.org>; Thu, 25 Nov 2010 04:50:24 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Nov 2010 02:50:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,253,1288594800"; d="scan'208";a="861289258"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.112])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2010 02:50:22 -0800
Message-Id: <cover.1290681886.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Date: Thu, 25 Nov 2010 18:44:46 +0800
To: poky@yoctoproject.org
Subject: [PATCH 00/20]Add 20 recipes license file MD5sum information
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
X-List-Received-Date: Thu, 25 Nov 2010 10:50:24 -0000

This includes 20 recipes license file MD5sum update

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/chksum2
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/chksum2

Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (20):
  mpfr:Add license checksum and update the GPL information
  perl:Add license checksum to bb file
  prelink:Add license checksum to bb file
  python:Add license checksum to bb file
  python-dbus:Add license checksum to bb file
  python-imaging:Add license checksum to bb file
  python-pygobject:Add license checksum and update the GPL information
  python-pygtk:Add license checksum and update the GPL information
  python-pyrex:Add license checksum and update the License information
  python-scons:Add license checksum and update the GPL information
  quilt:Add license checksum and update the GPL information
  make:Add license checksum and update the GPL information
  lsof:Add license checksum to bb file
  dtc:Add license checksum and add the GPL information
  libtheora:Add license checksum to bb file
  libxml-simple-perl:Add license checksum to bb file
  mc:Add license checksum to bb file
  qmmp:Add license checksum to bb file
  base-files:Add license checksum to bb file
  flex:Add license checksum and add the license information

 meta/recipes-core/base-files/base-files_3.0.14.bb  |    2 +-
 meta/recipes-devtools/flex/flex_2.5.35.bb          |    3 ++-
 meta/recipes-devtools/make/make_3.82.bb            |    4 +++-
 .../perl/libxml-simple-perl_2.18.bb                |    1 +
 meta/recipes-devtools/perl/perl_5.8.8.bb           |    2 ++
 meta/recipes-devtools/prelink/prelink_git.bb       |    1 +
 meta/recipes-devtools/python/python-dbus_0.83.1.bb |    1 +
 .../python/python-imaging_1.1.7.bb                 |    1 +
 .../python/python-pygobject_2.21.1.bb              |    3 ++-
 .../recipes-devtools/python/python-pygtk_2.17.0.bb |    3 ++-
 meta/recipes-devtools/python/python-pyrex_0.9.9.bb |    3 ++-
 meta/recipes-devtools/python/python-scons_2.0.1.bb |    3 ++-
 meta/recipes-devtools/python/python_2.6.6.bb       |    2 +-
 meta/recipes-devtools/quilt/quilt_0.48.bb          |    3 ++-
 meta/recipes-extended/lsof/lsof_4.84.bb            |    2 +-
 meta/recipes-extended/mc/mc_4.7.3.bb               |    1 +
 meta/recipes-kernel/dtc/dtc_git.bb                 |    4 ++++
 .../libtheora/libtheora_1.1.1.bb                   |    2 +-
 meta/recipes-qt/qt-apps/qmmp_0.4.1.bb              |    1 +
 meta/recipes-support/mpfr/mpfr_3.0.0.bb            |    4 +++-
 20 files changed, 34 insertions(+), 12 deletions(-)


