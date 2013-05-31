Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3940FE01472
	for <poky@yoctoproject.org>; Thu, 30 May 2013 20:32:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r4V3WkFo023057
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 30 May 2013 20:32:46 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.130.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.342.3; Thu, 30 May 2013 20:32:45 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 30 May 2013 23:32:40 -0400
Message-ID: <5decd62b4dd2a1600adc4ac3e729302e113a34e6.1369971009.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1369971009.git.bruce.ashfield@windriver.com>
References: <cover.1369971009.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 2/2] poky-lsb: make NFS kernel server support specific to linux-yocto
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
X-List-Received-Date: Fri, 31 May 2013 03:32:48 -0000
Content-Type: text/plain

In the current releases, not all linux-yocto derived kernels have NFS
support, or NFS support fragments availble. To ensure that derived
kernels like linux-yocto-cutom continue to work against poky-lsb,
we can make the KERNEL_FEATURE append more specific to the linux-yocto
recipe.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto/conf/distro/poky-lsb.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-yocto/conf/distro/poky-lsb.conf
index 53d088f..f230254 100644
--- a/meta-yocto/conf/distro/poky-lsb.conf
+++ b/meta-yocto/conf/distro/poky-lsb.conf
@@ -7,6 +7,6 @@ DISTRO_FEATURES_append = " pam largefile opengl"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11"
 
 # Ensure the kernel nfs server is enabled
-KERNEL_FEATURES_append = " features/nfsd/nfsd-enable.scc"
+KERNEL_FEATURES_append_pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
 
 
-- 
1.7.10.4


