Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 481A4E009AA; Thu,  6 Dec 2018 05:32:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AEE7E003E1
	for <poky@yoctoproject.org>; Thu,  6 Dec 2018 05:32:44 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id wB6DWhYA025131
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 6 Dec 2018 05:32:43 -0800 (PST)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.408.0; Thu, 6 Dec 2018 05:32:43 -0800
From: <kai.kang@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 6 Dec 2018 20:53:17 +0800
Message-ID: <c2e11d2a6ebb8da6177c0b0d7174a0e2047093db.1544102766.git.kai.kang@windriver.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1544102766.git.kai.kang@windriver.com>
References: <cover.1544102766.git.kai.kang@windriver.com>
MIME-Version: 1.0
Subject: [meta-poky][PATCH 1/1] local.conf.sample: make systemd as default init manager
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
X-List-Received-Date: Thu, 06 Dec 2018 13:32:45 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Move configurations from local.conf.sample.extended to local.conf.sample
to make systemd as default init manager for poky.

[YOCTO #13031]

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 meta-poky/conf/local.conf.sample          | 8 ++++++++
 meta-poky/conf/local.conf.sample.extended | 8 --------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-poky/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
index cf96598819..5168679f41 100644
--- a/meta-poky/conf/local.conf.sample
+++ b/meta-poky/conf/local.conf.sample
@@ -247,3 +247,11 @@ PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
 # track the version of this file when it was generated. This can safely be ignored if
 # this doesn't mean anything to you.
 CONF_VERSION = "1"
+
+#
+# Use systemd for system initialization
+#
+DISTRO_FEATURES_append = " systemd"
+DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
+VIRTUAL-RUNTIME_init_manager = "systemd"
+VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
diff --git a/meta-poky/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
index 3ba99f4896..17135d0ef1 100644
--- a/meta-poky/conf/local.conf.sample.extended
+++ b/meta-poky/conf/local.conf.sample.extended
@@ -389,11 +389,3 @@
 #VIRTUAL-RUNTIME_initscripts = "initscripts"
 #VIRTUAL-RUNTIME_keymaps = "keymaps"
 #DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
-
-#
-# Use systemd for system initialization
-#
-#DISTRO_FEATURES_append = " systemd"
-#DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
-#VIRTUAL-RUNTIME_init_manager = "systemd"
-#VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
-- 
2.19.0.rc2


