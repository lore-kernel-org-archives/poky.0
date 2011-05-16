Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 07AAD4C80A90
	for <poky@yoctoproject.org>; Mon, 16 May 2011 10:18:44 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4GFIijG021451
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 May 2011 08:18:44 -0700 (PDT)
Received: from usp-ub10.corp.ad.wrs.com (128.224.163.66) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 16 May 2011 08:18:43 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <dvhart@linux.intel.com>, <sgw@linux.intel.com>
Date: Mon, 16 May 2011 23:19:03 +0800
Message-ID: <0bf7e73f42b17c653602154e3212aa7c5992cc67.1305558153.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1305558153.git.liezhi.yang@windriver.com>
References: <cover.1305558153.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: V2 [PATCH 1/3] Add the layer meta-skeleton
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
X-List-Received-Date: Mon, 16 May 2011 15:18:45 -0000
Content-Type: text/plain

Add the layer meta-skeleton, it will be used to place the various
canonical examples.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-skeleton/conf/layer.conf |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)
 create mode 100644 meta-skeleton/conf/layer.conf

diff --git a/meta-skeleton/conf/layer.conf b/meta-skeleton/conf/layer.conf
new file mode 100644
index 0000000..edb31dd
--- /dev/null
+++ b/meta-skeleton/conf/layer.conf
@@ -0,0 +1,10 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
+
+# We have a packages directory, add to BBFILES
+BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb"
+
+BBFILE_COLLECTIONS += "skeleton"
+BBFILE_PATTERN_skeleton := "^${LAYERDIR}/"
+BBFILE_PRIORITY_skeleton = "1"
+
-- 
1.7.1


