Return-Path: <olof.johansson@axis.com>
Received: from anubis.se.axis.com (anubis.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1D63E00744
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 01:37:41 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by anubis.se.axis.com (Postfix) with ESMTP id 57DB119E55
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 10:37:35 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at anubis.se.axis.com
Received: from anubis.se.axis.com ([127.0.0.1])
	by localhost (anubis.se.axis.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id v49M1FBCtBVx for <poky@yoctoproject.org>;
	Mon, 10 Feb 2014 10:37:34 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by anubis.se.axis.com (Postfix) with ESMTP id B156F19E4B
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 10:37:34 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 6E2904C6
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 10:37:34 +0100 (CET)
Received: from thoth.se.axis.com (thoth.se.axis.com [10.0.2.173])
	by boulder.se.axis.com (Postfix) with ESMTP id 635E334B
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 10:37:34 +0100 (CET)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by thoth.se.axis.com (Postfix) with ESMTP id 6185034005
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 10:37:34 +0100 (CET)
Received: from lnxolofjn.se.axis.com (10.92.17.1) by xmail2.se.axis.com
	(10.0.5.74) with Microsoft SMTP Server id 8.2.255.0; Mon, 10 Feb 2014
	10:37:34 +0100
Received: by lnxolofjn.se.axis.com (Postfix, from userid 20466)	id 04CC59C29A; 
	Mon, 10 Feb 2014 10:37:33 +0100 (CET)
From: Olof Johansson <olof.johansson@axis.com>
To: <poky@yoctoproject.org>
Date: Mon, 10 Feb 2014 10:37:33 +0100
Message-ID: <1392025053-22406-1-git-send-email-olof.johansson@axis.com>
X-Mailer: git-send-email 1.8.5.3
MIME-Version: 1.0
Subject: [PATCH] poky.conf: Add Debian-7.4 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Mon, 10 Feb 2014 09:37:45 -0000
Content-Type: text/plain

Signed-off-by: Olof Johansson <olof.johansson@axis.com>
---
 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 9f45b6c..b04c597 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -86,6 +86,7 @@ SANITY_TESTED_DISTROS ?= " \
             Debian-7.1 \n \
             Debian-7.2 \n \
             Debian-7.3 \n \
+            Debian-7.4 \n \
             SUSE-LINUX-12.2 \n \
             openSUSE-project-12.3 \n \
             "
-- 
1.8.5.3


