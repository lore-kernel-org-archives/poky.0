Return-Path: <gthomas@mail.chez-thomas.org>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCDCDE013AC
	for <poky@yoctoproject.org>; Fri, 16 Mar 2012 12:30:37 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 996)
	id C42FFF81267; Fri, 16 Mar 2012 13:30:36 -0600 (MDT)
From: Gary Thomas <gary@mlbassoc.com>
To: poky@yoctoproject.org
Date: Fri, 16 Mar 2012 13:30:34 -0600
Message-Id: <1331926234-1685-1-git-send-email-gary@mlbassoc.com>
X-Mailer: git-send-email 1.7.7.6
Subject: [PATCH] bitbake/fetch2: Fix typo which broke use of tarballs
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
X-List-Received-Date: Fri, 16 Mar 2012 19:30:37 -0000

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 bitbake/lib/bb/fetch2/__init__.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 6847873..7524fa9 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -192,7 +192,7 @@ def uri_replace(ud, uri_find, uri_replace, d):
                 if uri_find_decoded.index(i) == 2:
                     basename = None
                     if ud.mirrortarball:
-                        basename = os.path.basename(ud.localpath)
+                        basename = os.path.basename(ud.mirrortarball)
                     elif ud.localpath:
                         basename = os.path.basename(ud.localpath)
                     if basename and result_decoded[loc].endswith("/"):
-- 
1.7.7.6


