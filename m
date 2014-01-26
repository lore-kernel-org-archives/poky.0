Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70138E00503
	for <poky@yoctoproject.org>; Sat, 25 Jan 2014 22:21:54 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s0Q6Lrg6016644
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sat, 25 Jan 2014 22:21:53 -0800 (PST)
Received: from pek-blade16.wrs.com (128.224.153.44) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.2.347.0;
	Sat, 25 Jan 2014 22:21:53 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Sun, 26 Jan 2014 14:22:31 +0800
Message-ID: <48fffb0ebc0e2bedd2148803c21b5d6722e24f06.1390717255.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1390717255.git.liezhi.yang@windriver.com>
References: <cover.1390717255.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/2] poky: Add Ubuntu-13.10 to supported distros list
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
X-List-Received-Date: Sun, 26 Jan 2014 06:21:55 -0000
Content-Type: text/plain

From: Richard Purdie <richard.purdie@linuxfoundation.org>

(From meta-yocto rev: bbde6b42ff2556d090410b49c083609956789eda)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 53c3818..e19a3a6 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -77,6 +77,7 @@ SANITY_TESTED_DISTROS ?= " \
             Ubuntu-12.04 \n \
             Ubuntu-12.10 \n \
             Ubuntu-13.04 \n \
+            Ubuntu-13.10 \n \
             Fedora-18 \n \
             Fedora-19 \n \
             CentOS-6.4 \n \
-- 
1.8.3.1


