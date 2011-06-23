Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id DA1C04C805AF
	for <poky@yoctoproject.org>; Thu, 23 Jun 2011 02:54:08 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5N7s8UH020182
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 23 Jun 2011 00:54:08 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 23 Jun 2011 00:54:07 -0700
Message-ID: <62f87f4e9a0191a0099e22ab0443dc709822b996.1308798060.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1308798060.git.xiaofeng.yan@windriver.com>
References: <cover.1308798060.git.xiaofeng.yan@windriver.com>
Old-Date: Thu, 23 Jun 2011 10:41:50 +0800
Date: Thu, 23 Jun 2011 15:50:01 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] poky-lsb.conf: Instead of += with _append
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
X-List-Received-Date: Thu, 23 Jun 2011 07:54:09 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

The default variable DISTRO_FEATURES was set in poky.conf before \
moving to defaultsetup.conf. Defaultsetup.conf is included after poky-lsb.conf \
So poky-lsb.conf sets the variable using += but since its empty, \
it might as well be an = and then the later ?= doesn't do anything since the \
variable is already set.

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta-yocto/conf/distro/poky-lsb.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-yocto/conf/distro/poky-lsb.conf
index eb1cf82..49d12da 100644
--- a/meta-yocto/conf/distro/poky-lsb.conf
+++ b/meta-yocto/conf/distro/poky-lsb.conf
@@ -3,7 +3,7 @@ require conf/distro/poky.conf
 DISTRO = "poky-lsb"
 DISTROOVERRIDES = "poky:linuxstdbase"
 
-DISTRO_FEATURES += "pam largefile"
+DISTRO_FEATURES_append = " pam largefile"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11"
 
 
-- 
1.7.0.4


