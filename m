Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B3EDE01461
	for <poky@yoctoproject.org>; Tue,  3 Jul 2012 15:32:42 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id rq8so11784488pbb.35
	for <poky@yoctoproject.org>; Tue, 03 Jul 2012 15:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=yqnhrX/uH9jjXzsImQ+SweiVqYxnLbgXSfGDoq9H3kM=;
	b=ZjwRsavyfmOEXDSNUpydLFWfw07NBALKcxRIOvl6xEHeni0AkW6lw6vXix7QJ01YA1
	qzDpQNOQUfFVR3pMZKRlkgUMiWdShc6mhdXjzvpI46pfaM8uACo4Csy5PFhhhxeOW7JK
	S+PqJvb1/EdH1nskQ0J6+ed3ABMf0yWGoTDpGp+0W2ECo2QuIzFM1+yA9d9C0ZI9s89J
	M+ljexRrc07DZw7UhlV0LbkN30Cx6ESKCAxVdPZVpkDxtEa80kBYVg+bSrdjFJFizDn5
	S09q+0OiogoGoc5fSxwL3/uUtrXq+VzChpStH/Zro7ka2GZiArqjK5C5//rYoBUUDQhn
	KCag==
Received: by 10.68.240.73 with SMTP id vy9mr11033077pbc.102.1341354762108;
	Tue, 03 Jul 2012 15:32:42 -0700 (PDT)
Received: from leo.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id nj4sm2425447pbc.5.2012.07.03.15.32.40
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Jul 2012 15:32:41 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Tue,  3 Jul 2012 15:32:10 -0700
Message-Id: <5b6fb2e690ec296bd74f6869ef94739e324660f8.1341354357.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
References: <f6a37520b3bcecef1618bf98a15eac5b69000b78.1341354357.git.raj.khem@gmail.com>
In-Reply-To: <cover.1341354357.git.raj.khem@gmail.com>
References: <cover.1341354357.git.raj.khem@gmail.com>
Subject: [denzil][PATCH 9/9] bitbake: fetch2: Handle errors orruring when building mirror urls
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
X-List-Received-Date: Tue, 03 Jul 2012 22:32:42 -0000

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
index f6ead2f..9373c44 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -463,9 +463,18 @@ def build_mirroruris(origud, mirrors, ld):
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


