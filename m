Return-Path: <raj.khem@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0855EE00739
	for <poky@yoctoproject.org>; Tue,  3 Jul 2012 15:32:31 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so6745990ggn.35
	for <poky@yoctoproject.org>; Tue, 03 Jul 2012 15:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=WT5q53h8H1utqf0yJLWNweg86YpuApB+zwVN0yRb4Ng=;
	b=dTn8YEXZEDUlo8pqPgHumuXMKykDAre6VqdB72Er+S7DuMdRQQNjZxqTA+IdgDrKCg
	fG6JIq9AjrwaZs7e9j8j59PTj8DKSRQJazbii2Mz9CCFyYNwkckMgXLAIoaJp1FyDChU
	gWiHU+is8oTqJ6f2zwAI4SLZ019V8KEB+4Laf1XCbaVkycrOPMR1fupq5WegryeHeE1e
	G/Src8fpGswhyjdDxw8wUEOmSTp7M/J5qUagJ/DToydKsSd2y/Mq5Dw/Fzy3OgxtPpSm
	9CI9Wp0QzcNn8Mbm+5A+zpKmmrepvC2ivC51bkYsXcBWkoXCebAsdx4x6TrHvaS7rEFx
	8ptw==
Received: by 10.68.116.203 with SMTP id jy11mr11423536pbb.129.1341354750895;
	Tue, 03 Jul 2012 15:32:30 -0700 (PDT)
Received: from leo.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id nj4sm2425447pbc.5.2012.07.03.15.32.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jul 2012 15:32:30 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jul 2012 15:32:03 -0700
Message-Id: <7567a3fc31868932f9ab52d1fbf48fe7c318855e.1341354357.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
References: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
In-Reply-To: <cover.1341354357.git.raj.khem@gmail.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
Subject: [denzil][PATCH 2/9] bitbake: fetch2/__init__: Make it clearer when uri_replace doesn't return a match
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
X-List-Received-Date: Tue, 03 Jul 2012 22:32:32 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

(From Poky rev: dc9976331c5cbb0983adb54f6deb97b9203bacbc)

(Bitbake rev: eb96609864dec95a516e6e687dd6a2f31d523acf)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/fetch2/__init__.py |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index ec043a8..b19c84a 100644
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
 
@@ -463,7 +465,7 @@ def try_mirrors(d, origud, mirrors, check = False):
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


