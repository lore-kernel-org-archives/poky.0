Return-Path: <xavier.berger@bio-logic.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75442E00D3A; Mon,  1 Apr 2019 01:45:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [80.12.242.125 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.smtpout.orange.fr (smtp03.smtpout.orange.fr
	[80.12.242.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB638E00D2F
	for <poky@yoctoproject.org>; Mon,  1 Apr 2019 01:45:04 -0700 (PDT)
Received: from srvmail.bio-logic.net ([176.149.180.241]) by mwinf5d05 with ME
	id uwdZ1z00N5Ctoqw03wdZe0; Mon, 01 Apr 2019 10:37:33 +0200
X-ME-Helo: srvmail.bio-logic.net
X-ME-Auth: YmlvLWxvZ2ljQHdhbmFkb28uZnI=
X-ME-Date: Mon, 01 Apr 2019 10:37:33 +0200
X-ME-IP: 176.149.180.241
Received: from ubuntu.bio-logic.loc (unknown [10.100.11.254])
	by srvmail.bio-logic.net (Postfix) with ESMTP id 78F6A80214;
	Mon,  1 Apr 2019 10:37:33 +0200 (CEST)
From: Xavier Berger <xavier.berger@bio-logic.net>
To: poky@yoctoproject.org
Date: Mon,  1 Apr 2019 10:37:29 +0200
Message-Id: <73e2d3ce0431a0a9be0c0abbaad3fe5fab985001.1554106752.git.xavier.berger@bio-logic.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554106752.git.xavier.berger@bio-logic.net>
References: <cover.1554106752.git.xavier.berger@bio-logic.net>
Subject: [PATCH 1/2] gpg-sign: Add parameters to gpg signature function
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Apr 2019 08:45:05 -0000

output_suffix: If defined, add output_suffix as file name extension.
use_sha256: If True, use sha256 for gpg as digest algorithm

Signed-off-by: Xavier Berger <xavier.berger@bio-logic.net>
---
 meta/lib/oe/gpg_sign.py | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/meta/lib/oe/gpg_sign.py b/meta/lib/oe/gpg_sign.py
index ccd5aee..212ac3a 100644
--- a/meta/lib/oe/gpg_sign.py
+++ b/meta/lib/oe/gpg_sign.py
@@ -49,7 +49,7 @@ class LocalSigner(object):
         for i in range(0, len(files), sign_chunk):
             subprocess.check_output(shlex.split(cmd + ' '.join(files[i:i+sign_chunk])), stderr=subprocess.STDOUT)
 
-    def detach_sign(self, input_file, keyid, passphrase_file, passphrase=None, armor=True):
+    def detach_sign(self, input_file, keyid, passphrase_file, passphrase=None, armor=True, output_suffix=None, use_sha256=False):
         """Create a detached signature of a file"""
 
         if passphrase_file and passphrase:
@@ -62,6 +62,10 @@ class LocalSigner(object):
             cmd += ['--homedir', self.gpg_path]
         if armor:
             cmd += ['--armor']
+        if output_suffix:
+            cmd += ['-o', input_file + "." + output_suffix]
+        if use_sha256:
+            cmd += ['--digest-algo', "SHA256"]
 
         #gpg > 2.1 supports password pipes only through the loopback interface
         #gpg < 2.1 errors out if given unknown parameters
-- 
2.7.4


