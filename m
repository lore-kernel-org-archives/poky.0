Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35508E013B7
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:21:52 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id A9DCB30440
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:21:46 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:59 -0700
Message-Id: <345ac51c805488845e625c5ade0ea1f343bcf3fa.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: A9DCB30440.3FFB7
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 33/57] utils.bbclass: add helper function to add all multilib variants of a specific package
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
X-List-Received-Date: Mon, 13 Aug 2012 21:21:52 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

This is useful for the scenario where we want to add 'gcc' to
the root file system for all multilib variants

(From OE-Core rev: 7cd54693363882854cd026ebe071e9f2e03d364e)

Signed-off-by: Matthew McClintock <msm@freescale.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/classes/utils.bbclass |    9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/meta/classes/utils.bbclass b/meta/classes/utils.bbclass
index fde8f44..cc3acfa 100644
--- a/meta/classes/utils.bbclass
+++ b/meta/classes/utils.bbclass
@@ -351,6 +351,15 @@ def extend_variants(d, var, extend, delim=':'):
 			variants.append(eext[1])
 	return " ".join(variants)
 
+def multilib_pkg_extend(d, pkg):
+	variants = (d.getVar("MULTILIB_VARIANTS", True) or "").split()
+	if not variants:
+	    return pkg
+	pkgs = pkg
+	for v in variants:
+	    pkgs = pkgs + " " + v + "-" + pkg
+	return pkgs
+
 def all_multilib_tune_values(d, var, unique = True, need_split = True, delim = ' '):
 	"""Return a string of all ${var} in all multilib tune configuration"""
 	values = []
-- 
1.7.9.5


