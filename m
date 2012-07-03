Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B28BFE0145E
	for <poky@yoctoproject.org>; Tue,  3 Jul 2012 15:32:35 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id rq8so11784488pbb.35
	for <poky@yoctoproject.org>; Tue, 03 Jul 2012 15:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=WaS7xKagvQtk1QEHJGtIXD/xG/zHt5sQSH7AN0gd10c=;
	b=JchnXRAkOV9qSxm2oHkSC92YP11aG6rHGbGQ5xKC3O6Pxp8H365lPBu8R0gS4W01nd
	U//USl0nxLNPILOJQWwnM1H+1u4DJCLw6ozwS1ep8Hu7XjNv73Btn8QxznEZgi7B1CdO
	RnGXeZWxuQyFuUWUbBWyGnHxyS8hBOnIgoe54RbY2aRp9vITHR5i0xgc5rgVr0ufHUrg
	C4uw9mytyGogA/36mnAGhDmGlaxDFNJ9BLgKGVfqHjgOOIGUZ/1CoVyGDZfP/o7lIxMX
	tK9QOAJwXfeMAciw1M5VlRAh6W3jFkWhyljZzx1jIKiWerFNC5XijKdvbfomrIt8lBFe
	/Onw==
Received: by 10.68.232.197 with SMTP id tq5mr11413126pbc.53.1341354755648;
	Tue, 03 Jul 2012 15:32:35 -0700 (PDT)
Received: from leo.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id nj4sm2425447pbc.5.2012.07.03.15.32.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jul 2012 15:32:34 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jul 2012 15:32:06 -0700
Message-Id: <cda74535ac86e9eda025056045f4d199a62f7dd7.1341354357.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
References: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
In-Reply-To: <cover.1341354357.git.raj.khem@gmail.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
Subject: [denzil][PATCH 5/9] bitbake: fetch2: Ensure when downloading we are consistently in the same directory
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
X-List-Received-Date: Tue, 03 Jul 2012 22:32:35 -0000

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
index 4b32599..33e07bb 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -472,6 +472,8 @@ def try_mirrors(d, origud, mirrors, check = False):
             ud = FetchData(newuri, ld)
             ud.setup_localpath(ld)
 
+            os.chdir(ld.getVar("DL_DIR", True))
+
             if check:
                 found = ud.method.checkstatus(newuri, ud, ld)
                 if found:
@@ -983,6 +985,8 @@ class Fetch(object):
                 if premirroronly:
                     self.d.setVar("BB_NO_NETWORK", "1")
 
+                os.chdir(self.d.getVar("DL_DIR", True))
+
                 firsterr = None
                 if not localpath and ((not os.path.exists(ud.donestamp)) or m.need_update(u, ud, self.d)):
                     try:
@@ -1042,7 +1046,7 @@ class Fetch(object):
                 except:
                     # Finally, try checking uri, u, from MIRRORS
                     mirrors = mirror_from_string(self.d.getVar('MIRRORS', True))
-                    ret = try_mirrors (self.d, ud, mirrors, True)
+                    ret = try_mirrors(self.d, ud, mirrors, True)
 
             if not ret:
                 raise FetchError("URL %s doesn't work" % u, u)
-- 
1.7.9.5


