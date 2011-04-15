Return-Path: <qing.he@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E3E344C81001
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 05:24:12 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Apr 2011 03:23:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,217,1301900400"; d="scan'208";a="629148657"
Received: from qhe2-db.sh.intel.com ([10.239.13.48])
	by orsmga002.jf.intel.com with ESMTP; 15 Apr 2011 03:23:52 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1QAg4a-0006GG-DT; Fri, 15 Apr 2011 18:16:20 +0800
Message-Id: <cover.1302862307.git.qing.he@intel.com>
Old-Date: Fri, 15 Apr 2011 18:11:47 +0800
Date: Fri, 15 Apr 2011 18:16:20 +0800
To: poky@yoctoproject.org
From: Qing He <qing.he@intel.com>
Subject: [PATCH 0/4] security fixes
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
X-List-Received-Date: Fri, 15 Apr 2011 10:24:13 -0000

From: Qing He <qing.he@intel.com>

This patch set upgrades several recipes to address the following CVEs:

   libexif: CVE-2007-6351, CVE-2007-6352, CVE-2009-3895
   libxml2: CVE-2010-4008
   openssl: CVE-2010-4180, CVE-2010-4252, CVE-2010-0014
   rsync: CVE-2011-1097

they are targeting for 1.0 point release


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/cve
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/cve

Thanks,
    Qing He <qing.he@intel.com>
---


Qing He (4):
  libexif: upgrade to 0.6.20
  libxml2: upgrade to version 2.7.8
  openssl: upgrade to version 0.9.8r
  rsync: upgrade to version 3.0.8

 .../configure-targets.patch                        |    1 +
 .../debian/ca.patch                                |    0
 .../debian/config-hurd.patch                       |    0
 .../debian/debian-targets.patch                    |    0
 .../debian/engines-path.patch                      |    0
 .../debian/kfreebsd-pipe.patch                     |    0
 .../debian/make-targets.patch                      |    0
 .../debian/man-dir.patch                           |    0
 .../debian/man-section.patch                       |    0
 .../debian/no-rpath.patch                          |    0
 .../debian/no-symbolic.patch                       |    0
 .../debian/perl-path.diff                          |    0
 .../debian/pic.patch                               |    0
 .../debian/pkg-config.patch                        |    0
 .../debian/rc4-amd64.patch                         |    0
 .../debian/rehash-crt.patch                        |    0
 .../debian/rehash_pod.patch                        |    0
 .../debian/series                                  |    0
 .../debian/shared-lib-ext.patch                    |    0
 .../debian/stddef.patch                            |    0
 .../debian/version-script.patch                    |    0
 .../parallel-make-fix.patch                        |    2 ++
 .../shared-libs.patch                              |    2 ++
 meta/recipes-connectivity/openssl/openssl.inc      |    2 +-
 .../{openssl_0.9.8p.bb => openssl_0.9.8r.bb}       |    6 +++---
 .../recipes-core/libxml/libxml2/libxml-64bit.patch |    2 ++
 meta/recipes-core/libxml/libxml2_2.7.7.bb          |    6 ------
 meta/recipes-core/libxml/libxml2_2.7.8.bb          |    6 ++++++
 .../rsync/{rsync_3.0.7.bb => rsync_3.0.8.bb}       |    6 +++---
 .../{libexif_0.6.16.bb => libexif_0.6.20.bb}       |    6 +++---
 30 files changed, 23 insertions(+), 16 deletions(-)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/configure-targets.patch (97%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/ca.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/config-hurd.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/debian-targets.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/engines-path.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/kfreebsd-pipe.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/make-targets.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/man-dir.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/man-section.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/no-rpath.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/no-symbolic.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/perl-path.diff (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/pic.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/pkg-config.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/rc4-amd64.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/rehash-crt.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/rehash_pod.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/series (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/shared-lib-ext.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/stddef.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/debian/version-script.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/parallel-make-fix.patch (95%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8p => openssl-0.9.8r}/shared-libs.patch (97%)
 rename meta/recipes-connectivity/openssl/{openssl_0.9.8p.bb => openssl_0.9.8r.bb} (86%)
 delete mode 100644 meta/recipes-core/libxml/libxml2_2.7.7.bb
 create mode 100644 meta/recipes-core/libxml/libxml2_2.7.8.bb
 rename meta/recipes-devtools/rsync/{rsync_3.0.7.bb => rsync_3.0.8.bb} (71%)
 rename meta/recipes-support/libexif/{libexif_0.6.16.bb => libexif_0.6.20.bb} (61%)


