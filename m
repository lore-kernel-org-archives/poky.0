Return-Path: <yanok@emcraft.com>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by mx1.pokylinux.org (Postfix) with ESMTP id 59C9A4C804D9
	for <poky@pokylinux.org>; Fri,  1 Apr 2011 19:13:46 -0500 (CDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id DE1251C1DA16;
	Sat,  2 Apr 2011 02:13:43 +0200 (CEST)
X-Auth-Info: tUyY6O5yN2cCY+PVRDPONmfDEqODw8tpKwv232J17O0=
Received: from mail.denx.de (host-82-135-33-74.customer.m-online.net
	[82.135.33.74])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id D9DDA1C00087;
	Sat,  2 Apr 2011 02:13:43 +0200 (CEST)
Received: from pollux.denx.de (pollux [192.168.1.1])
	by mail.denx.de (Postfix) with ESMTP id C1E45471AE76;
	Sat,  2 Apr 2011 02:13:43 +0200 (CEST)
Received: by pollux.denx.de (Postfix, from userid 547)
	id B419818563702; Sat,  2 Apr 2011 02:13:43 +0200 (CEST)
From: Ilya Yanok <yanok@emcraft.com>
To: poky@pokylinux.org
Date: Sat,  2 Apr 2011 02:13:37 +0200
Message-Id: <1301703217-29637-2-git-send-email-yanok@emcraft.com>
X-Mailer: git-send-email 1.7.4
In-Reply-To: <1301703217-29637-1-git-send-email-yanok@emcraft.com>
References: <1301703217-29637-1-git-send-email-yanok@emcraft.com>
Cc: Ilya Yanok <yanok@emcraft.com>
Subject: [PATCH 2/2] qemu-nativesdk: fix do_configure
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
X-List-Received-Date: Sat, 02 Apr 2011 00:13:46 -0000

qemu 0.14 does not need --cross-prefix switch as it uses CC environment
variables (and friends) which contains the cross prefix already.

Signed-off-by: Ilya Yanok <yanok@emcraft.com>
---
 meta/recipes-devtools/qemu/qemu.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/qemu/qemu.inc b/meta/recipes-devtools/qemu/qemu.inc
index 0367f50..412bdfd 100644
--- a/meta/recipes-devtools/qemu/qemu.inc
+++ b/meta/recipes-devtools/qemu/qemu.inc
@@ -40,6 +40,6 @@ do_configure() {
 SRC_URI_append_virtclass-nativesdk = " file://glflags.patch;patch=1"
 DEPENDS_virtclass-nativesdk = "zlib-nativesdk libsdl-nativesdk qemugl-nativesdk"
 RDEPENDS_virtclass-nativesdk = "libsdl-nativesdk"
-EXTRA_OECONF_virtclass-nativesdk += "--target-list=${@get_qemu_target_list(d)} --disable-werror --disable-vnc-tls --cross-prefix=${TARGET_PREFIX}"
+EXTRA_OECONF_virtclass-nativesdk += "--target-list=${@get_qemu_target_list(d)} --disable-werror --disable-vnc-tls"
 
 BBCLASSEXTEND = "native nativesdk"
-- 
1.7.4


