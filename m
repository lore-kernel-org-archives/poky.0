Return-Path: <mcfrisk@kapsi.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECC87E00B45; Thu,  1 Jun 2017 09:08:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.30.184.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 933 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Jun 2017 09:08:41 PDT
Received: from mail.kapsi.fi (mail.kapsi.fi [217.30.184.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEDE1E00992
	for <poky@yoctoproject.org>; Thu,  1 Jun 2017 09:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	s=20161220; 
	h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From;
	bh=4j13ojxkCrICnj3xzlCM2BIqIgpmzNGqasPDtXf8W3w=; 
	b=EPteVMTg5LD6lE0dcz3z/KA7+8wDaFtkhmct7NuLgv4+UXnz/B/EFxSSk75MR3rXc9aXASxD94MNspyXlja3u05nG878E+7PB6gvRp/b96asGQILvQmgjXABWNeMTIsOabHN6jntQLlThjHSBQxLGxjmxq0W3z+5ZbNmqiVER5uf9dGcY8tS5tYB75tswO+snv9w5cabhy92zQ9e3myHALnPPoZRl2Xz8E6RnZZfUEmkGwO+/uZqUhDfifrae69maKopVEYM3K60//pBHB9fVTrn4E4kYpTtXFQpFW9W5W38KxC8WRijb3Bptf+OL5GJcE/S8DA26GVvXdxaQzOLEQ==;
Received: from lakka.kapsi.fi ([2001:1bc8:1004::1] ident=Debian-exim)
	by mail.kapsi.fi with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
	(Exim 4.84_2) (envelope-from <mcfrisk@kapsi.fi>)
	id 1dGSPK-0005hy-F5; Thu, 01 Jun 2017 18:53:06 +0300
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.84_2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1dGSPK-0001VI-Dc; Thu, 01 Jun 2017 18:53:06 +0300
From: Mikko Rapeli <mikko.rapeli@bmw.de>
To: poky@yoctoproject.org
Date: Thu,  1 Jun 2017 18:52:59 +0300
Message-Id: <1496332379-3802-1-git-send-email-mikko.rapeli@bmw.de>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <20170601125029.wli6reydiovo7xjk@hiutale>
References: <20170601125029.wli6reydiovo7xjk@hiutale>
X-SA-Exim-Connect-IP: 2001:1bc8:1004::1
X-SA-Exim-Mail-From: mcfrisk@kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Cc: openembedded-core@lists.openembedded.org
Subject: [PATCH 2/3 v2] scripts: Fix return value checks from subprocess.call()'s
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
X-List-Received-Date: Thu, 01 Jun 2017 16:08:44 -0000

Python function subprocess.call() returns the return value of the
executed process. If return values are not checked, errors may
go unnoticed and bad things can happen.

Change all callers of subprocess.call() which do not check for
the return value to use subprocess.check_call() which raises
CalledProcessError if the subprocess returns with non-zero value.

https://docs.python.org/2/library/subprocess.html#using-the-subprocess-module

All users of the function were found with:

$ git grep "subprocess\.call" | \
  egrep -v 'if.*subprocess\.call|=\ +subprocess\.call|return.*subprocess\.call'

Tested similar patch on top of yocto jethro. Only compile tested
core-image-minimal on poky master branch.

Signed-off-by: Mikko Rapeli <mikko.rapeli@bmw.de>
---
 scripts/runqemu | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

v2:
split patches to bitbake, meta and scripts

v1:
http://lists.openembedded.org/pipermail/openembedded-core/2017-May/136901.html

diff --git a/scripts/runqemu b/scripts/runqemu
index 72c4176..416c3f7 100755
--- a/scripts/runqemu
+++ b/scripts/runqemu
@@ -1098,7 +1098,7 @@ class BaseConfig(object):
         if self.serialstdio:
             logger.info("Interrupt character is '^]'")
             cmd = "stty intr ^]"
-            subprocess.call(cmd, shell=True)
+            subprocess.check_call(cmd, shell=True)
 
             first_serial = ""
             if not re.search("-nographic", self.qemu_opt):
@@ -1145,7 +1145,7 @@ class BaseConfig(object):
         if self.cleantap:
             cmd = 'sudo %s %s %s' % (self.qemuifdown, self.tap, self.bindir_native)
             logger.info('Running %s' % cmd)
-            subprocess.call(cmd, shell=True)
+            subprocess.check_call(cmd, shell=True)
         if self.lock_descriptor:
             logger.info("Releasing lockfile for tap device '%s'" % self.tap)
             self.release_lock()
@@ -1154,11 +1154,11 @@ class BaseConfig(object):
             logger.info("Shutting down the userspace NFS server...")
             cmd = "runqemu-export-rootfs stop %s" % self.rootfs
             logger.info('Running %s' % cmd)
-            subprocess.call(cmd, shell=True)
+            subprocess.check_call(cmd, shell=True)
 
         if self.saved_stty:
             cmd = "stty %s" % self.saved_stty
-            subprocess.call(cmd, shell=True)
+            subprocess.check_call(cmd, shell=True)
 
         if self.clean_nfs_dir:
             logger.info('Removing %s' % self.rootfs)
-- 
1.9.1


