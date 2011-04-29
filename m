Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 46B7F4C80AF2
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 03:51:11 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3T8pAOO012800
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 01:51:10 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 29 Apr 2011 01:51:10 -0700
Message-ID: <4a1dea5dc4208d04e935e1241c6a94aa8dc13207.1304066906.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1304066906.git.xiaofeng.yan@windriver.com>
References: <cover.1304066906.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 29 Apr 2011 16:43:57 +0800
Date: Fri, 29 Apr 2011 16:50:39 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 1/1] create-lsb-iamge:Fix bugs
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
X-List-Received-Date: Fri, 29 Apr 2011 08:51:11 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Change variables "${ARCH}" to "${1}"

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 scripts/create-lsb-image |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/create-lsb-image b/scripts/create-lsb-image
index 94cb337..48b96e2 100755
--- a/scripts/create-lsb-image
+++ b/scripts/create-lsb-image
@@ -81,7 +81,7 @@ case ${1} in
     ;;
 "ppc32")
     P_ARCH=ppc
-    T_ARCH=${ARCH}
+    T_ARCH=${1}
     COM_PACKAGE_LIST="lsb-dist-testkit-4.1.0-5.${T_ARCH}.tar.gz"
     ;;
 *)
-- 
1.7.0.4


