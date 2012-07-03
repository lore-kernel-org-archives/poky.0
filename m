Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74267E00739
	for <poky@yoctoproject.org>; Tue,  3 Jul 2012 15:32:29 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id rq8so11784488pbb.35
	for <poky@yoctoproject.org>; Tue, 03 Jul 2012 15:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=/qiOnuIEVe2TBdBkc4XgsQe9AeAZHZBKQZ89rmdMzcc=;
	b=YTTubqaLL7omXkXmm3PVV4egyriT4/BRzCJGLALHsSAG5Dftc1DsEqDwZFBmvUJbCw
	myOrFhVnShBLEIsG3LnMp4TAUbvIUCmBqekJxJ9yL4q/DTc6SfSGO0rDGXJ08wUCVuPu
	H0YuPKM2CrqE2Snwyz+TE2REJ8bFWt9YdWp6E8pvOT76egkjpx+oOry7Wj3pMfylH5UM
	VLoxOjp2G/0qQjVNCo6rjEAU033eoYWe4LKm8QZjXeo+BhEqUFPXbgtZNPJOQSTBo/9T
	b3uJ0u5Gz1dMFbpUyW3eGXhzQL/6Fz3Sk4QE1GOMPeFxzhWAvjEmML3oiuktnBI2a8ir
	OmcQ==
Received: by 10.68.191.8 with SMTP id gu8mr11348172pbc.158.1341354749263;
	Tue, 03 Jul 2012 15:32:29 -0700 (PDT)
Received: from leo.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id nj4sm2425447pbc.5.2012.07.03.15.32.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jul 2012 15:32:28 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jul 2012 15:32:02 -0700
Message-Id: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1341354357.git.raj.khem@gmail.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
Subject: [denzil][PATCH 1/9] bitbake/fetch: Spell out which fetcher backends support and recommend checksums
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
X-List-Received-Date: Tue, 03 Jul 2012 22:32:29 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

There were some hardcoded behaviours in the system for which backends
support checksums verses which backends recommend them verses which
don't recommend them.

This moves the functionality into specific fetchers and then makes the
general code generic. This cleans up the codebase and fixes some corner
cases such as trying to checksum directories returned by the git fetcher.

(Bitbake rev: ef6d268f7b8527541a7fb044cf95a973be4097f4)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

Conflicts:

	bitbake/lib/bb/fetch2/__init__.py

