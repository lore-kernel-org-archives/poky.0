Return-Path: <Alex.deVries@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0A5824C80BD4
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 15:14:38 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBFLEZhG028825;
	Wed, 15 Dec 2010 13:14:35 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 15 Dec 2010 13:14:35 -0800
Received: from localhost ([128.224.146.68]) by ala-mail06.corp.ad.wrs.com with
	Microsoft SMTPSVC(6.0.3790.1830); Wed, 15 Dec 2010 13:14:35 -0800
From: Alex deVries <alex.devries@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed, 15 Dec 2010 16:17:21 -0500
Message-Id: <6a98274e38a5f31af7f8f10fb1178e07950c9cb0.1292447662.git.alex.devries@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1292447662.git.alex.devries@windriver.com>
References: <cover.1292447662.git.alex.devries@windriver.com>
In-Reply-To: <cover.1292447662.git.alex.devries@windriver.com>
References: <cover.1292447662.git.alex.devries@windriver.com>
X-OriginalArrivalTime: 15 Dec 2010 21:14:35.0267 (UTC)
	FILETIME=[12FEAD30:01CB9C9D]
Cc: poky@yoctoproject.org
Subject: [PATCH 4/4] Update to the latest swabber.
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
X-List-Received-Date: Wed, 15 Dec 2010 21:14:39 -0000

Signed-off-by: Alex deVries <alex.devries@windriver.com>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 60f2f06..8fde995 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -164,7 +164,7 @@ SRCREV_pn-qemugl-nativesdk ??= "d888bbc723c00d197d34a39b5b7448660ec1b1c0"
 SRCREV_pn-sat-solver = "aa799f7bae0ec055e0e527203635001bb7346dbc"
 SRCREV_pn-screenshot ??= "292"
 SRCREV_pn-settings-daemon ??= "2059"
-SRCREV_pn-swabber-native ??= "1ffb646ffd4266afae181286e45d1b6f7965c47e"
+SRCREV_pn-swabber-native ??= "a0792390c5d6d5a5bade7ab155c80eef3f30fa52"
 SRCREV_pn-sysprof ??= "38a6af1f0a45e528fd2842983da71e0f23c70d6a"
 SRCREV_pn-table ??= "4b267533ce16656cba4104fc39dc12709c1bdddf"
 SRCREV_pn-tasks ??= "ea52d46d691c5fce4473ea4e24a35411381f3a65"
-- 
1.7.0.4


