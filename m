Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8836FE01448
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:20:58 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 01E193042D
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:20:52 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:36 -0700
Message-Id: <a2ddaceb10e15eaa0a19f44c01c4dfcc1252a9c0.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 01E193042D.C0195
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 10/57] bitbake: fetch2: Handle errors orruring when building mirror urls
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
X-List-Received-Date: Mon, 13 Aug 2012 21:20:58 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

When we build the mirror urls, its possible an error will occur. If it
does, it should just mean we don't attempt this mirror url. The current
code actually aborts *all* the mirrors, not just the failed url.

This patch catches and logs the exception allowing things to continue.

(Bitbake rev: c35cbd1a1403865cf4f59ec88e1881669868103c)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/fetch2/__init__.py |   13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 13341a8..798a29b 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -462,9 +462,18 @@ def build_mirroruris(origud, mirrors, ld):
             newuri = uri_replace(ud, find, replace, ld)
             if not newuri or newuri in uris or newuri == origud.url:
                 continue
+            try:
+                newud = FetchData(newuri, ld)
+                newud.setup_localpath(ld)
+            except bb.fetch2.BBFetchException as e:
+                logger.debug(1, "Mirror fetch failure for url %s (original url: %s)" % (newuri, origud.url))
+                logger.debug(1, str(e))
+                try:
+                    ud.method.clean(ud, ld)
+                except UnboundLocalError:
+                    pass
+                continue   
             uris.append(newuri)
-            newud = FetchData(newuri, ld)
-            newud.setup_localpath(ld)
             uds.append(newud)
 
             adduri(newuri, newud, uris, uds)
-- 
1.7.9.5


