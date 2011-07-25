Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A0244C80332
	for <poky@yoctoproject.org>; Mon, 25 Jul 2011 13:06:25 -0500 (CDT)
Received: from yow-bashfiel-l1.corp.ad.wrs.com
	(dhcp-146-223.ottawa.windriver.com [128.224.146.223])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p6PI5pgf015712;
	Mon, 25 Jul 2011 11:05:52 -0700 (PDT)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Mon, 25 Jul 2011 14:05:49 -0400
Message-Id: <452aa8cb622723570b50a1a77530fbb714d2f3e1.1311616990.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1311616990.git.bruce.ashfield@windriver.com>
References: <cover.1311616990.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1311616990.git.bruce.ashfield@windriver.com>
References: <cover.1311616990.git.bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/1] poky.conf: explicitly referenced preferred linux-yocto version
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
X-List-Received-Date: Mon, 25 Jul 2011 18:06:25 -0000

As the staging of linux-yocto-3.0 showed, we should explicitly
state our preferred version of linux-yocto. This prevents unvalidated
changes from being forced into machines. Layers and machines are free
to override this as they are updated.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/distro/poky.conf |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 1ae94a0..88b8adf 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -12,6 +12,8 @@ LOCALCONF_VERSION = "1"
 
 DISTRO_FEATURES_append = " largefile"
 
+PREFERRED_VERSION_linux-yocto ?= "2.6.37+git%"
+
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
 
-- 
1.7.4.1


