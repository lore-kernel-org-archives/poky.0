Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CF3CE0054C; Thu, 31 Jul 2014 01:40:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F408E004D1
	for <poky@yoctoproject.org>; Thu, 31 Jul 2014 01:40:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s6V8efMc002663
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 31 Jul 2014 01:40:42 -0700 (PDT)
Received: from pek-qchen1-d1.corp.ad.wrs.com (128.224.162.187) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.174.1; Thu, 31 Jul 2014 01:40:41 -0700
From: Chen Qi <Qi.Chen@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 31 Jul 2014 16:41:06 +0800
Message-ID: <1406796066-25004-1-git-send-email-Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [PATCH] local.conf.sample.extended: fix example for EXTRA_USERS_PARAMS
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
X-List-Received-Date: Thu, 31 Jul 2014 08:40:51 -0000
Content-Type: text/plain

The `groupdel' command doesn't support '-g' option, so remove it.

[YOCTO #6575]

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-yocto/conf/local.conf.sample.extended |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 89b80a6..f26d612 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -275,7 +275,7 @@
 #useradd -p '' tester; \
 #groupadd developers; \
 #userdel nobody; \
-#groupdel -g video; \
+#groupdel video; \
 #groupmod -g 1020 developers; \
 #usermod -s /bin/sh tester; \
 #"
-- 
1.7.9.5


