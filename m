Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1A84E004FE
	for <poky@yoctoproject.org>; Mon, 28 Jan 2013 11:10:54 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Jan 2013 11:09:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,554,1355126400"; d="scan'208";a="277605932"
Received: from unknown (HELO [10.255.12.19]) ([10.255.12.19])
	by orsmga002.jf.intel.com with ESMTP; 28 Jan 2013 11:10:51 -0800
Message-ID: <5106CD3A.4080208@linux.intel.com>
Date: Mon, 28 Jan 2013 11:10:50 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, 
 dvhart@linux.intel.com
Subject: [OE-core] [PATCH v2] poky-tiny: Update for DISTRO_FEATURES_INITMAN
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
X-List-Received-Date: Mon, 28 Jan 2013 19:10:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

This patch accounts for the addition of DISTRO_FEATURES_INITMAN which
sets the VIRTUAL_RUNTIME_init_manager, so that does not need to be set.

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
  meta-yocto/conf/distro/poky-tiny.conf |    2 +-
  1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf 
b/meta-yocto/conf/distro/poky-tiny.conf
index 347280a..1ae8242 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -84,6 +84,7 @@ DISTRO_FEATURES_NET = "ipv4"
  DISTRO_FEATURES_USB = "usbhost"
  #DISTRO_FEATURES_USBGADGET = "usbgadget"
  #DISTRO_FEATURES_WIFI = "wifi"
+DISTRO_FEATURES_INITMAN = "tiny-init"
   DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
                     ${DISTRO_FEATURES_NET} \
@@ -96,7 +97,6 @@ DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
  # Use tmpdevfs and the busybox runtime services
  VIRTUAL-RUNTIME_dev_manager = ""
  VIRTUAL-RUNTIME_login_manager = ""
-VIRTUAL-RUNTIME_init_manager = "tiny-init"
  VIRTUAL-RUNTIME_keymaps = ""
   # FIXME: Consider adding "modules" to MACHINE_FEATURES and using that in
-- 
1.7.9.5


_______________________________________________
Openembedded-core mailing list
Openembedded-core@lists.openembedded.org
http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-core



