Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C9F384C810DA
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 13:38:51 -0600 (CST)
Received: from msp-mhatle-lx2.wrs.com (msp-mhatle-lx2.wrs.com [172.25.34.61])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBDJcmLq002800; 
	Mon, 13 Dec 2010 11:38:49 -0800 (PST)
From: Mark Hatle <mark.hatle@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 13 Dec 2010 13:38:56 -0600
Message-Id: <d74a0b75f085836077e22730a497e4d6e4ed297f.1292268594.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.2.3
In-Reply-To: <cover.1292268594.git.mark.hatle@windriver.com>
References: <cover.1292268594.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1292268594.git.mark.hatle@windriver.com>
References: <cover.1292268594.git.mark.hatle@windriver.com>
Cc: poky@yoctoproject.org
Subject: [PATCH 1/7] avahi: Fix typo in summary
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
X-List-Received-Date: Mon, 13 Dec 2010 19:38:52 -0000

Fix a simple typo in the summary.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-connectivity/avahi/avahi.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-connectivity/avahi/avahi.inc b/meta/recipes-connectivity/avahi/avahi.inc
index 174eafd..b266ea4 100644
--- a/meta/recipes-connectivity/avahi/avahi.inc
+++ b/meta/recipes-connectivity/avahi/avahi.inc
@@ -1,4 +1,4 @@
-SUMMARY = "Avahi IPv$LL network address configuration daemon"
+SUMMARY = "Avahi IPv4LL network address configuration daemon"
 DESCRIPTION = "Avahi is a fully LGPL framework for Multicast DNS Service Discovery. It \
 allows programs to publish and discover services and hosts running on a local network \
 with no specific configuration. This tool implements IPv4LL, "Dynamic Configuration of \
-- 
1.7.2.2


