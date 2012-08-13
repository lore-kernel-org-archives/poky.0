Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DC14E013B2
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:22:15 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 6013A3042E
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:22:07 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:20:08 -0700
Message-Id: <63cd3347d265a5b5be977cedac312933641301dc.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 6013A3042E.EAA87
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 42/57] classes/license: fix manifest to work with deb
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
X-List-Received-Date: Mon, 13 Aug 2012 21:22:15 -0000

From: Paul Eggleton <paul.eggleton@linux.intel.com>

Prepend the license manifest creation call to ROOTFS_POSTPROCESS_COMMAND
instead of appending to ROOTFS_POSTINSTALL_COMMAND. The latter is not
implemented for the deb backend (and probably ought to just be removed
completely), and by using _prepend we can still ensure it occurs before
package info is removed (and before buildhistory in case it is needed
there in future).

(From OE-Core rev: 56fafe083fdb63f156a081344fb1d836e3182bf0)

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/classes/license.bbclass |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/classes/license.bbclass b/meta/classes/license.bbclass
index 6c4a673..cd4512e 100644
--- a/meta/classes/license.bbclass
+++ b/meta/classes/license.bbclass
@@ -382,7 +382,7 @@ do_populate_lic[sstate-name] = "populate-lic"
 do_populate_lic[sstate-inputdirs] = "${LICSSTATEDIR}"
 do_populate_lic[sstate-outputdirs] = "${LICENSE_DIRECTORY}/"
 
-ROOTFS_POSTINSTALL_COMMAND += "license_create_manifest; "
+ROOTFS_POSTPROCESS_COMMAND_prepend = "license_create_manifest; "
 
 python do_populate_lic_setscene () {
 	sstate_setscene(d)
-- 
1.7.9.5


