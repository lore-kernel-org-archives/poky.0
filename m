Return-Path: <yanok@emcraft.com>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF3474C80337
	for <poky@pokylinux.org>; Wed, 27 Apr 2011 17:57:04 -0500 (CDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 846281C1DA14;
	Thu, 28 Apr 2011 00:57:03 +0200 (CEST)
X-Auth-Info: 7bzxO4YnNor7mazC6lbwh268Vpv5uuwOu4LWlDaGCXs=
Received: from mail.denx.de (host-82-135-33-74.customer.m-online.net
	[82.135.33.74])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 7FFFC1C0009C;
	Thu, 28 Apr 2011 00:57:03 +0200 (CEST)
Received: from pollux.denx.de (pollux [192.168.1.1])
	by mail.denx.de (Postfix) with ESMTP id 1C00B42E45D8;
	Thu, 28 Apr 2011 00:57:03 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 547)
	id B460218014EEE; Thu, 28 Apr 2011 00:57:02 +0200 (CEST)
From: Ilya Yanok <yanok@emcraft.com>
To: poky@pokylinux.org
Date: Thu, 28 Apr 2011 00:56:58 +0200
Message-Id: <1303945019-24304-1-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.4.4
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [PATCH 1/2] libnss-mdns: add $D to postinst paths
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
X-List-Received-Date: Wed, 27 Apr 2011 22:57:05 -0000

Post installation script can be called during image creation so paths
should relative to $D.

Signed-off-by: Ilya Yanok <yanok@emcraft.com>
---
 .../libnss-mdns/libnss-mdns_0.10.bb                |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb b/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
index b04b20a..651a240 100644
--- a/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
+++ b/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
@@ -26,9 +26,9 @@ EXTRA_OECONF = "--libdir=/lib --disable-lynx --enable-avahi"
 
 # TODO: pattern based configuration update
 pkg_postinst_${PN} () {
-	cat /etc/nsswitch.conf | grep "hosts:\s*files dns$" > /dev/null && {
-		cat /etc/nsswitch.conf | sed 's/hosts:\s*files dns/& mdns4/' > /tmp/nsswitch.conf
-		mv /tmp/nsswitch.conf /etc/nsswitch.conf
+	cat $D/etc/nsswitch.conf | grep "hosts:\s*files dns$" > /dev/null && {
+		cat $D/etc/nsswitch.conf | sed 's/hosts:\s*files dns/& mdns4/' > /tmp/nsswitch.conf
+		mv /tmp/nsswitch.conf $D/etc/nsswitch.conf
 	}
 }
 
-- 
1.7.4.4


