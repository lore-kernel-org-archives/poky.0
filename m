Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 94CFF4C80050
	for <poky@pokylinux.org>; Mon, 27 Dec 2010 20:08:24 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Dec 2010 18:07:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,237,1291622400"; d="scan'208";a="640920791"
Received: from qhe2-db.sh.intel.com ([10.239.13.38])
	by fmsmga002.fm.intel.com with ESMTP; 27 Dec 2010 18:07:51 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PXOtF-0002Sx-K9; Tue, 28 Dec 2010 10:02:17 +0800
Date: Tue, 28 Dec 2010 10:02:17 +0800
From: Qing He <qing.he@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>
Message-ID: <20101228020217.GA27213@qhe2-db>
References: <0d30dc$kj5oeh@orsmga001.jf.intel.com>
MIME-Version: 1.0
In-Reply-To: <0d30dc$kj5oeh@orsmga001.jf.intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Subject: [PATCH] attr: fix SRC_URI
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
X-List-Received-Date: Tue, 28 Dec 2010 02:08:24 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


Signed-off-by: Qing He <qing.he@intel.com>

---
This is inspired by Kevin Tian's fix to acl
Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: qhe/fix
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix

diff --git a/meta/recipes-support/attr/attr.inc b/meta/recipes-support/attr/attr.inc
index da79246..9a8b0f6 100644
--- a/meta/recipes-support/attr/attr.inc
+++ b/meta/recipes-support/attr/attr.inc
@@ -9,7 +9,7 @@ LIC_FILES_CHKSUM = "file://doc/COPYING;md5=2d0aa14b3fce4694e4f615e30186335f \
                     file://attr/attr.c;endline=17;md5=be0403261f0847e5f43ed5b08d19593c \
                     file://libattr/libattr.c;endline=17;md5=7970f77049f8fa1199fff62a7ab724fb"
 
-SRC_URI = "http://nongnu.askapache.com/attr/${BP}.src.tar.gz"
+SRC_URI = "http://download.savannah.gnu.org/attr/${BP}.src.tar.gz"
 
 require ea-acl.inc
 
diff --git a/meta/recipes-support/attr/attr_2.4.44.bb b/meta/recipes-support/attr/attr_2.4.44.bb
index e22e158..4be27d0 100644
--- a/meta/recipes-support/attr/attr_2.4.44.bb
+++ b/meta/recipes-support/attr/attr_2.4.44.bb
@@ -1,6 +1,6 @@
 require attr.inc
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI += "file://memory-leak-in-copy.patch \
             file://memory-leak2.patch \

