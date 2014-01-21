Return-Path: <olof.johansson@axis.com>
Received: from anubis.se.axis.com (anubis.se.axis.com [195.60.68.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3CB4E0087B
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 02:35:44 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by anubis.se.axis.com (Postfix) with ESMTP id 6D6433F809A
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:35:40 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at anubis.se.axis.com
Received: from anubis.se.axis.com ([127.0.0.1])
	by localhost (anubis.se.axis.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id lD55qzK3Lxrv for <poky@yoctoproject.org>;
	Tue, 21 Jan 2014 11:35:39 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by anubis.se.axis.com (Postfix) with ESMTP id DDF4F3F82B4
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:07:24 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id C8072D0A
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:07:24 +0100 (CET)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id BD079916
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:07:24 +0100 (CET)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by seth.se.axis.com (Postfix) with ESMTP id BBC563E06F
	for <poky@yoctoproject.org>; Tue, 21 Jan 2014 11:07:24 +0100 (CET)
Received: from lnxolofjn.se.axis.com (10.92.17.1) by xmail2.se.axis.com
	(10.0.5.74) with Microsoft SMTP Server id 8.2.255.0; Tue, 21 Jan 2014
	11:07:24 +0100
Received: by lnxolofjn.se.axis.com (Postfix, from userid 20466)	id 858F09C079; 
	Tue, 21 Jan 2014 11:07:24 +0100 (CET)
From: Olof Johansson <olof.johansson@axis.com>
To: <poky@yoctoproject.org>
Date: Tue, 21 Jan 2014 11:07:24 +0100
Message-ID: <1390298844-7709-3-git-send-email-olof.johansson@axis.com>
X-Mailer: git-send-email 1.8.5.2
In-Reply-To: <1390298844-7709-1-git-send-email-olof.johansson@axis.com>
References: <1390298844-7709-1-git-send-email-olof.johansson@axis.com>
MIME-Version: 1.0
Subject: [PATCH 2/2] poky.conf: Remove Debian Squeeze from SANITY_TESTED_DISTROS
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

Debian Squeeze is not a supported platform, since the bitbake python
dependency on Python was bumped to 2.7.

Signed-off-by: Olof Johansson <olof.johansson@axis.com>
---
 meta-yocto/conf/distro/poky.conf | 1 -
 1 file changed, 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 33617a1..9f45b6c 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -82,7 +82,6 @@ SANITY_TESTED_DISTROS ?= " \
             Fedora-19 \n \
             Fedora-20 \n \
             CentOS-6.4 \n \
-            Debian-6.0.7 \n \
             Debian-7.0 \n \
             Debian-7.1 \n \
             Debian-7.2 \n \
-- 
1.8.5.2


