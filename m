Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 738E34C81062
	for <poky@yoctoproject.org>; Wed, 11 May 2011 23:33:05 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4C4X4gQ020733
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 11 May 2011 21:33:04 -0700 (PDT)
Received: from localhost (128.224.162.193) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 11 May 2011 21:33:04 -0700
Message-ID: <b38ecaede8b66c99351c6f9ddc4387c6f57160cd.1305106462.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1305106462.git.jingdong.lu@windriver.com>
References: <cover.1305106462.git.jingdong.lu@windriver.com>
Old-Date: Wed, 11 May 2011 17:25:41 +0800
Date: Thu, 12 May 2011 12:33:02 +0800
To: <poky@yoctoproject.org>
CC: 
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.193]
Subject: [PATCH 1/1] bash: enable update-alternative to use bash as default shell
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
X-List-Received-Date: Thu, 12 May 2011 04:33:05 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-extended/bash/bash.inc    |    2 +-
 meta/recipes-extended/bash/bash_4.1.bb |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-extended/bash/bash.inc b/meta/recipes-extended/bash/bash.inc
index e218304..d55e517 100644
--- a/meta/recipes-extended/bash/bash.inc
+++ b/meta/recipes-extended/bash/bash.inc
@@ -7,7 +7,7 @@ LICENSE = "GPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 DEPENDS = "ncurses bison-native"
 
-inherit autotools gettext
+inherit autotools gettext update-alternatives
 
 PARALLEL_MAKE = ""
 
diff --git a/meta/recipes-extended/bash/bash_4.1.bb b/meta/recipes-extended/bash/bash_4.1.bb
index bf8cdad..c146014 100644
--- a/meta/recipes-extended/bash/bash_4.1.bb
+++ b/meta/recipes-extended/bash/bash_4.1.bb
@@ -1,6 +1,6 @@
 require bash.inc
 
-PR = "r1"
+PR = "r2"
 
 SRC_URI = "${GNU_MIRROR}/bash/${BPN}-${PV}.tar.gz;name=tarball \
            ${GNU_MIRROR}/bash/bash-4.1-patches/bash41-001;apply=yes;striplevel=0;name=patch001 \
-- 
1.7.0.4


