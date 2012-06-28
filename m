Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDA01E01304
	for <poky@yoctoproject.org>; Thu, 28 Jun 2012 13:43:17 -0700 (PDT)
Received: by dadz8 with SMTP id z8so4039444dad.35
	for <poky@yoctoproject.org>; Thu, 28 Jun 2012 13:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=IAlAAK4kvITm36W9O679neIAx5DJKPE58RVLlzw2W5I=;
	b=M+8hCjKOKLZUQGaL8LPLt2mGBpRdZVrs5v/zYkBzOPTqonbTEnF6M5hlR/e8ITV9ld
	T/o2hkShJgskHRQ8SWdi5ieaSzlDZ5DjgcOxOUowf7b3kepqc2osLvQ5CZxlo9L+2L0q
	tC5xBpLooO6Y0aYr0yZYIeJA7kzJ3iRVdEOiS4YnYLNnVmKU5lHV/FwKNnNAYKdx+zIa
	6YOgIO8wEpmE+i0XPwFmRteWm1UdOX8uMP8S82lUUARTUj7pVP1wdjwiuZc51Pd/qH5R
	TCFexA+EKr3GYd3wQFtEhzSTjfSy6YAHJfA1NkvMlFiyWoAbXKWKc4/0m2J1zRyVhmhr
	6fSg==
Received: by 10.68.203.66 with SMTP id ko2mr11716439pbc.84.1340916197413;
	Thu, 28 Jun 2012 13:43:17 -0700 (PDT)
Received: from agate.agate.openembedded.org (oldbuilder.nslu2-linux.org.
	[140.211.169.168])
	by mx.google.com with ESMTPS id np8sm3094239pbc.71.2012.06.28.13.43.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 28 Jun 2012 13:43:16 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Thu, 28 Jun 2012 13:42:46 -0700
Message-Id: <1340916166-23948-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [denzil][PATCH] bitbake: fetch2: Explicitly check for mirror tarballs in mirror handling code
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Jun 2012 20:43:17 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

With support for things like git:// -> git:// urls, we need to be
more explicity about the mirrortarball check since we need to fall
through to the following code in other cases.

(From Poky rev: 28e858cd6f7509468ef3e527a86820b9e06044db)

(Bitbake rev: a2459f5ca2f517964287f9a7c666a6856434e631)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Conflicts:

	bitbake/lib/bb/fetch2/__init__.py

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 bitbake/lib/bb/fetch2/__init__.py |   55 +++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 414cc2b..f70cb19 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -446,6 +446,61 @@ def check_network_access(d, info = "", url = None):
     else:
         logger.debug(1, "Fetcher accessed the network with the command %s" % info)
 
+def try_mirror_url(newuri, origud, ud, ld, check = False):
+    # Return of None or a value means we're finished
+    # False means try another url
+    try:
+        if check:
+            found = ud.method.checkstatus(newuri, ud, ld)
+            if found:
+                return found
+            return False
+
+        os.chdir(ld.getVar("DL_DIR", True))
+
+        if not os.path.exists(ud.donestamp) or ud.method.need_update(newuri, ud, ld):
+            ud.method.download(newuri, ud, ld)
+            if hasattr(ud.method,"build_mirror_data"):
+                ud.method.build_mirror_data(newuri, ud, ld)
+
+        if not ud.localpath or not os.path.exists(ud.localpath):
+            return False
+
+        if ud.localpath == origud.localpath:
+            return ud.localpath
+
+        # We may be obtaining a mirror tarball which needs further processing by the real fetcher
+        # If that tarball is a local file:// we need to provide a symlink to it
+        dldir = ld.getVar("DL_DIR", True)
+        if origud.mirrortarball and os.path.basename(ud.localpath) == os.path.basename(origud.mirrortarball) \
+                and os.path.basename(ud.localpath) != os.path.basename(origud.localpath):
+            open(ud.donestamp, 'w').close()
+            dest = os.path.join(dldir, os.path.basename(ud.localpath))
+            if not os.path.exists(dest):
+                os.symlink(ud.localpath, dest)
+            return None
+        # Otherwise the result is a local file:// and we symlink to it
+        if not os.path.exists(origud.localpath):
+             os.symlink(ud.localpath, origud.localpath)
+        update_stamp(newuri, origud, ld)
+        return ud.localpath
+
+    except bb.fetch2.NetworkAccess:
+        raise
+
+    except bb.fetch2.BBFetchException as e:
+        if isinstance(e, ChecksumError):
+            logger.warn("Mirror checksum failure for url %s (original url: %s)\nCleaning and trying again." % (newuri, origud.url))
+            logger.warn(str(e))
+        else:
+            logger.debug(1, "Mirror fetch failure for url %s (original url: %s)" % (newuri, origud.url))
+            logger.debug(1, str(e))
+        try:
+            ud.method.clean(ud, ld)
+        except UnboundLocalError:
+            pass
+        return False
+
 def try_mirrors(d, origud, mirrors, check = False):
     """
     Try to use a mirrored version of the sources.
-- 
1.7.9.5


