Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2193AE0145E
	for <poky@yoctoproject.org>; Tue,  3 Jul 2012 15:32:34 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id rq8so11784488pbb.35
	for <poky@yoctoproject.org>; Tue, 03 Jul 2012 15:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=e0Vp15NiVYy6/zXxozHtqTiwyvi7+vbhip6KXVgBZCE=;
	b=wwNYd34VWQZcM7q51o/4xBiTwL0hhGB36mvAYUqciNGmaZ+9Gl5dDZs5+Xlap3tl2/
	Hq1w3+pG9yEWy0aV/KwFhCF5torxV0j6zUjerByYR61+D4vNubVZc8bG+D/am5iF/RWg
	B5D5+RsDe1ky62RkRZ62SGVVu0ax1qxSS/+G83CBKRk3fdaO0+iH42SH5u7CtyNu3VVx
	FAekgUYo+8/O3JM2yx6wfaMdLIu/7o/hPIbMxiQpeDXuhPkX2DsyZkXVohgAfvNBdBYd
	jTvltO67HlxQwEkT8hnziUihn8WKFQOPk3aMjTJ5r1x7K7kVh0nKMIsF4m0Z6xxpSTjC
	Kbsg==
Received: by 10.68.136.229 with SMTP id qd5mr11561812pbb.2.1341354754071;
	Tue, 03 Jul 2012 15:32:34 -0700 (PDT)
Received: from leo.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id nj4sm2425447pbc.5.2012.07.03.15.32.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jul 2012 15:32:33 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jul 2012 15:32:05 -0700
Message-Id: <3a87d37f46a9694f9f6164e37e348839adb5531c.1341354357.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
References: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
In-Reply-To: <cover.1341354357.git.raj.khem@gmail.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
Subject: [denzil][PATCH 4/9] bitbake: fetch2: Only cache data if fn is set, its pointless caching it against a None value
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
X-List-Received-Date: Tue, 03 Jul 2012 22:32:34 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

(From Poky rev: c2df30bf6d1f8c263a38c45866936c1bf496ece5)

(Bitbake rev: f4b59cc6e1c3ddc168a1678ce39ff402ea1ff4cc)

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 bitbake/lib/bb/fetch2/__init__.py |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 3e96282..4b32599 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -922,14 +922,14 @@ class Fetch(object):
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


