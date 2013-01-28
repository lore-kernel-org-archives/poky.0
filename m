Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7868E006CB
	for <poky@yoctoproject.org>; Mon, 28 Jan 2013 11:11:25 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Jan 2013 11:10:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,554,1355126400"; d="scan'208";a="277606152"
Received: from unknown (HELO [10.255.12.19]) ([10.255.12.19])
	by orsmga002.jf.intel.com with ESMTP; 28 Jan 2013 11:11:25 -0800
Message-ID: <5106CD5D.2030701@linux.intel.com>
Date: Mon, 28 Jan 2013 11:11:25 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, 
 dvhart@linux.intel.com
Subject: [OE-core] [PATCH] poky-tiny: Add pulseaudio to DISTRO_FEATURES_BACKFILL_CONSIDERED
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
X-List-Received-Date: Mon, 28 Jan 2013 19:11:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

This is to ensure it won't be included in DISTRO_FEATURES, we have
considered it and it's not appropriate for the poky-tiny release.

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
  meta-yocto/conf/distro/poky-tiny.conf |    1 +
  1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf 
b/meta-yocto/conf/distro/poky-tiny.conf
index 761844f..4ab488d 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -86,6 +86,7 @@ DISTRO_FEATURES_USB = "usbhost"
  #DISTRO_FEATURES_WIFI = "wifi"
  # This is needed for DISTRO_FEATURES_BACKFILL
  DISTRO_FEATURES_INITMAN = "tiny-init"
+DISTRO_FEATURES_BACKFILL_CONSIDERED = "pulseaudio"
   DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
                     ${DISTRO_FEATURES_NET} \
-- 
1.7.9.5


_______________________________________________
Openembedded-core mailing list
Openembedded-core@lists.openembedded.org
http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-core



