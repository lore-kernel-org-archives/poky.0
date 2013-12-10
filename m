Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23E1FE005B1
	for <poky@yoctoproject.org>; Tue, 10 Dec 2013 02:02:12 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rBAA2BLf000406
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 10 Dec 2013 02:02:11 -0800 (PST)
Received: from pek-qchen1-d1.corp.ad.wrs.com (128.224.162.213) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.347.0; Tue, 10 Dec 2013 02:02:10 -0800
From: <Qi.Chen@windriver.com>
To: <poky@yoctoproject.org>
Date: Tue, 10 Dec 2013 18:03:02 +0800
Message-ID: <1386669782-9127-1-git-send-email-Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [PATCH] local.conf.sample.extended: add example for setting clear text password
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
X-List-Received-Date: Tue, 10 Dec 2013 10:02:18 -0000
Content-Type: text/plain

From: Chen Qi <Qi.Chen@windriver.com>

Add extra information about how to set password in clear text via
EXTRA_USERS_PARAMS.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-yocto/conf/local.conf.sample.extended |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 628f14d..bc5f8a9 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -242,6 +242,12 @@
 #usermod -s /bin/sh tester; \
 #"
 
+# The following -P option is OE specific, it's used to set / modify the password with clear text.
+# The following example modifies the password for root to 'oecore'.
+#EXTRA_USERS_PARAMS += "\
+#usermod -P 'oecore' root; \
+#"
+
 # Enabling FORTRAN
 # Note this is not officially supported and is just illustrated here to
 # show an example of how it can be done
-- 
1.7.9.5


