Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DE6BE014E4
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:14 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Aug 2013 01:40:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="390032332"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 20 Aug 2013 01:40:13 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 24EA96A4093;
	Tue, 20 Aug 2013 01:40:10 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:44:54 +0200
Message-Id: <33f6017265d75cdd9ae8d28b944ee29bb876decf.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Cc: Victor Kamensky <victor.kamensky@linaro.org>
Subject: [PATCH 012/186] systemtap: fix build failure on host system with dyninst installed
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Aug 2013 08:40:14 -0000

From: Victor Kamensky <victor.kamensky@linaro.org>

On host system where dyninst installed (i.e Fedora 18 with SystemTap)
builds fails with the error from do_qa_configure "This autoconf log
indicates errors, it looked at host include and/or library paths
while determining system capabilities." Problematic config.log
indicates inclusion of /usr/include/dyninst/dyntypes.h

Fix for now - disable dyninst in oe builds

(From OE-Core rev: c4d4fb198d56b26661cc2f98ade6a57f60d9c514)

Signed-off-by: Victor Kamensky <victor.kamensky@linaro.org>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-kernel/systemtap/systemtap_git.bb |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-kernel/systemtap/systemtap_git.bb b/meta/recipes-kernel/systemtap/systemtap_git.bb
index 9bba5a9..4f60f6b 100644
--- a/meta/recipes-kernel/systemtap/systemtap_git.bb
+++ b/meta/recipes-kernel/systemtap/systemtap_git.bb
@@ -13,7 +13,7 @@ RDEPENDS_${PN}_class-nativesdk += "python-native"
 PR = "r1"
 
 EXTRA_OECONF += "--with-libelf=${STAGING_DIR_TARGET} --without-rpm \
-            --without-nss --without-avahi \
+            --without-nss --without-avahi --without-dyninst \
             --disable-server --disable-grapher "
 
 STAP_DOCS ?= "--disable-docs --disable-publican --disable-refdocs"
-- 
1.7.9.5


