Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 143A2D4335D
	for <webhook@archiver.kernel.org>; Thu,  7 Nov 2024 13:48:15 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.72351.1730987289717192132
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Nov 2024 05:48:09 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 22B59497
	for <poky@lists.yoctoproject.org>; Thu,  7 Nov 2024 05:48:39 -0800 (PST)
Received: from cesw-amp-gbt-1s-m12830-04.oss.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E0C9E3F66E
	for <poky@lists.yoctoproject.org>; Thu,  7 Nov 2024 05:48:08 -0800 (PST)
From: Ross Burton <ross.burton@arm.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] local.conf.sample: update IMAGE_FEATURES comments to remove debug-tweaks
Date: Thu,  7 Nov 2024 13:48:05 +0000
Message-Id: <20241107134805.2071772-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 07 Nov 2024 13:48:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13482

Remove debug-tweaks and add the features that it included.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 .../conf/templates/default/local.conf.sample  | 36 +++++++++----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/meta-poky/conf/templates/default/local.conf.sample b/meta-po=
ky/conf/templates/default/local.conf.sample
index cfa77106ab3..02aa3f238f2 100644
--- a/meta-poky/conf/templates/default/local.conf.sample
+++ b/meta-poky/conf/templates/default/local.conf.sample
@@ -125,24 +125,24 @@ DISTRO ?=3D "poky"
 # Extra image configuration defaults
 #
 # The EXTRA_IMAGE_FEATURES variable allows extra packages to be added to=
 the generated
-# images. Some of these options are added to certain image types automat=
ically. The
-# variable can contain the following options:
-#  "dbg-pkgs"       - add -dbg packages for all installed packages
-#                     (adds symbol information for debugging/profiling)
-#  "src-pkgs"       - add -src packages for all installed packages
-#                     (adds source code for debugging)
-#  "dev-pkgs"       - add -dev packages for all installed packages
-#                     (useful if you want to develop against libs in the=
 image)
-#  "ptest-pkgs"     - add -ptest packages for all ptest-enabled packages
-#                     (useful if you want to run the package test suites=
)
-#  "tools-sdk"      - add development tools (gcc, make, pkgconfig etc.)
-#  "tools-debug"    - add debugging tools (gdb, strace)
-#  "eclipse-debug"  - add Eclipse remote debugging support
-#  "tools-profile"  - add profiling tools (oprofile, lttng, valgrind)
-#  "tools-testapps" - add useful testing tools (ts_print, aplay, arecord=
 etc.)
-#  "debug-tweaks"   - make an image suitable for development
-#                     e.g. ssh root access has a blank password
-# There are other application targets that can be used here too, see
+# images. Some of these options are added to certain image types automat=
ically. Some
+# of the features available are:
+#  "dbg-pkgs"             - add -dbg packages for all installed packages
+#                           (adds symbol information for debugging/profi=
ling)
+#  "src-pkgs"             - add -src packages for all installed packages
+#                           (adds source code for debugging)
+#  "dev-pkgs"             - add -dev packages for all installed packages
+#                           (useful if you want to develop against libs =
in the image)
+#  "ptest-pkgs"           - add -ptest packages for all ptest-enabled pa=
ckages
+#                           (useful if you want to run the package test =
suites)
+#  "tools-sdk"            - add development tools (gcc, make, pkgconfig =
etc.)
+#  "tools-debug"          - add debugging tools (gdb, strace)
+#  "tools-profile"        - add profiling tools (oprofile, lttng, valgri=
nd)
+#  "tools-testapps"       - add useful testing tools (ts_print, aplay, a=
record etc.)
+#  "allow-empty-password" - allow users to have an empty password
+#  "empty-root-password"  - the root user has no password set
+#  "allow-root-login      - the root user can login
+# There are other features that can be used here too, see
 # meta/classes-recipe/image.bbclass and
 # meta/classes-recipe/core-image.bbclass for more details.
 # We default to allowing root login without a password for convenience.
--=20
2.34.1


