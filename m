Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C6A3E00A7D; Thu,  4 Jul 2019 07:39:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A2ACE00A7D
	for <poky@yoctoproject.org>; Thu,  4 Jul 2019 07:39:57 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x64EdttK018774
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 4 Jul 2019 07:39:55 -0700 (PDT)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.439.0; Thu, 4 Jul 2019 07:39:55 -0700
From: <kai.kang@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 4 Jul 2019 21:45:20 +0800
Message-ID: <20190704134520.16320-3-kai.kang@windriver.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190704134520.16320-1-kai.kang@windriver.com>
References: <20190704134520.16320-1-kai.kang@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: [meta-poky][PATCH 2/2] poky.conf: make systemd as default init manager
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
X-List-Received-Date: Thu, 04 Jul 2019 14:39:58 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Make systemd as default init manager for distro poky. And set sysvinit
as default value for musl considering security.

Update poky-tiny.conf to use new introduced variable INIT_MANGER.

[YOCTO #13031]

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 8 ++------
 meta-poky/conf/distro/poky.conf      | 5 +++++
 2 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index 1f8b6e8ff3..e847c59676 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -82,12 +82,8 @@ DISTRO_FEATURES_class-native = "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO
 DISTRO_FEATURES_class-nativesdk = "${DISTRO_FEATURES_DEFAULT} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
 # enable mdev/busybox for init
-VIRTUAL-RUNTIME_dev_manager = "busybox-mdev"
-VIRTUAL-RUNTIME_login_manager = "busybox"
-VIRTUAL-RUNTIME_init_manager = "busybox"
-VIRTUAL-RUNTIME_initscripts = "initscripts"
-VIRTUAL-RUNTIME_keymaps = "keymaps"
-DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
+# because poky-tiny uses musl, set with override libc-musl
+INIT_MANAGER_libc-musl = "mdev-busybox"
 
 # FIXME: Consider adding "modules" to MACHINE_FEATURES and using that in
 # packagegroup-core-base to select modutils-initscripts or not.  Similar with "net" and
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 78621e6dbf..20ea5637d3 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -84,3 +84,8 @@ require conf/distro/include/no-static-libs.inc
 require conf/distro/include/yocto-uninative.inc
 require conf/distro/include/security_flags.inc
 INHERIT += "uninative"
+
+# Make systemd as default init manager for poky
+# and set sysvinit for musl consider security
+INIT_MANAGER ?= "systemd"
+INIT_MANAGER_libc-musl ?= "sysvinit"
-- 
2.18.0


