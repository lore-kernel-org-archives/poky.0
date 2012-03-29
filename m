Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16A0EE0059A
	for <poky@yoctoproject.org>; Thu, 29 Mar 2012 05:04:22 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Mar 2012 05:04:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="123067489"
Received: from dongxiao-osel.sh.intel.com (HELO localhost) ([10.239.36.11])
	by orsmga001.jf.intel.com with ESMTP; 29 Mar 2012 05:04:21 -0700
From: Dongxiao Xu <dongxiao.xu@intel.com>
To: poky@yoctoproject.org
Date: Thu, 29 Mar 2012 20:01:58 +0800
Message-Id: <eb5271caf52a62ab102078eb90fcd0482b74536e.1333022130.git.dongxiao.xu@intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1333022130.git.dongxiao.xu@intel.com>
References: <cover.1333022130.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1333022130.git.dongxiao.xu@intel.com>
References: <cover.1333022130.git.dongxiao.xu@intel.com>
Subject: [PATCH 1/1] meta-yocto: Define DISTRO in layer.conf
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
X-List-Received-Date: Thu, 29 Mar 2012 12:04:22 -0000

Add the definition of DISTRO variable in meta-yocto/conf/layer.conf,
and remove the corresponding definition in local.conf.sample.

As we know, if we source oe-init-build-env in Yocto project environment,
we will have DISTRO="poky" set in local.conf by default, where the
"poky" DISTRO comes from the meta-yocto layer. If user deletes
meta-yocto layer from BBLAYERS in bblayers.conf, and then error will
happen when bitbake parsing the local.conf, since it could not find
where the "poky" DISTRO comes from.

Putting the DISTRO definition in layer.conf to avoid defining two
related variables (DISTRO and BBLAYERS) in two separate
configuration files (local.conf and bblayers.conf).

Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
---
 meta-yocto/conf/distro/poky.conf  |    1 -
 meta-yocto/conf/layer.conf        |    1 +
 meta-yocto/conf/local.conf.sample |    4 ++--
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index e4d7c1d..31c3de5 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -1,4 +1,3 @@
-DISTRO = "poky"
 DISTRO_NAME = "Yocto (Built by Poky 6.0)"
 DISTRO_VERSION = "1.1+snapshot-${DATE}"
 SDK_VENDOR = "-pokysdk"
diff --git a/meta-yocto/conf/layer.conf b/meta-yocto/conf/layer.conf
index 7917962..b24d7e9 100644
--- a/meta-yocto/conf/layer.conf
+++ b/meta-yocto/conf/layer.conf
@@ -9,3 +9,4 @@ BBFILE_COLLECTIONS += "yocto"
 BBFILE_PATTERN_yocto := "^${LAYERDIR}/"
 BBFILE_PRIORITY_yocto = "5"
 
+DISTRO ?= "poky"
diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 38507e3..eca1fbe 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -99,12 +99,12 @@ MACHINE ??= "qemux86"
 # Ultimately when creating custom policy, people will likely end up subclassing 
 # these defaults.
 #
-DISTRO ?= "poky"
+# DISTRO = "poky"
 # As an example of a subclass there is a "bleeding" edge policy configuration
 # where many versions are set to the absolute latest code from the upstream 
 # source control systems. This is just mentioned here as an example, its not
 # useful to most new users.
-# DISTRO ?= "poky-bleeding"
+# DISTRO = "poky-bleeding"
 
 #
 # Package Management configuration
-- 
1.7.4.1