Signed-off-by: Khem Raj <kraj@juniper.net>
---
 bitbake/lib/bb/fetch2/__init__.py |   56 ++++++++++++++++++++++++-------------
 bitbake/lib/bb/fetch2/git.py      |    3 ++
 bitbake/lib/bb/fetch2/ssh.py      |    3 ++
 bitbake/lib/bb/fetch2/wget.py     |    3 ++
 4 files changed, 46 insertions(+), 19 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 414cc2b..ec043a8 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -268,30 +268,31 @@ def verify_checksum(u, ud, d):
     matched
     """
 
-    if not ud.type in ["http", "https", "ftp", "ftps"]:
+    if not ud.method.supports_checksum(ud):
         return
 
     md5data = bb.utils.md5_file(ud.localpath)
     sha256data = bb.utils.sha256_file(ud.localpath)
 
-    # If strict checking enabled and neither sum defined, raise error
-    strict = d.getVar("BB_STRICT_CHECKSUM", True) or None
-    if (strict and ud.md5_expected == None and ud.sha256_expected == None):
-        raise FetchError('No checksum specified for %s, please add at least one to the recipe:\n'
-                         'SRC_URI[%s] = "%s"\nSRC_URI[%s] = "%s"' %
-                         (ud.localpath, ud.md5_name, md5data,
-                         ud.sha256_name, sha256data), u)
-
-    # Log missing sums so user can more easily add them
-    if ud.md5_expected == None:
-        logger.warn('Missing md5 SRC_URI checksum for %s, consider adding to the recipe:\n'
-                    'SRC_URI[%s] = "%s"',
-                    ud.localpath, ud.md5_name, md5data)
-
-    if ud.sha256_expected == None:
-        logger.warn('Missing sha256 SRC_URI checksum for %s, consider adding to the recipe:\n'
-                    'SRC_URI[%s] = "%s"',
-                    ud.localpath, ud.sha256_name, sha256data)
+    if ud.method.recommends_checksum(ud):
+        # If strict checking enabled and neither sum defined, raise error
+        strict = d.getVar("BB_STRICT_CHECKSUM", True) or None
+        if (strict and ud.md5_expected == None and ud.sha256_expected == None):
+            raise FetchError('No checksum specified for %s, please add at least one to the recipe:\n'
+                             'SRC_URI[%s] = "%s"\nSRC_URI[%s] = "%s"' %
+                             (ud.localpath, ud.md5_name, md5data,
+                              ud.sha256_name, sha256data), u)
+
+        # Log missing sums so user can more easily add them
+        if ud.md5_expected == None:
+            logger.warn('Missing md5 SRC_URI checksum for %s, consider adding to the recipe:\n'
+                        'SRC_URI[%s] = "%s"',
+                        ud.localpath, ud.md5_name, md5data)
+
+        if ud.sha256_expected == None:
+            logger.warn('Missing sha256 SRC_URI checksum for %s, consider adding to the recipe:\n'
+                        'SRC_URI[%s] = "%s"',
+                        ud.localpath, ud.sha256_name, sha256data)
 
     md5mismatch = False
     sha256mismatch = False
@@ -574,10 +575,14 @@ class FetchData(object):
             self.sha256_name = "sha256sum"
         if self.md5_name in self.parm:
             self.md5_expected = self.parm[self.md5_name]
+        elif self.type not in ["http", "https", "ftp", "ftps"]:
+            self.md5_expected = None
         else:
             self.md5_expected = d.getVarFlag("SRC_URI", self.md5_name)
         if self.sha256_name in self.parm:
             self.sha256_expected = self.parm[self.sha256_name]
+        elif self.type not in ["http", "https", "ftp", "ftps"]:
+            self.sha256_expected = None
         else:
             self.sha256_expected = d.getVarFlag("SRC_URI", self.sha256_name)
 
@@ -656,6 +661,19 @@ class FetchMethod(object):
         """
         return os.path.join(data.getVar("DL_DIR", d, True), urldata.localfile)
 
+    def supports_checksum(self, urldata):
+        """
+        Is localpath something that can be represented by a checksum?
+        """
+        return True
+
+    def recommends_checksum(self, urldata):
+        """
+        Is the backend on where checksumming is recommended (should warnings 
+        by displayed if there is no checksum)?
+        """
+        return False
+
     def _strip_leading_slashes(self, relpath):
         """
         Remove leading slash as os.path.join can't cope
diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 61fdc4b..8cea7dd 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -82,6 +82,9 @@ class Git(FetchMethod):
         """
         return ud.type in ['git']
 
+    def supports_checksum(self, urldata):
+        return False
+
     def urldata_init(self, ud, d):
         """
         init git specific variable within url data
diff --git a/bitbake/lib/bb/fetch2/ssh.py b/bitbake/lib/bb/fetch2/ssh.py
index 91ac15f..8d6434a 100644
--- a/bitbake/lib/bb/fetch2/ssh.py
+++ b/bitbake/lib/bb/fetch2/ssh.py
@@ -69,6 +69,9 @@ class SSH(FetchMethod):
     def supports(self, url, urldata, d):
         return __pattern__.match(url) != None
 
+    def supports_checksum(self, urldata):
+        return False
+
     def localpath(self, url, urldata, d):
         m = __pattern__.match(urldata.url)
         path = m.group('path')
diff --git a/bitbake/lib/bb/fetch2/wget.py b/bitbake/lib/bb/fetch2/wget.py
index d3be069..30a52fa 100644
--- a/bitbake/lib/bb/fetch2/wget.py
+++ b/bitbake/lib/bb/fetch2/wget.py
@@ -45,6 +45,9 @@ class Wget(FetchMethod):
         """
         return ud.type in ['http', 'https', 'ftp']
 
+    def recommends_checksum(self, urldata):
+        return True
+
     def urldata_init(self, ud, d):
 
         ud.basename = os.path.basename(ud.path)
-- 
1.7.9.5


