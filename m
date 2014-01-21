Return-Path: <olof.johansson@axis.com>
Received: from anubis.se.axis.com (anubis.se.axis.com [195.60.68.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E51D4E00884
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 02:35:44 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by anubis.se.axis.com (Postfix) with ESMTP id D86653F80C9
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:35:41 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at anubis.se.axis.com
Received: from anubis.se.axis.com ([127.0.0.1])
	by localhost (anubis.se.axis.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 9zA-APY1ewFA for <poky@yoctoproject.org>;
	Tue, 21 Jan 2014 11:35:41 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by anubis.se.axis.com (Postfix) with ESMTP id DEDF13F82B5
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:07:24 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id C93BED0B
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:07:24 +0100 (CET)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id BE695D05
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:07:24 +0100 (CET)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by seth.se.axis.com (Postfix) with ESMTP id BC7F63E070
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:07:24 +0100 (CET)
Received: from lnxolofjn.se.axis.com (10.92.17.1) by xmail2.se.axis.com
	(10.0.5.74) with Microsoft SMTP Server id 8.2.255.0; Tue, 21 Jan 2014
	11:07:24 +0100
Received: by lnxolofjn.se.axis.com (Postfix, from userid 20466)	id 681109C078; 
	Tue, 21 Jan 2014 11:07:24 +0100 (CET)
From: Olof Johansson <olof.johansson@axis.com>
To: <poky@yoctoproject.org>
Date: Tue, 21 Jan 2014 11:07:23 +0100
Message-ID: <1390298844-7709-2-git-send-email-olof.johansson@axis.com>
X-Mailer: git-send-email 1.8.5.2
In-Reply-To: <1390298844-7709-1-git-send-email-olof.johansson@axis.com>
References: <1390298844-7709-1-git-send-email-olof.johansson@axis.com>
MIME-Version: 1.0
Subject: [PATCH 1/2] poky.conf: add Debian 7.3 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Tue, 21 Jan 2014 10:35:52 -0000
Content-Type: text/plain

7.3 is a point release with security and bug fixes only, and I can
confirm that it works.

Signed-off-by: Olof Johansson <olof.johansson@axis.com>
---
 meta-yocto/conf/distro/poky.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 3340064..33617a1 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -86,6 +86,7 @@ SANITY_TESTED_DISTROS ?= " \
             Debian-7.0 \n \
             Debian-7.1 \n \
             Debian-7.2 \n \
+            Debian-7.3 \n \
             SUSE-LINUX-12.2 \n \
             openSUSE-project-12.3 \n \
             "
-- 
1.8.5.2


