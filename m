Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 851A3E00C2E; Wed, 27 Jan 2016 09:33:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 347A6E00C1B
	for <poky@yoctoproject.org>; Wed, 27 Jan 2016 09:33:01 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 628DE18121;
	Wed, 27 Jan 2016 18:23:43 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id 3I5P6OwyR+3o; Wed, 27 Jan 2016 18:23:42 +0100 (CET)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bastet.se.axis.com (Postfix) with ESMTP id 3587D1811C;
	Wed, 27 Jan 2016 18:23:42 +0100 (CET)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 1F7D51335;
	Wed, 27 Jan 2016 18:23:42 +0100 (CET)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id 0A3471590;
	Wed, 27 Jan 2016 18:23:42 +0100 (CET)
Received: from saur-2.se.axis.com (saur-2.se.axis.com [10.92.3.2])
	by seth.se.axis.com (Postfix) with ESMTP id 05B413E48C;
	Wed, 27 Jan 2016 18:23:42 +0100 (CET)
Received: from saur-2.se.axis.com (localhost [127.0.0.1])
	by saur-2.se.axis.com (8.14.5/8.14.5) with ESMTP id u0RHNfre001816;
	Wed, 27 Jan 2016 18:23:41 +0100
Received: (from pkj@localhost)
	by saur-2.se.axis.com (8.14.5/8.14.5/Submit) id u0RHNfXl001815;
	Wed, 27 Jan 2016 18:23:41 +0100
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: bitbake-devel@lists.openembedded.org, poky@yoctoproject.org
Date: Wed, 27 Jan 2016 18:23:31 +0100
Message-Id: <763047f5e69a5722466ef96644c3fa1c7772072f.1453915249.git.pkj@axis.com>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <cover.1453915249.git.pkj@axis.com>
References: <cover.1453915249.git.pkj@axis.com>
In-Reply-To: <cover.1453915249.git.pkj@axis.com>
References: <cover.1453915249.git.pkj@axis.com>
Subject: [PATCH 5/5] local.conf.sample.extended: Update the info about BBMASK
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
X-List-Received-Date: Wed, 27 Jan 2016 17:33:02 -0000

Update the info about BBMASK to reflect that it can now contain
multiple regular expressions.

Also correct a misspelled PREFERRED_VERSION in a comment.

Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
---
 meta-yocto/conf/local.conf.sample.extended | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-yocto/conf/local.conf.sample.extended
index 925270b..521cdcb 100644
--- a/meta-yocto/conf/local.conf.sample.extended
+++ b/meta-yocto/conf/local.conf.sample.extended
@@ -1,4 +1,4 @@
-# BBMASK is a regular expression that can be used to tell BitBake to ignore
+# BBMASK contains regular expressions that can be used to tell BitBake to ignore
 # certain recipes.
 #BBMASK = ""
 
@@ -375,7 +375,7 @@
 #
 # Currently the rootfs_rpm code has a hard depends on rpmresolve:do_populate_sysroot,
 # when using rpm4 the rpmresolve code will not compile due to a missing header file.
-# That dependency needs to be removed when using RPM4, also the PREFRRED_VERSION needs
+# That dependency needs to be removed when using RPM4, also the PREFERRED_VERSION needs
 # to be set. This example shows how to enable rpm4
 # PREFERRED_VERSION_rpm = "4.11.2"
 # PREFERRED_VERSION_rpm-native = "4.11.2"
-- 
2.1.0


