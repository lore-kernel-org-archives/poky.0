Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 174294C8088B
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 02:28:14 -0600 (CST)
Received: by wwb31 with SMTP id 31so4717040wwb.11
	for <poky@yoctoproject.org>; Mon, 07 Feb 2011 00:28:13 -0800 (PST)
Received: by 10.227.127.197 with SMTP id h5mr15605003wbs.1.1297067293638;
	Mon, 07 Feb 2011 00:28:13 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id w25sm3112824wbd.5.2011.02.07.00.28.12
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 07 Feb 2011 00:28:13 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Mon,  7 Feb 2011 09:27:17 +0100
Message-Id: <1297067237-30330-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
Subject: [PATCH] bitbake/fetch2/git: report actual command used instead of summary
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
X-List-Received-Date: Mon, 07 Feb 2011 08:28:15 -0000

This makes it easier to manually replay commands when debugging

Before:

Fetcher accessed the network with the command git clone --bare github.com/wrpseudo/pseudo.git

After:

Fetcher accessed the network with the command git clone --bare git://github.com/wrpseudo/pseudo.git /OE/downloads/git2/github.com.wrpseudo.pseudo.git

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 bitbake/lib/bb/fetch2/git.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index a4a1278..c13bac9 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -116,7 +116,7 @@ class Git(Fetch):
 
         # If the repo still doesn't exist, fallback to cloning it
         if not os.path.exists(ud.clonedir):
-            bb.fetch2.check_network_access(d, "git clone --bare %s%s" % (ud.host, ud.path))
+            bb.fetch2.check_network_access(d, "%s clone --bare %s://%s%s%s %s" % (ud.basecmd, ud.proto, username, ud.host, ud.path, ud.clonedir))
             runfetchcmd("%s clone --bare %s://%s%s%s %s" % (ud.basecmd, ud.proto, username, ud.host, ud.path, ud.clonedir), d)
 
         os.chdir(ud.clonedir)
-- 
1.6.6.1


