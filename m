Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5E604C8115C
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 07:25:14 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Dec 2010 05:25:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,213,1291622400"; d="scan'208";a="689733595"
Received: from daocaoren-desktop.sh.intel.com (HELO localhost)
	([10.239.48.108])
	by orsmga001.jf.intel.com with ESMTP; 22 Dec 2010 05:25:08 -0800
Message-Id: <e3927cc61eca8f78db15c5112ac2a32f76feb194.1293023813.git.lei.mei@intel.com>
In-Reply-To: <cover.1293023813.git.lei.mei@intel.com>
References: <cover.1293023813.git.lei.mei@intel.com>
From: Mei Lei <lei.mei@intel.com>
Old-Date: Wed, 22 Dec 2010 21:06:15 +0800
Date: Wed, 22 Dec 2010 21:23:06 +0800
To: poky@yoctoproject.org
Subject: [PATCH 3/3] bitbake.conf: Change the GNU_MIRROR to get more precise result
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
X-List-Received-Date: Wed, 22 Dec 2010 13:25:14 -0000

Use this mirror, more result can be checked

Signed-off-by: Mei Lei <lei.mei@intel.com>
---
 meta/conf/bitbake.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index c26beea..67fc3fb 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -502,7 +502,7 @@ FREESMARTPHONE_GIT = "git://git.freesmartphone.org"
 GENTOO_MIRROR = "http://distfiles.gentoo.org/distfiles"
 GNOME_GIT = "git://git.gnome.org"
 GNOME_MIRROR = "http://ftp.gnome.org/pub/GNOME/sources"
-GNU_MIRROR = "ftp://ftp.gnu.org/gnu"
+GNU_MIRROR = "ftp://ftp.gnu.org/pub/gnu"
 GPE_MIRROR = "http://gpe.linuxtogo.org/download/source"
 GPE_EXTRA_SVN = "svn://projects.linuxtogo.org/svn/gpe/trunk/extra;module=${PN}"
 GPE_SVN = "svn://projects.linuxtogo.org/svn/gpe/trunk/base;module=${PN}"
-- 
1.6.3.3


