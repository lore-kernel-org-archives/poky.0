Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BF3BE013D3
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:20:44 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id EDC153042C
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:20:38 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:30 -0700
Message-Id: <5f0fc6737a6a3062dbb7266baa9daefc9909362b.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: EDC153042C.74066
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 04/57] bitbake: fetch2: Fix error handling in uri_replace()
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
X-List-Received-Date: Mon, 13 Aug 2012 21:20:44 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

(From Poky rev: 1bfba28a583cb167f60e05ecdf34d0786dc1eec5)

(Bitbake rev: aa7467a764ddcbc7d65af99e88cf093b6ec6d24e)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/fetch2/__init__.py |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 6789f3f..a26f61e 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -174,7 +174,8 @@ def encodeurl(decoded):
 
 def uri_replace(ud, uri_find, uri_replace, d):
     if not ud.url or not uri_find or not uri_replace:
-        logger.debug(1, "uri_replace: passed an undefined value, not replacing")
+        logger.error("uri_replace: passed an undefined value, not replacing")
+        return None
     uri_decoded = list(decodeurl(ud.url))
     uri_find_decoded = list(decodeurl(uri_find))
     uri_replace_decoded = list(decodeurl(uri_replace))
-- 
1.7.9.5


