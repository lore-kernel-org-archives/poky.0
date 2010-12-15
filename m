Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id DF70B4C81110
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 16:36:42 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Dec 2010 14:36:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,351,1288594800"; d="scan'208";a="636757237"
Received: from unknown (HELO [10.255.13.76]) ([10.255.13.76])
	by fmsmga002.fm.intel.com with ESMTP; 15 Dec 2010 14:36:41 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 15 Dec 2010 16:36:41 -0600
Message-ID: <1292452601.2104.17.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH 1/1] meta-crownbay: update crownbay SRCREVs
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
X-List-Received-Date: Wed, 15 Dec 2010 22:36:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Update crownbay machine and meta SRCREVs to point the correct place in
the kernel tree.

In keeping with the 'self-contained' aspect of the BSP, also keep it
in the meta-crownbay layer.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 1fc27b7..de59bc0 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -44,3 +44,6 @@ IMAGE_FSTYPES ?= "ext3 cpio.gz"
 
 GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
+
+SRCREV_machine_pn-linux-wrs_crownbay = "f0afe10edaed24575eb115ad69c366fc24ea9380"
+SRCREV_meta_pn-linux-wrs = "2f315f96f26a93d22fe0fc524de629e7c46b8469"
-- 
1.7.0.4




