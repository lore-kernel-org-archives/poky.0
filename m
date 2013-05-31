Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 588D2E01472
	for <poky@yoctoproject.org>; Thu, 30 May 2013 20:32:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r4V3Wjba013560
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 30 May 2013 20:32:45 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.130.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Thu, 30 May 2013 20:32:44 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 30 May 2013 23:32:39 -0400
Message-ID: <745de212cf351cd2b8df4457fe81dc6d44bef036.1369971009.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1369971009.git.bruce.ashfield@windriver.com>
References: <cover.1369971009.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/2] poky.conf: add qemumips64 preferred version
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
X-List-Received-Date: Fri, 31 May 2013 03:32:47 -0000
Content-Type: text/plain

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/distro/poky.conf |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 4a2019c..e2c4790 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -19,6 +19,7 @@ PREFERRED_VERSION_linux-yocto_qemux86 ?= "3.8%"
 PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "3.8%"
 PREFERRED_VERSION_linux-yocto_qemuarm ?= "3.8%"
 PREFERRED_VERSION_linux-yocto_qemumips ?= "3.8%"
+PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.8%"
 PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.8%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
-- 
1.7.10.4


