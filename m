Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id DFF604C81110;
	Sun, 12 Dec 2010 23:40:27 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBD5eOSo026351;
	Sun, 12 Dec 2010 21:40:26 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com, saul.wold@intel.com
Date: Mon, 13 Dec 2010 00:41:46 -0500
Message-Id: <a6e6af91a9044782e8bf2e4582e98eacc123c2fc.1292218710.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1292218710.git.bruce.ashfield@windriver.com>
References: <cover.1292218710.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1292218710.git.bruce.ashfield@windriver.com>
References: <cover.1292218710.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH 1/1] qemuppc: update 2.6.37 SRCREV
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
X-List-Received-Date: Mon, 13 Dec 2010 05:40:28 -0000

Fixes [BUGID: 585]

The qemuppc irq handling was only partially updated to 2.6.37,
this completes the job. qemuppc builds and boots with this
change.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 81c39ab..be635e5 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -98,7 +98,7 @@ SRCREV_meta_pn-linux-yocto-stable ?= "d1cd5c80ee97e81e130be8c3de3965b770f320d6"
 # development SRCREVs
 SRCREV_machine_pn-linux-yocto_qemuarm = "87e00a2d47ba80b4ad1f9170cb3f6cf81f21d739"
 SRCREV_machine_pn-linux-yocto_qemumips = "7231e473dd981a28e3cea9f677ed60583e731550"
-SRCREV_machine_pn-linux-yocto_qemuppc = "3ab3559637130b65d8889fa74286fdb57935726f"
+SRCREV_machine_pn-linux-yocto_qemuppc = "e2b529d7d74a9b21e1d1715f0c4062a4fd92a3ed"
 SRCREV_machine_pn-linux-yocto_qemux86 = "87aacc373557f8849dde8618fbe1f7f8f2af6038"
 SRCREV_machine_pn-linux-yocto_qemux86-64 = "87aacc373557f8849dde8618fbe1f7f8f2af6038"
 SRCREV_machine_pn-linux-yocto_emenlow = "87aacc373557f8849dde8618fbe1f7f8f2af6038"
-- 
1.7.0.4


