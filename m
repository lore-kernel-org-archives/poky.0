Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50A09E01400
	for <poky@yoctoproject.org>; Mon, 28 Jan 2013 23:24:12 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r0T7OCMT021343
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 28 Jan 2013 23:24:12 -0800 (PST)
Received: from localhost.localdomain (128.224.162.205) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.2.318.4; Mon, 28 Jan 2013 23:24:11 -0800
From: Kang Kai <kai.kang@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 29 Jan 2013 15:25:28 +0800
Message-ID: <7d6384809071471145ea9ee101bac414e481bc78.1359444101.git.kai.kang@windriver.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1359444101.git.kai.kang@windriver.com>
References: <cover.1359444101.git.kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.205]
Subject: [PATCH 1/1] local.conf.sample.extended: add variable ROOT_HOME
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
X-List-Received-Date: Tue, 29 Jan 2013 07:24:12 -0000
Content-Type: text/plain

Add variable ROOT_HOME to local.conf.sample.extended.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta-yocto/conf/local.conf.sample.extended |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 8e5dca5..69b804e 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -218,3 +218,7 @@
 # set init manager: sysvinit or systemd
 # sysvinit is the default choice
 #DISTRO_FEATURES_INITMAN ?= "sysvinit"
+#
+# configure root's home directory dynamically
+# set ROOT_HOME with absolute path of directory which you want to be root's home directory
+#ROOT_HOME = "/home/root"
-- 
1.7.5.4


