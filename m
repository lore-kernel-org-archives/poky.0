Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8928CE01490
	for <poky@yoctoproject.org>; Wed, 20 Mar 2013 01:10:04 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2K8A40Z011861
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 20 Mar 2013 01:10:04 -0700 (PDT)
Received: from pek-usp-9.wrs.com (128.224.162.26) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.2.342.3;
	Wed, 20 Mar 2013 01:10:03 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 20 Mar 2013 15:54:39 +0800
Message-ID: <9701917f7ad8119f98186c72a0aac1f1c354cddd.1363765882.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.7
In-Reply-To: <cover.1363765882.git.liezhi.yang@windriver.com>
References: <cover.1363765882.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/2] poky-floating-revisions.inc: remove the duplicated SRCREV_pn-exmap-console
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
X-List-Received-Date: Wed, 20 Mar 2013 08:10:04 -0000
Content-Type: text/plain

Remove the duplicated SRCREV_pn-exmap-console.

[YOCTO #4064]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 .../distro/include/poky-floating-revisions.inc     |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/include/poky-floating-revisions.inc b/meta-yocto/conf/distro/include/poky-floating-revisions.inc
index ab55f39..41dd71f 100644
--- a/meta-yocto/conf/distro/include/poky-floating-revisions.inc
+++ b/meta-yocto/conf/distro/include/poky-floating-revisions.inc
@@ -2,7 +2,6 @@
 # Package Versions for cutting edge testing:
 #
 
-SRCREV_pn-exmap-console ?= "${AUTOREV}"
 #SRCREV_pn-opkg-native ?= "${AUTOREV}"
 #SRCREV_pn-opkg-sdk ?= "${AUTOREV}"
 #SRCREV_pn-opkg ?= "${AUTOREV}"
-- 
1.7.7


