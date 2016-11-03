Return-Path: <Frederik_Sdun@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15BF3E00BB0; Thu,  3 Nov 2016 01:26:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 3676 seconds by postgrey-1.32 at yocto-www;
	Thu, 03 Nov 2016 01:26:48 PDT
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A97DE00A64
	for <poky@yoctoproject.org>; Thu,  3 Nov 2016 01:26:48 -0700 (PDT)
Received: from nat-ies.mentorg.com ([192.94.31.2]
	helo=svr-ies-mbx-02.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1c2COx-0003f1-U3 from Frederik_Sdun@mentor.com 
	for poky@yoctoproject.org; Thu, 03 Nov 2016 00:25:32 -0700
Received: from xsvsn432.dev.mentorg.com (137.202.0.87) by
	svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2) with Microsoft SMTP
	Server (TLS) id 15.0.1210.3; Thu, 3 Nov 2016 07:25:28 +0000
From: Frederik Sdun <frederik_sdun@mentor.com>
To: <poky@yoctoproject.org>
Date: Thu, 3 Nov 2016 08:25:20 +0100
Message-ID: <1478157920-21764-1-git-send-email-frederik_sdun@mentor.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [137.202.0.87]
X-ClientProxiedBy: svr-ies-mbx-01.mgc.mentorg.com (139.181.222.1) To
	svr-ies-mbx-02.mgc.mentorg.com (139.181.222.2)
Subject: [PATCH] kernel-module-split: use license provided by module for kernel-module-*
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
X-List-Received-Date: Thu, 03 Nov 2016 08:26:52 -0000
Content-Type: text/plain

---
 meta/classes/kernel-module-split.bbclass | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/meta/classes/kernel-module-split.bbclass b/meta/classes/kernel-module-split.bbclass
index 08d2262..8d2aaea 100644
--- a/meta/classes/kernel-module-split.bbclass
+++ b/meta/classes/kernel-module-split.bbclass
@@ -29,6 +29,12 @@ do_install_append() {
 PACKAGESPLITFUNCS_prepend = "split_kernel_module_packages "
 
 KERNEL_MODULES_META_PACKAGE ?= "kernel-modules"
+KERNEL_MODULE_LICENSE_MAP[GPL] = "GPL-2.0"
+KERNEL_MODULE_LICENSE_MAP[GPL_v2] = "GPL-2.0"
+KERNEL_MODULE_LICENSE_MAP[GPL_and_additional_rights] = "GPL-2.0"
+KERNEL_MODULE_LICENSE_MAP[Dual_BSD_GPL] = "BSD|GPL-2.0"
+KERNEL_MODULE_LICENSE_MAP[Dual_MIT_GPL] = "MIT|GPL-2.0"
+KERNEL_MODULE_LICENSE_MAP[Dual_MPL_GPL] = "MPL|GPL-2.0"
 
 KERNEL_MODULE_PACKAGE_PREFIX ?= ""
 
@@ -103,6 +109,10 @@ python split_kernel_module_packages () {
         if "description" in vals:
             old_desc = d.getVar('DESCRIPTION_' + pkg, True) or ""
             d.setVar('DESCRIPTION_' + pkg, old_desc + "; " + vals["description"])
+        if "license" in vals:
+            if d.getVar('LICENSE_' + pkg, True) is None:
+                new_license = d.getVarFlag('KERNEL_MODULE_LICENSE_MAP', vals["license"].replace(' ', '_').replace('/', '_'), True ) or vals["license"]
+                d.setVar('LICENSE_' + pkg, new_license)
 
         rdepends = bb.utils.explode_dep_versions2(d.getVar('RDEPENDS_' + pkg, True) or "")
         modinfo_deps = []
-- 
1.9.1


