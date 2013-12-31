Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3036E0081B
	for <poky@yoctoproject.org>; Mon, 30 Dec 2013 19:04:57 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rBV34vPE003624
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 30 Dec 2013 19:04:57 -0800 (PST)
Received: from pek-blade16.wrs.com (128.224.153.44) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.2.347.0;
	Mon, 30 Dec 2013 19:04:57 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 31 Dec 2013 19:07:09 +0800
Message-ID: <e3cca0772a822282c2311396a6591bdbfa2a341a.1388487789.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1388487789.git.liezhi.yang@windriver.com>
References: <cover.1388487789.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH V2 2/2] maintainers.inc: reassign tzcode-native
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
X-List-Received-Date: Tue, 31 Dec 2013 03:04:57 -0000
Content-Type: text/plain

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/distro/include/maintainers.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 56489a8..133857f 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -644,7 +644,7 @@ RECIPE_MAINTAINER_pn-trace-cmd = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-tremor = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-tslib = "Paul Eggleton <paul.eggleton@linux.intel.com>"
 RECIPE_MAINTAINER_pn-ttf-bitstream-vera = "Valentin Popa <valentin.popa@intel.com>"
-RECIPE_MAINTAINER_pn-tzcode-native = "Saul Wold <sgw@linux.intel.com>"
+RECIPE_MAINTAINER_pn-tzcode-native = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-tzdata = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-ubootchart = "Cristiana Voicu <cristiana.voicu@intel.com>"
 RECIPE_MAINTAINER_pn-u-boot-fw-utils = "Cristiana Voicu <cristiana.voicu@intel.com>"
-- 
1.8.3.1


