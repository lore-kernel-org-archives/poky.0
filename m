Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E06D2E00BAA
	for <poky@yoctoproject.org>; Fri, 28 Mar 2014 21:18:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s2T4IfQw009388
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 28 Mar 2014 21:18:41 -0700 (PDT)
Received: from pek-hostel-vm02.wrs.com (128.224.153.172) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Fri, 28 Mar 2014 21:18:41 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Sat, 29 Mar 2014 00:18:38 -0400
Message-ID: <9e359fa946ce7efbf4d5fbb731a7a780e5c5aac0.1396066584.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1396066584.git.liezhi.yang@windriver.com>
References: <cover.1396066584.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] distro_alias.inc: remove packagegroup-toolset-native
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
X-List-Received-Date: Sat, 29 Mar 2014 04:18:43 -0000
Content-Type: text/plain

There was a patch in oe-core to remove the recipe
packagegroup-toolset-native.bb, then we also need to remove it from
distro_alias.inc.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/distro/include/distro_alias.inc |    1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/distro_alias.inc b/meta-yocto/conf/distro/include/distro_alias.inc
index 629d1eb..96db5ba 100644
--- a/meta-yocto/conf/distro/include/distro_alias.inc
+++ b/meta-yocto/conf/distro/include/distro_alias.inc
@@ -341,7 +341,6 @@ DISTRO_PN_ALIAS_pn-packagegroup-qte-toolchain-target = "Intel"
 DISTRO_PN_ALIAS_pn-packagegroup-qt-toolchain-target = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-sdk-host = "OE-Core"
 DISTRO_PN_ALIAS_pn-packagegroup-self-hosted = "OE-Core"
-DISTRO_PN_ALIAS_pn-packagegroup-toolset-native = "OE-Core"
 DISTRO_PN_ALIAS_pn-package-index = "OE-Core"
 DISTRO_PN_ALIAS_pn-perf = "OSPDT"
 DISTRO_PN_ALIAS_pn-pkgconfig = "Ubuntu=pkg-config Fedora=pkgconfig"
-- 
1.7.10.4


