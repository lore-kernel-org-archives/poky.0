Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 719824C811F6
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 02:55:43 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0J8thXV021486
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 00:55:43 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 00:55:42 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 00:55:42 -0800
Message-Id: <120134ecb6d83288fce067f3db6e98f9f1b694f3.1295426481.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1295426481.git.jingdong.lu@windriver.com>
References: <cover.1295426481.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Wed, 19 Jan 2011 16:39:12 +0800
Date: Wed, 19 Jan 2011 16:54:05 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 19 Jan 2011 08:55:42.0906 (UTC)
	FILETIME=[A74E79A0:01CBB7B6]
Subject: [PATCH 4/4] poky-lsb: Add poky-lsb.conf as distro of lsb image
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
X-List-Received-Date: Wed, 19 Jan 2011 08:55:43 -0000

Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
---
 meta/conf/distro/poky-lsb.conf |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)
 create mode 100644 meta/conf/distro/poky-lsb.conf

diff --git a/meta/conf/distro/poky-lsb.conf b/meta/conf/distro/poky-lsb.conf
new file mode 100644
index 0000000..86514d3
--- /dev/null
+++ b/meta/conf/distro/poky-lsb.conf
@@ -0,0 +1,6 @@
+require conf/distro/poky.conf
+
+DISTRO = "poky-lsb"
+
+DISTRO_FEATURES += "pam"
+PREFERRED_PROVIDER_virtual/libx11 = "libx11"
-- 
1.7.0.4


