Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05D0CE013B7
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:20:42 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 875173042D
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:20:36 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:29 -0700
Message-Id: <8650917440550d840b915ebd619933706416f687.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 875173042D.442BA
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 03/57] bitbake: fetch2/__init__: Make it clearer when uri_replace doesn't return a match
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
X-List-Received-Date: Mon, 13 Aug 2012 21:20:42 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

(From Poky rev: dc9976331c5cbb0983adb54f6deb97b9203bacbc)

(Bitbake rev: eb96609864dec95a516e6e687dd6a2f31d523acf)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/fetch2/__init__.py |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 414cc2b..6789f3f 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -200,8 +200,10 @@ def uri_replace(ud, uri_find, uri_replace, d):
                     if basename and not result_decoded[loc].endswith(basename):
                         result_decoded[loc] = os.path.join(result_decoded[loc], basename)
             else:
-                return ud.url
+                return None
     result = encodeurl(result_decoded)
+    if result == ud.url:
+        return None
     logger.debug(2, "For url %s returning %s" % (ud.url, result))
     return result
 
@@ -462,7 +464,7 @@ def try_mirrors(d, origud, mirrors, check = False):
         except ValueError:
             continue
         newuri = uri_replace(origud, find, replace, ld)
-        if newuri == origud.url:
+        if not newuri:
             continue
         try:
             ud = FetchData(newuri, ld)
-- 
1.7.9.5


