Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5B4FE01358
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:39:59 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2013 01:37:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="390032226"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 20 Aug 2013 01:39:59 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 1DB406A4093;
	Tue, 20 Aug 2013 01:39:56 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:44:46 +0200
Message-Id: <d1fd10e502115723d117409fb1edc32345042e9c.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 004/186] bash: reference acl*.m4 from ${S}
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:00 -0000

From: Bian Naimeng <biannm@cn.fujitsu.com>

bash: reference acl*.m4 from ${S}.

The build directory had been moved to ${WORKDIR}/build,
so we should reference acl*.m4 from ${S}.
Otherwise, the following configure error will be caught.

  | cat: aclocal.m4: No such file or directory
  | ERROR: Function failed: do_configure (log file is located at ...)

(From OE-Core rev: b296e7412a45f0c07b4f843784211ef0f66221e6)

Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/recipes-extended/bash/bash.inc |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-extended/bash/bash.inc b/meta/recipes-extended/bash/bash.inc
index 2f4519c..64b476f 100644
--- a/meta/recipes-extended/bash/bash.inc
+++ b/meta/recipes-extended/bash/bash.inc
@@ -20,8 +20,8 @@ export AUTOHEADER = "true"
 RDEPENDS_${PN}-ptest += "make"
 
 do_configure_prepend () {
-	if [ ! -e acinclude.m4 ]; then
-		cat aclocal.m4 > acinclude.m4
+	if [ ! -e ${S}/acinclude.m4 ]; then
+		cat ${S}/aclocal.m4 > ${S}/acinclude.m4
 	fi
 }
 
-- 
1.7.9.5


