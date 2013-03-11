Return-Path: <Wenzong.Fan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7EEDE006DC
	for <poky@yoctoproject.org>; Mon, 11 Mar 2013 01:05:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2B85Ct9021956
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 11 Mar 2013 01:05:12 -0700 (PDT)
Received: from pek-wfan-d2.corp.ad.wrs.com (128.224.162.243) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Mon, 11 Mar 2013 01:05:11 -0700
From: <wenzong.fan@windriver.com>
To: <poky@yoctoproject.org>
Date: Mon, 11 Mar 2013 16:04:58 +0800
Message-ID: <1362989098-9567-2-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1362989098-9567-1-git-send-email-wenzong.fan@windriver.com>
References: <1362989098-9567-1-git-send-email-wenzong.fan@windriver.com>
MIME-Version: 1.0
Cc: wenzong.fan@windriver.com
Subject: [PATCH 1/1] layer.conf: Add LAYERVERSION and LAYERDEPENDS
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
X-List-Received-Date: Mon, 11 Mar 2013 08:05:12 -0000
Content-Type: text/plain

Add LAYERVERSION and LAYERDEPENDS to following yocto layers:

    meta-yocto, meta-yocto-bsp

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 meta-yocto-bsp/conf/layer.conf |    5 +++++
 meta-yocto/conf/layer.conf     |    5 +++++
 2 files changed, 10 insertions(+)

diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-bsp/conf/layer.conf
index 49fb135..f34d7f4 100644
--- a/meta-yocto-bsp/conf/layer.conf
+++ b/meta-yocto-bsp/conf/layer.conf
@@ -9,3 +9,8 @@ BBFILE_COLLECTIONS += "yoctobsp"
 BBFILE_PATTERN_yoctobsp := "^${LAYERDIR}/"
 BBFILE_PRIORITY_yoctobsp = "5"
 
+# This should only be incremented on significant changes that will
+# cause compatibility issues with other layers
+LAYERVERSION_yoctobsp = "1"
+
+LAYERDEPENDS_yoctobsp = "core"
diff --git a/meta-yocto/conf/layer.conf b/meta-yocto/conf/layer.conf
index 7917962..331ca18 100644
--- a/meta-yocto/conf/layer.conf
+++ b/meta-yocto/conf/layer.conf
@@ -9,3 +9,8 @@ BBFILE_COLLECTIONS += "yocto"
 BBFILE_PATTERN_yocto := "^${LAYERDIR}/"
 BBFILE_PRIORITY_yocto = "5"
 
+# This should only be incremented on significant changes that will
+# cause compatibility issues with other layers
+LAYERVERSION_yocto = "1"
+
+LAYERDEPENDS_yocto = "core"
-- 
1.7.10.4


