Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id C238D4C80FC7
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 04:31:41 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3F9VfBg017524
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 02:31:41 -0700 (PDT)
Received: from localhost (128.224.162.205) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 15 Apr 2011 02:31:40 -0700
Message-ID: <f3d410e5871e8b80633ead6fd81782c33e86fd50.1302597896.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1302597896.git.jingdong.lu@windriver.com>
References: <cover.1302597896.git.jingdong.lu@windriver.com>
Old-Date: Tue, 12 Apr 2011 16:39:01 +0800
Date: Fri, 15 Apr 2011 17:31:37 +0800
To: <poky@yoctoproject.org>
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.205]
Subject: [PATCH 2/2] poky-lsb: Add "largefile" feature for LSB distro.
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
X-List-Received-Date: Fri, 15 Apr 2011 09:31:42 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

Add "largefile" feature for LSB distro.
Fixes [YOCTO #794]

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta-yocto/conf/distro/poky-lsb.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-yocto/conf/distro/poky-lsb.conf
index 749c858..64603da 100644
--- a/meta-yocto/conf/distro/poky-lsb.conf
+++ b/meta-yocto/conf/distro/poky-lsb.conf
@@ -3,7 +3,7 @@ require conf/distro/poky.conf
 DISTRO = "poky-lsb"
 DISTROOVERRIDES = "poky:poky-lsb"
 
-DISTRO_FEATURES += "pam"
+DISTRO_FEATURES += "pam largefile"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11"
 
 
-- 
1.7.0.4


