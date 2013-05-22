Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5D31E013E3
	for <poky@yoctoproject.org>; Wed, 22 May 2013 09:20:30 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 22 May 2013 09:18:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,722,1363158000"; d="scan'208";a="317834444"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.12.181])
	by orsmga001.jf.intel.com with ESMTP; 22 May 2013 09:20:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Wed, 22 May 2013 17:20:27 +0100
Message-Id: <bfee0daaa669d2bfbef98ffc71e7da015b4ab0c1.1369239589.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1369239589.git.paul.eggleton@linux.intel.com>
References: <cover.1369239589.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1369239589.git.paul.eggleton@linux.intel.com>
References: <cover.1369239589.git.paul.eggleton@linux.intel.com>
Subject: [dylan][PATCH 1/1] poky-lsb: Ensure kernel nfsd module is enabled
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
X-List-Received-Date: Wed, 22 May 2013 16:20:30 -0000

From: Saul Wold <sgw@linux.intel.com>

LSB Test require NFS be enabled soe ensure that the kernel
feature is on.

(From meta-yocto master rev: af82f0ed0ccb5ce40b39f27fe5f9c1a981238297)

Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto/conf/distro/poky-lsb.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-yocto/conf/distro/poky-lsb.conf
index 404c3ec..53d088f 100644
--- a/meta-yocto/conf/distro/poky-lsb.conf
+++ b/meta-yocto/conf/distro/poky-lsb.conf
@@ -6,4 +6,7 @@ DISTROOVERRIDES = "poky:linuxstdbase"
 DISTRO_FEATURES_append = " pam largefile opengl"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11"
 
+# Ensure the kernel nfs server is enabled
+KERNEL_FEATURES_append = " features/nfsd/nfsd-enable.scc"
+
 
-- 
1.8.1.2


