Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32976E008C3; Sun, 19 Oct 2014 20:35:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0351FE00861
	for <poky@yoctoproject.org>; Sun, 19 Oct 2014 20:35:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s9K3Zg2j009400
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sun, 19 Oct 2014 20:35:42 -0700 (PDT)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Sun, 19 Oct 2014 20:35:42 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Sun, 19 Oct 2014 20:35:41 -0700
Message-ID: <d07384a6a5d748080aee49e86f122d3c42a69222.1413776077.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1413776077.git.liezhi.yang@windriver.com>
References: <cover.1413776077.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] local.conf.sample.extended: update for RPM_PREFER_ELF_ARCH
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
X-List-Received-Date: Mon, 20 Oct 2014 03:35:47 -0000
Content-Type: text/plain

Updated as the rpm upstream suggested:
- RPM_PREFER_COLOR -> RPM_PREFER_ELF_ARCH
- 3 -> 4

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/local.conf.sample.extended |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 1995732..ccdd326 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -145,12 +145,12 @@
 #MULTILIBS = "multilib:lib32"
 #DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
 
-# Set RPM_PREFER_COLOR to configure preferred ABI when using rpm packaging
+# Set RPM_PREFER_ELF_ARCH to configure preferred ABI when using rpm packaging
 # backend to generate a rootfs, choices are:
 # 1: ELF32 wins
 # 2: ELF64 wins
-# 3: ELF64 N32 wins (for mips64 or mips64el only)
-#RPM_PREFER_COLOR ?= "2"
+# 4: ELF64 N32 wins (for mips64 or mips64el only)
+#RPM_PREFER_ELF_ARCH ?= "2"
 
 # The network based PR service host and port
 # Uncomment the following lines to enable PRservice.
-- 
1.7.9.5


