Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0174EE00519
	for <poky@yoctoproject.org>; Sat, 25 Jan 2014 22:21:55 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0Q6Ltad011415
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sat, 25 Jan 2014 22:21:55 -0800 (PST)
Received: from pek-blade16.wrs.com (128.224.153.44) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.2.347.0;
	Sat, 25 Jan 2014 22:21:54 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Sun, 26 Jan 2014 14:22:32 +0800
Message-ID: <77f4452524c0104052a198989e5e78bc8f2ea7c5.1390717255.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1390717255.git.liezhi.yang@windriver.com>
References: <cover.1390717255.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/2] poky: Add Fedora-20 to supported distros list
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
X-List-Received-Date: Sun, 26 Jan 2014 06:21:58 -0000
Content-Type: text/plain

(From meta-yocto rev: cf42610ac26307f28d5b3fea6be8bde223c0ed40)

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index e19a3a6..15f327e 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -80,6 +80,7 @@ SANITY_TESTED_DISTROS ?= " \
             Ubuntu-13.10 \n \
             Fedora-18 \n \
             Fedora-19 \n \
+            Fedora-20 \n \
             CentOS-6.4 \n \
             Debian-6.0.7 \n \
             Debian-7.0 \n \
-- 
1.8.3.1


