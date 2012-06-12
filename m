Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3A81E01483
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:42:12 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id AF1562FF3E
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:42:07 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:13 -0700
Message-Id: <ba1ab01543e40a5ef3bef9633cfb7de4b0384fea.1339533508.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: AF1562FF3E.46A08
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 23/31] runqemu-ifup: enable arp proxying
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
X-List-Received-Date: Tue, 12 Jun 2012 20:42:12 -0000

This allows core-image-sato to access the WAN.

Thanks to Dexuan Cui for proposing this fix.

Fixes [YOCTO #2329]

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/runqemu-ifup |    1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/runqemu-ifup b/scripts/runqemu-ifup
index f80538f..1f1b4c8 100755
--- a/scripts/runqemu-ifup
+++ b/scripts/runqemu-ifup
@@ -103,6 +103,7 @@ $ROUTE add -host 192.168.7.$dest $TAP
 $IPTABLES -A POSTROUTING -t nat -j MASQUERADE -s 192.168.7.$n/32
 $IPTABLES -A POSTROUTING -t nat -j MASQUERADE -s 192.168.7.$dest/32
 echo 1 > /proc/sys/net/ipv4/ip_forward
+echo 1 > /proc/sys/net/ipv4/conf/$TAP/proxy_arp
 $IPTABLES -P FORWARD ACCEPT
 
 echo $TAP
-- 
1.7.9.5


