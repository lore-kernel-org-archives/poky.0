Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A789DE0142A
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:20:50 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id A42203042D
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:20:43 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:32 -0700
Message-Id: <16f570b74156f835fea72763d04aeb0f7ab0ef10.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: A42203042D.52295
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 06/57] bitbake: fetch2: Ensure when downloading we are consistently in the same directory
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
X-List-Received-Date: Mon, 13 Aug 2012 21:20:50 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

This assists with build reproducuility. It also avoids errors if cwd
happens not to exist when we call into the fetcher. That situation
would be unusual but I hit it with the unit tests.

(From Poky rev: 86517af9e066c2da1d580fa66b7c7f0340f3403e)

(Bitbake rev: b886c6c15a58643e06ca5ad7a3ff1f7766e4f48c)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/fetch2/__init__.py |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 2ae8185..5c8652f 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -471,6 +471,8 @@ def try_mirrors(d, origud, mirrors, check = False):
             ud = FetchData(newuri, ld)
             ud.setup_localpath(ld)
 
+            os.chdir(ld.getVar("DL_DIR", True))
+
             if check:
                 found = ud.method.checkstatus(newuri, ud, ld)
                 if found:
@@ -965,6 +967,8 @@ class Fetch(object):
                 if premirroronly:
                     self.d.setVar("BB_NO_NETWORK", "1")
 
+                os.chdir(self.d.getVar("DL_DIR", True))
+
                 firsterr = None
                 if not localpath and ((not os.path.exists(ud.donestamp)) or m.need_update(u, ud, self.d)):
                     try:
@@ -1024,7 +1028,7 @@ class Fetch(object):
                 except:
                     # Finally, try checking uri, u, from MIRRORS
                     mirrors = mirror_from_string(self.d.getVar('MIRRORS', True))
-                    ret = try_mirrors (self.d, ud, mirrors, True)
+                    ret = try_mirrors(self.d, ud, mirrors, True)
 
             if not ret:
                 raise FetchError("URL %s doesn't work" % u, u)
-- 
1.7.9.5


