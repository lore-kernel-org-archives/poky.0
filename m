Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE472E0143A
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:22:03 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 4624030446
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:21:58 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:20:04 -0700
Message-Id: <feb61c8d2814ab3a727c819f3ecef18662c30376.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 4624030446.C9A6F
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 38/57] foomatic: fix perl path for target
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
X-List-Received-Date: Mon, 13 Aug 2012 21:22:03 -0000

From: Saul Wold <sgw@linux.intel.com>

This problem appears on F17 when configure finds /bin/perl, since the beh
script is a target side script, we need to set PERL in the do_configure_prepend
in order for the correct perl to be used

(From OE-Core rev: 5290e82ecef08b5e573d7442627276d7b42c6b93)

Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Reworked commit to fix merge conflicts with denzil branch.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../foomatic/foomatic-filters_4.0.7.bb             |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb b/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
index 223bb02..8626d38 100644
--- a/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
+++ b/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
@@ -10,7 +10,7 @@ format using a printer-specific, but spooler-independent PPD file. \
 "
 
 DEPENDS += "cups perl libxml2"
-PR = "r3"
+PR = "r4"
 
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://${WORKDIR}/foomatic-filters-${PV}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
@@ -25,6 +25,7 @@ inherit autotools
 EXTRA_OECONF += "--disable-file-converter-check --with-file-converter=texttops"
 
 do_configure_prepend() {
+    export PERL="${bindir}/env perl"
     export LIB_CUPS=${exec_prefix}/lib/cups               # /usr/lib NOT libdir
     export CUPS_BACKENDS=${exec_prefix}/lib/cups/backend  # /usr/lib NOT libdir
     export CUPS_FILTERS=${exec_prefix}/lib/cups/filter    # /usr/lib NOT libdir
-- 
1.7.9.5


