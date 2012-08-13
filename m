Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F212DE01470
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:21:40 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 895183043A
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:21:35 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:54 -0700
Message-Id: <d87d5c60c65b79b1ea4183f0234c7094cbaef90d.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 895183043A.DC01E
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 28/57] kernel.bbclass: Copy bounds.h only if it exists, needed for 2.6.x.
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
X-List-Received-Date: Mon, 13 Aug 2012 21:21:41 -0000

From: Leon Woestenberg <leon@sidebranch.com>

Linux 2.6.x kernels did not (all) have the bounds.h file, so copy
only iff exists.

(See OE-Core 02ac0d1b65389e1779d5f95047f761d7a82ef7a4)

Signed-off-by: Leon Woestenberg <leon@sidebranch.com>
Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/classes/kernel.bbclass |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index c21ab96..5f6ff66 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -183,6 +183,11 @@ kernel_do_install() {
 		cp arch/powerpc/lib/crtsavres.o $kerneldir/arch/powerpc/lib/crtsavres.o
 	fi
 
+	# Necessary for building modules like compat-wireless.
+	if [ -f include/generated/bounds.h ]; then
+		cp include/generated/bounds.h $kerneldir/include/generated/bounds.h
+	fi
+
 	# Remove the following binaries which cause strip errors
 	# during do_package for cross-compiled platforms
 	bin_files="arch/powerpc/boot/addnote arch/powerpc/boot/hack-coff \
-- 
1.7.9.5


