Return-Path: <pbfwdlist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAF62E006F1; Tue, 29 Jul 2014 22:54:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HK_RANDOM_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HK_RANDOM_FROM From username looks random
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pbfwdlist[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93D03E003FA
	for <poky@yoctoproject.org>; Tue, 29 Jul 2014 22:54:19 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id n3so1656523wiv.1
	for <poky@yoctoproject.org>; Tue, 29 Jul 2014 22:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:date:content-type:mime-version
	:content-transfer-encoding;
	bh=EsOktiDqAiBVi3IGudL4SJiCOHDaolZTU04THKb/PvU=;
	b=FmhWZzpz+IfSEnQh5ept2ScNIovFo40RaerM1HeuOE/SJbnpIFzzrrZe1jWRr7yo/C
	Y7BxY2m0yhDBllO6SlL5P9yhOihIgplW0dKSzbCSNSElk3IZIdX62+/RzMPc3/2zXXwe
	3J7tVuOvNON10bcWKm3fGq965Wq/M5mj14USU9zyvnjF2hxjapUXKpjCnfrAWROoPluH
	mpFgIovK00WfnBZCJAf57fSbA0GUdsJD2lz6fVHzAZuqoeXrUKkRp7tZEjQWrOWRL+j8
	tptOeA5HBqsRGBLT0R2n4BBoeHFdZi0Fjnd6weKLX9/qavTYlkY4kjfBc0Lz91xwcm3Y
	gGug==
X-Received: by 10.180.80.70 with SMTP id p6mr3848899wix.22.1406699658592;
	Tue, 29 Jul 2014 22:54:18 -0700 (PDT)
Received: from [127.0.0.1] (laf42-1-88-166-73-101.fbx.proxad.net.
	[88.166.73.101])
	by mx.google.com with ESMTPSA id w9sm5758967wif.12.2014.07.29.22.54.17
	for <poky@yoctoproject.org>
	(version=SSLv3 cipher=RC4-SHA bits=128/128);
	Tue, 29 Jul 2014 22:54:18 -0700 (PDT)
Message-ID: <1406699656.22364.4.camel@localhost.localdomain>
From: Patrice B <pbfwdlist@gmail.com>
To: poky@yoctoproject.org
Date: Wed, 30 Jul 2014 07:54:16 +0200
X-Mailer: Evolution 3.4.4 (3.4.4-2.fc17) 
Mime-Version: 1.0
Subject: [PATCH 1/1] Add patch 0001-Typo-in-fuser-makes-M-on-all-the-time.patch
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
X-List-Received-Date: Wed, 30 Jul 2014 05:54:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

This patch fixes a major bug in fuser that makes it behave as if -M 
option is always used ( http://bugs.debian.org/740275 ). Hoping the
patches is correctly done...

Signed-off-by: Patrice Bouchand <pbfwdlist at gmail.com>

---
 ...001-Typo-in-fuser-makes-M-on-all-the-time.patch | 44 ++++++++++++++++++++++
 meta/recipes-extended/psmisc/psmisc_22.21.bb       |  2 +
 2 files changed, 46 insertions(+)
 create mode 100644 meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch

diff --git a/meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch b/meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch
new file mode 100644
index 0000000..3a4c9a9
--- /dev/null
+++ b/meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-all-the-time.patch
@@ -0,0 +1,44 @@
+From 3638cc55b4d08851faba46635d737b24d016665b Mon Sep 17 00:00:00 2001
+From: Brad Jorsch <anomie@users.sourceforge.net>
+Date: Fri, 28 Feb 2014 21:55:02 +1100
+Subject: [PATCH] Typo in fuser makes -M on all the time
+
+Brad found that fuser had the -M option on all the time.
+A simple but significant typo caused this, thanks the the patch.
+
+Bug-Debian: http://bugs.debian.org/740275
+
+Signed-off-by: Craig Small <csmall@enc.com.au>
+---
+ ChangeLog   | 4 ++++
+ src/fuser.c | 2 +-
+ 2 files changed, 5 insertions(+), 1 deletion(-)
+
+diff --git a/ChangeLog b/ChangeLog
+index fd1cccf..e5f784c 100644
+--- a/ChangeLog
++++ b/ChangeLog
+@@ -1,3 +1,7 @@
++Changes in 22.22
++================
++	* Fixed typo in fuser which has -M on Debian #740275
++
+ Changes in 22.21
+ ================
+ 	* Missing comma in fuser(1) added Debian #702391
+diff --git a/src/fuser.c b/src/fuser.c
+index b485f65..389b302 100644
+--- a/src/fuser.c
++++ b/src/fuser.c
+@@ -1174,7 +1174,7 @@ int main(int argc, char *argv[])
+ 		usage(_("No process specification given"));
+ 
+ 	/* Check if -M flag was used and if so check mounts */
+-	if (opts * OPT_ISMOUNTPOINT) {
++	if (opts & OPT_ISMOUNTPOINT) {
+ 	    check_mountpoints(&mounts, &names_head, &names_tail);
+ 	}
+ 
+-- 
+1.8.4.2
+
diff --git a/meta/recipes-extended/psmisc/psmisc_22.21.bb b/meta/recipes-extended/psmisc/psmisc_22.21.bb
index 22f65c5..9f328bb 100644
--- a/meta/recipes-extended/psmisc/psmisc_22.21.bb
+++ b/meta/recipes-extended/psmisc/psmisc_22.21.bb
@@ -4,3 +4,5 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
 
 SRC_URI[md5sum] = "935c0fd6eb208288262b385fa656f1bf"
 SRC_URI[sha256sum] = "97323cad619210845b696d7d722c383852b2acb5c49b5b0852c4f29c77a8145a"
+
+SRC_URI += "file://0001-Typo-in-fuser-makes-M-on-all-the-time.patch"
-- 
1.8.4.2





