Return-Path: <lauri.hintsala@bluegiga.com>
Received: from blue-gw.bluegiga.fi (bluegiga.fi [194.100.31.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F7DCE011D1
	for <poky@yoctoproject.org>; Thu, 15 Mar 2012 04:49:29 -0700 (PDT)
Received: from bgtlh.bgt.local (unknown [10.1.1.28])
	by blue-gw.bluegiga.fi (Postfix) with ESMTP id E5C557BE256;
	Thu, 15 Mar 2012 13:49:26 +0200 (EET)
From: Lauri Hintsala <lauri.hintsala@bluegiga.com>
To: poky@yoctoproject.org
Date: Thu, 15 Mar 2012 13:49:16 +0200
Message-Id: <1331812156-32344-1-git-send-email-lauri.hintsala@bluegiga.com>
X-Mailer: git-send-email 1.7.4.1
Subject: [PATCH] .gitignore: expand pyshtables.py ignoring
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
X-List-Received-Date: Thu, 15 Mar 2012 11:49:30 -0000

Bitbake generates pyshtables.py to bitbake/lib/bb/pysh/ folder if the user
has write permissions there. Let's ignore generated file also on that location.

Signed-off-by: Lauri Hintsala <lauri.hintsala@bluegiga.com>
---
 .gitignore |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/.gitignore b/.gitignore
index 11b7024..04e36c5 100644
--- a/.gitignore
+++ b/.gitignore
@@ -5,7 +5,7 @@ build*/conf/bblayers.conf
 build*/downloads
 build*/tmp/
 build*/sstate-cache
-build*/pyshtables.py
+pyshtables.py
 pstage/
 scripts/oe-git-proxy-socks
 sources/
-- 
1.7.4.1


