Return-Path: <olof.johansson@axis.com>
Received: from ra.se.axis.com (ra.se.axis.com [195.60.68.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39114E01684
	for <poky@yoctoproject.org>; Wed, 16 Oct 2013 02:51:32 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by ra.se.axis.com (Postfix) with ESMTP id 1FCC011EA4
	for <poky@yoctoproject.org>; Wed, 16 Oct 2013 11:51:29 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at ra.se.axis.com
Received: from ra.se.axis.com ([127.0.0.1])
	by localhost (ra.se.axis.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id HgxjKVK3jIhC for <poky@yoctoproject.org>;
	Wed, 16 Oct 2013 11:51:26 +0200 (CEST)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by ra.se.axis.com (Postfix) with ESMTP id 6BF4711EB0
	for <poky@yoctoproject.org>; Wed, 16 Oct 2013 11:51:26 +0200 (CEST)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 555FFABC
	for <poky@yoctoproject.org>; Wed, 16 Oct 2013 11:51:26 +0200 (CEST)
Received: from thoth.se.axis.com (thoth.se.axis.com [10.0.2.173])
	by boulder.se.axis.com (Postfix) with ESMTP id 2EE83AB3
	for <poky@yoctoproject.org>; Wed, 16 Oct 2013 11:51:26 +0200 (CEST)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by thoth.se.axis.com (Postfix) with ESMTP id 29B803404E
	for <poky@yoctoproject.org>; Wed, 16 Oct 2013 11:51:26 +0200 (CEST)
Received: from lnxolofjn.se.axis.com (10.92.17.1) by xmail2.se.axis.com
	(10.0.5.74) with Microsoft SMTP Server id 8.2.255.0; Wed, 16 Oct 2013
	11:51:25 +0200
Received: by lnxolofjn.se.axis.com (Postfix, from userid 20466)	id E03A79C078; 
	Wed, 16 Oct 2013 11:51:25 +0200 (CEST)
From: Olof Johansson <olof.johansson@axis.com>
To: <poky@yoctoproject.org>
Date: Wed, 16 Oct 2013 11:51:25 +0200
Message-ID: <1381917085-11735-1-git-send-email-olof.johansson@axis.com>
X-Mailer: git-send-email 1.7.10.4
MIME-Version: 1.0
Subject: [PATCH] poky.conf: add Debian 7.2 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Wed, 16 Oct 2013 09:51:35 -0000
Content-Type: text/plain

7.2 is a point release with security and bug fixes only, and I can
confirm that it works.

Signed-off-by: Olof Johansson <olof.johansson@axis.com>
---

I tried to send this earlier, but the mail didn't seem to get through.
I applogize if you end up receiving duplicates.

---
 meta-yocto/conf/distro/poky.conf |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 44bc4c6..bac20bd 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -83,6 +83,7 @@ SANITY_TESTED_DISTROS ?= " \
             Debian-6.0.7 \n \
             Debian-7.0 \n \
             Debian-7.1 \n \
+            Debian-7.2 \n \
             SUSE-LINUX-12.2 \n \
             openSUSE-project-12.3 \n \
             "
-- 
1.7.10.4


