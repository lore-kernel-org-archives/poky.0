Return-Path: <Paul.Gortmaker@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68341E00572; Thu, 31 Jul 2014 12:19:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8498CE004E0
	for <poky@yoctoproject.org>; Thu, 31 Jul 2014 12:19:44 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s6VJJfPM011266
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 31 Jul 2014 12:19:41 -0700 (PDT)
Received: from yow-pgortmak-d4.wrs.com (128.224.56.60) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.174.1; Thu, 31 Jul 2014 12:19:41 -0700
From: Paul Gortmaker <paul.gortmaker@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Thu, 31 Jul 2014 15:19:26 -0400
Message-ID: <1406834366-48632-1-git-send-email-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH] bitbake.conf: make ROOT_HOME default match the rest of the world
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
X-List-Received-Date: Thu, 31 Jul 2014 19:19:47 -0000
Content-Type: text/plain

All distros that I've ever used have /root as the home dir for
UID=0 (root) and even the Filesystem Hierarchy Standard lists
it as /root [1].  So if you've never come across the /home/root
thing before, it can violate the principle of least surprise.

In addition, using /home/root does suck if /home happens to be
on NFS, and you are trying to login as root to rescue something.

Change the default to be "/root" so we are consistent with the
rest of the world and the standards.  If someone wants /home/root
to be back compatible with earlier oe-core/yocto builds, they
can simply set ROOT_HOME themselves in their local.conf file.

[1] http://www.pathname.com/fhs/pub/fhs-2.3.html#ROOTHOMEDIRECTORYFORTHEROOTUSER

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>

diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index 5872d1d12cff..fecb45d173dd 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -74,8 +74,9 @@ USRBINPATH = "${bindir}"
 USRBINPATH_class-native = "/usr/bin"
 USRBINPATH_class-nativesdk = "/usr/bin"
 
-# Root home directory
-ROOT_HOME ??= "/home/root"
+# Root home directory, typically /root but optionally sometimes
+# /home/root if and only if /home is local and != NFS
+ROOT_HOME ??= "/root"
 
 ##################################################################
 # Architecture-dependent build variables.
-- 
1.9.1


