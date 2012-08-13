Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A77B0E01404
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:20:47 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 3B78630426
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:20:41 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:31 -0700
Message-Id: <f186e4c139721ff765bd3d7b3ad36f1cacdcda1d.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 3B78630426.34411
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 05/57] bitbake: fetch2: Only cache data if fn is set, its pointless caching it against a None value
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
X-List-Received-Date: Mon, 13 Aug 2012 21:20:47 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

(From Poky rev: c2df30bf6d1f8c263a38c45866936c1bf496ece5)

(Bitbake rev: f4b59cc6e1c3ddc168a1678ce39ff402ea1ff4cc)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/fetch2/__init__.py |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index a26f61e..2ae8185 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -904,14 +904,14 @@ class Fetch(object):
         self.ud = {}
 
         fn = d.getVar('FILE', True)
-        if cache and fn in urldata_cache:
+        if cache and fn and fn in urldata_cache:
             self.ud = urldata_cache[fn]
 
         for url in urls:
             if url not in self.ud:
                 self.ud[url] = FetchData(url, d)
 
-        if cache:
+        if fn and cache:
             urldata_cache[fn] = self.ud
 
     def localpath(self, url):
-- 
1.7.9.5


