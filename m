Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 287F8E007EB
	for <poky@yoctoproject.org>; Fri,  3 Jan 2014 01:50:08 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s039o7na028203
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 3 Jan 2014 01:50:08 -0800 (PST)
Received: from pek-blade16.wrs.com (128.224.153.44) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.2.347.0;
	Fri, 3 Jan 2014 01:50:07 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Sat, 4 Jan 2014 01:52:38 +0800
Message-ID: <41b09dc52579a3188f5f2b195e49a9e9e8e68c86.1388771462.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1388771462.git.liezhi.yang@windriver.com>
References: <cover.1388771462.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] maintainers.inc: reassign e2fsprogs
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
X-List-Received-Date: Fri, 03 Jan 2014 09:50:09 -0000
Content-Type: text/plain

Paul has agreed to reassign e2fsprogs to Robert

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 133857f..75fc0e0 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -146,7 +146,7 @@ RECIPE_MAINTAINER_pn-dpkg = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-dri2proto = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-dropbear = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-dtc = "Saul Wold <sgw@linux.intel.com>"
-RECIPE_MAINTAINER_pn-e2fsprogs = "Paul Eggleton <paul.eggleton@linux.intel.com>"
+RECIPE_MAINTAINER_pn-e2fsprogs = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-ed = "Cristiana Voicu <cristiana.voicu@intel.com>"
 RECIPE_MAINTAINER_pn-eee-acpi-scripts = "Cristiana Voicu <cristiana.voicu@intel.com>"
 RECIPE_MAINTAINER_pn-eglibc = "Laurentiu Palcu <laurentiu.palcu@intel.com>"
-- 
1.8.3.1


