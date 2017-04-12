Return-Path: <gernot.hillier@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2C0BE00992; Wed, 12 Apr 2017 07:57:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [194.138.37.39 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 815 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Apr 2017 07:57:46 PDT
Received: from lizzard.sbs.de (lizzard.sbs.de [194.138.37.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE58CE00961
	for <poky@yoctoproject.org>; Wed, 12 Apr 2017 07:57:46 -0700 (PDT)
Received: from mail1.sbs.de (mail1.sbs.de [192.129.41.35])
	by lizzard.sbs.de (8.15.2/8.15.2) with ESMTPS id v3CEi92x017713
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <poky@yoctoproject.org>; Wed, 12 Apr 2017 16:44:09 +0200
Received: from linux-mf4q.internal.hillier.de ([139.22.133.77])
	by mail1.sbs.de (8.15.2/8.15.2) with ESMTP id v3CEi87U025393
	for <poky@yoctoproject.org>; Wed, 12 Apr 2017 16:44:09 +0200
To: poky@yoctoproject.org
From: Gernot Hillier <gernot.hillier@siemens.com>
Message-ID: <961524b3-5800-c72e-13a7-9038f99efc1c@siemens.com>
Date: Wed, 12 Apr 2017 16:44:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Subject: [PATCH] [RFC] tcf-agent: Re-enable default features
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
X-List-Received-Date: Wed, 12 Apr 2017 14:57:48 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


A number of features were disabled due to historic problems on ARM dating back
to tcf-agent 0.0+svnr1855 (from 2011). For us, these features do not only
compile perfectly for cortexa9hf, but are required for target debugging with
CDT in Xilinx Vivado SDK 2016.4.

Signed-off-by: Gernot Hillier <gernot.hillier@siemens.com>
---
 meta/recipes-devtools/tcf-agent/tcf-agent_git.bb | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/meta/recipes-devtools/tcf-agent/tcf-agent_git.bb b/meta/recipes-devtools/tcf-agent/tcf-agent_git.bb
index e5e41f148e..035f2368d8 100644
--- a/meta/recipes-devtools/tcf-agent/tcf-agent_git.bb
+++ b/meta/recipes-devtools/tcf-agent/tcf-agent_git.bb
@@ -35,12 +35,6 @@ MAKE_OS = "`echo ${TARGET_OS} | sed s,^linux.*,GNU/Linux,`"
 
 EXTRA_OEMAKE = "MACHINE=${MAKE_ARCH} OPSYS=${MAKE_OS} 'CC=${CC}' 'AR=${AR}'"
 
-# They don't build on ARM and we don't need them actually.
-CFLAGS += "-DSERVICE_RunControl=0 -DSERVICE_Breakpoints=0 \
-    -DSERVICE_Memory=0 -DSERVICE_Registers=0 -DSERVICE_MemoryMap=0 \
-    -DSERVICE_StackTrace=0 -DSERVICE_Symbols=0 -DSERVICE_LineNumbers=0 \
-    -DSERVICE_Expressions=0"
-
 do_install() {
 	oe_runmake install INSTALLROOT=${D}
 	install -d ${D}${sysconfdir}/init.d/
-- 
2.12.0


