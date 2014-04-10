Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94138E00C23
	for <poky@yoctoproject.org>; Thu, 10 Apr 2014 08:33:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3AFXrho003091
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 10 Apr 2014 08:33:53 -0700 (PDT)
Received: from yow-bashfiel-d3.wrs.com (128.224.56.46) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Thu, 10 Apr 2014 08:33:53 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 10 Apr 2014 11:33:39 -0400
Message-ID: <b068f93b2b63330a6676546a1b08404a76a460bd.1397142829.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1397142829.git.bruce.ashfield@windriver.com>
References: <cover.1397142829.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 2/2] meta-bsps: update to v3.10.35
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
X-List-Received-Date: Thu, 10 Apr 2014 15:33:55 -0000
Content-Type: text/plain

Updating the remaining 3.10 reference BSPs to the oe-core 3.10 -stable
version.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
index 41fd57511bbe..30fcf8eb0a6d 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -5,9 +5,9 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "2ee37bfe732c73f7d39af55875ce8d30b282471c"
-SRCREV_machine_genericx86-64 ?= "2ee37bfe732c73f7d39af55875ce8d30b282471c"
-SRCREV_machine_mpc8315e-rdb ?= "2688f74bf2bb01ec355bbdd4b6fa00a0d39302de"
+SRCREV_machine_genericx86 ?= "cee957655fe67826b2e827e2db41f156fa8f0cc4"
+SRCREV_machine_genericx86-64 ?= "cee957655fe67826b2e827e2db41f156fa8f0cc4"
+SRCREV_machine_mpc8315e-rdb ?= "b37c130db5ae6800e06800315f5be5fca659a625"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
1.8.1.2


