Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 69F9C4C80FD4
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:47:05 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Nov 2010 00:47:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,210,1288594800"; d="scan'208";a="858463529"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2010 00:46:46 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>) id 1PIdai-0007lI-0p
	for poky@yoctoproject.org; Wed, 17 Nov 2010 16:42:08 +0800
Message-Id: <7a71be6df4fb30e0e91a1f7747303414705bdf5a.1289983189.git.qing.he@intel.com>
In-Reply-To: <cover.1289983189.git.qing.he@intel.com>
References: <cover.1289983189.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Wed, 17 Nov 2010 12:37:14 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 6/9] dbus-glib: upgrade to version 0.88
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
X-List-Received-Date: Wed, 17 Nov 2010 08:47:05 -0000

from 0.86

Signed-off-by: Qing He <qing.he@intel.com>
---
 .../fix_asneeded.patch                             |    0
 .../no-examples.patch                              |    0
 .../dbus/{dbus-glib_0.86.bb => dbus-glib_0.88.bb}  |    0
 3 files changed, 0 insertions(+), 0 deletions(-)
 rename meta/recipes-core/dbus/{dbus-glib-0.86 => dbus-glib-0.88}/fix_asneeded.patch (100%)
 rename meta/recipes-core/dbus/{dbus-glib-0.86 => dbus-glib-0.88}/no-examples.patch (100%)
 rename meta/recipes-core/dbus/{dbus-glib_0.86.bb => dbus-glib_0.88.bb} (100%)

diff --git a/meta/recipes-core/dbus/dbus-glib-0.86/fix_asneeded.patch b/meta/recipes-core/dbus/dbus-glib-0.88/fix_asneeded.patch
similarity index 100%
rename from meta/recipes-core/dbus/dbus-glib-0.86/fix_asneeded.patch
rename to meta/recipes-core/dbus/dbus-glib-0.88/fix_asneeded.patch
diff --git a/meta/recipes-core/dbus/dbus-glib-0.86/no-examples.patch b/meta/recipes-core/dbus/dbus-glib-0.88/no-examples.patch
similarity index 100%
rename from meta/recipes-core/dbus/dbus-glib-0.86/no-examples.patch
rename to meta/recipes-core/dbus/dbus-glib-0.88/no-examples.patch
diff --git a/meta/recipes-core/dbus/dbus-glib_0.86.bb b/meta/recipes-core/dbus/dbus-glib_0.88.bb
similarity index 100%
rename from meta/recipes-core/dbus/dbus-glib_0.86.bb
rename to meta/recipes-core/dbus/dbus-glib_0.88.bb
-- 
1.7.0


