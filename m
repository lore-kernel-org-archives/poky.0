Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9E6BE4C81067
	for <poky@yoctoproject.org>; Thu, 12 May 2011 05:35:37 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4CAZaDn024333
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 12 May 2011 03:35:36 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 12 May 2011 03:35:36 -0700
Message-ID: <6bb4510297af2c6b6dcaffb4fb231bd710efdd63.1305195651.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1305195651.git.xiaofeng.yan@windriver.com>
References: <cover.1305195651.git.xiaofeng.yan@windriver.com>
Old-Date: Thu, 12 May 2011 18:16:02 +0800
Date: Thu, 12 May 2011 18:34:53 +0800
To: <poky@yoctoproject.org>, <jingdong.lu@windriver.com>,
	<liezhi.yang@windriver.com>, <kai.kang@windriver.com>,
	<xiaofeng.yan@windriver.com>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] meta-qt3: Add discription to README
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
X-List-Received-Date: Thu, 12 May 2011 10:35:38 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Discriptin about how to compile qt3 and install it to image.

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 README |    9 +++++++++
 1 files changed, 9 insertions(+), 0 deletions(-)

diff --git a/README b/README
index 9be700e..d615392 100644
--- a/README
+++ b/README
@@ -6,3 +6,12 @@ conf/bblayers.conf file.
 
 You may also have to set DISTRO = "poky-lsb" in your conf/local.conf
 file.
+
+How to include library qt3 in image which you build:
+1 For lsb-image 
+  pc$ bitbake core-image-lsb-qt3
+2 For non-lsb-image
+  -Compile
+   pc$ bitbake qt-x11-free
+  -Install qt3 to image
+   In this way, you need add "qt-x11-free" to your core-image-*.bb file.
-- 
1.7.0.4


