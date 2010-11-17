Return-Path: <qing.he@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C00674C80FD4
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:46:47 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="574633020"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by orsmga002.jf.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PIdai-0007la-21
	for poky@yoctoproject.org; Wed, 17 Nov 2010 16:42:08 +0800
Message-Id: <1eb13dd18224a93678a046236d676db5e480d9cc.1289983189.git.qing.he@intel.com>
In-Reply-To: <cover.1289983189.git.qing.he@intel.com>
References: <cover.1289983189.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Wed, 17 Nov 2010 14:20:58 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 9/9] openssl: upgrade to version 0.9.8p
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
X-List-Received-Date: Wed, 17 Nov 2010 08:46:48 -0000

from 0.9.8o

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../configure-targets.patch                        |    0
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
 .../debian/valgrind.patch                          |    0
 .../debian/version-script.patch                    |    0
 .../shared-libs.patch                              |    0
 .../{openssl_0.9.8o.bb => openssl_0.9.8p.bb}       |    0
 24 files changed, 0 insertions(+), 0 deletions(-)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/configure-targets.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/ca.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/config-hurd.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/debian-targets.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/engines-path.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/kfreebsd-pipe.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/make-targets.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/man-dir.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/man-section.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/no-rpath.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/no-symbolic.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/perl-path.diff (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/pic.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/pkg-config.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/rc4-amd64.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/rehash-crt.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/rehash_pod.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/series (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/shared-lib-ext.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/stddef.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/valgrind.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/debian/version-script.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl-0.9.8o => openssl-0.9.8p}/shared-libs.patch (100%)
 rename meta/recipes-connectivity/openssl/{openssl_0.9.8o.bb => openssl_0.9.8p.bb} (100%)

diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/configure-targets.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/configure-targets.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/configure-targets.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/configure-targets.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/ca.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/ca.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/ca.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/ca.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/config-hurd.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/config-hurd.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/config-hurd.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/config-hurd.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/debian-targets.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/debian-targets.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/debian-targets.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/debian-targets.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/engines-path.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/engines-path.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/engines-path.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/engines-path.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/kfreebsd-pipe.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/kfreebsd-pipe.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/kfreebsd-pipe.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/kfreebsd-pipe.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/make-targets.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/make-targets.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/make-targets.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/make-targets.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/man-dir.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/man-dir.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/man-dir.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/man-dir.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/man-section.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/man-section.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/man-section.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/man-section.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/no-rpath.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/no-rpath.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/no-rpath.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/no-rpath.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/no-symbolic.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/no-symbolic.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/no-symbolic.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/no-symbolic.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/perl-path.diff b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/perl-path.diff
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/perl-path.diff
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/perl-path.diff
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/pic.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/pic.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/pic.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/pic.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/pkg-config.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/pkg-config.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/pkg-config.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/pkg-config.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/rc4-amd64.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/rc4-amd64.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/rc4-amd64.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/rc4-amd64.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/rehash-crt.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/rehash-crt.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/rehash-crt.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/rehash-crt.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/rehash_pod.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/rehash_pod.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/rehash_pod.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/rehash_pod.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/series b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/series
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/series
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/series
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/shared-lib-ext.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/shared-lib-ext.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/shared-lib-ext.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/shared-lib-ext.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/stddef.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/stddef.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/stddef.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/stddef.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/valgrind.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/valgrind.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/valgrind.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/valgrind.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/version-script.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/version-script.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/debian/version-script.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/debian/version-script.patch
diff --git a/meta/recipes-connectivity/openssl/openssl-0.9.8o/shared-libs.patch b/meta/recipes-connectivity/openssl/openssl-0.9.8p/shared-libs.patch
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl-0.9.8o/shared-libs.patch
rename to meta/recipes-connectivity/openssl/openssl-0.9.8p/shared-libs.patch
diff --git a/meta/recipes-connectivity/openssl/openssl_0.9.8o.bb b/meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
similarity index 100%
rename from meta/recipes-connectivity/openssl/openssl_0.9.8o.bb
rename to meta/recipes-connectivity/openssl/openssl_0.9.8p.bb
-- 
1.7.0


