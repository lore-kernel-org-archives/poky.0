Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web10.12228.1583499799164094142
 for <poky@lists.yoctoproject.org>;
 Fri, 06 Mar 2020 05:03:19 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: jean-marie.lemetayer@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 2E8119C018C
	for <poky@lists.yoctoproject.org>; Fri,  6 Mar 2020 08:03:18 -0500 (EST)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id llVgcZEfiWbX for <poky@lists.yoctoproject.org>;
	Fri,  6 Mar 2020 08:03:17 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id A947D9C0395
	for <poky@lists.yoctoproject.org>; Fri,  6 Mar 2020 08:03:17 -0500 (EST)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id uFjlT4oisCB0 for <poky@lists.yoctoproject.org>;
	Fri,  6 Mar 2020 08:03:17 -0500 (EST)
Received: from gerard.bzh.sfl (40.73.12.109.rev.sfr.net [109.12.73.40])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 404ED9C018C
	for <poky@lists.yoctoproject.org>; Fri,  6 Mar 2020 08:03:17 -0500 (EST)
From: "Jean-Marie Lemetayer" <jean-marie.lemetayer@savoirfairelinux.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] linux-yocto: drop 5.2 bbappend
Date: Fri,  6 Mar 2020 14:03:05 +0100
Message-Id: <20200306130305.13905-1-jean-marie.lemetayer@savoirfairelinux.com>
X-Mailer: git-send-email 2.17.1

The recipe for the 5.2 kernel has been dropped in this commit:
8efa405ee0ab9ae0e674fe8bc9551f4367b4c269

The corresponding .bbapend must be removed in order to fix this error:

ERROR: No recipes available for:
  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend

Signed-off-by: Jean-Marie LEMETAYER <jean-marie.lemetayer@savoirfairelinux.com>
---
 .../linux/linux-yocto_5.2.bbappend            | 23 -------------------
 1 file changed, 23 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
deleted file mode 100644
index 9a965321df..0000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
+++ /dev/null
@@ -1,23 +0,0 @@
-KBRANCH_genericx86  = "v5.2/standard/base"
-KBRANCH_genericx86-64  = "v5.2/standard/base"
-KBRANCH_edgerouter = "v5.2/standard/edgerouter"
-KBRANCH_beaglebone-yocto = "v5.2/standard/beaglebone"
-
-KMACHINE_genericx86 ?= "common-pc"
-KMACHINE_genericx86-64 ?= "common-pc-64"
-KMACHINE_beaglebone-yocto ?= "beaglebone"
-
-SRCREV_machine_genericx86    ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
-SRCREV_machine_genericx86-64 ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
-SRCREV_machine_edgerouter ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
-SRCREV_machine_beaglebone-yocto ?= "25b14cdf9659c68ab32d66616dfdbbe2ece3fd94"
-
-COMPATIBLE_MACHINE_genericx86 = "genericx86"
-COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE_edgerouter = "edgerouter"
-COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
-
-LINUX_VERSION_genericx86 = "5.2.17"
-LINUX_VERSION_genericx86-64 = "5.2.17"
-LINUX_VERSION_edgerouter = "5.2.17"
-LINUX_VERSION_beaglebone-yocto = "5.2.17"
-- 
2.17.1

