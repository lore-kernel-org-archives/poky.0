Return-Path: <xavier.berger@bio-logic.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6077DE00D42; Mon,  1 Apr 2019 01:45:30 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D1CE00D42
	for <poky@yoctoproject.org>; Mon,  1 Apr 2019 01:45:25 -0700 (PDT)
Received: from srvmail.bio-logic.net ([176.149.180.241]) by mwinf5d05 with ME
	id uwdu1z0085Ctoqw03wduhT; Mon, 01 Apr 2019 10:37:54 +0200
X-ME-Helo: srvmail.bio-logic.net
X-ME-Auth: YmlvLWxvZ2ljQHdhbmFkb28uZnI=
X-ME-Date: Mon, 01 Apr 2019 10:37:54 +0200
X-ME-IP: 176.149.180.241
Received: from ubuntu.bio-logic.loc (unknown [10.100.11.254])
	by srvmail.bio-logic.net (Postfix) with ESMTP id F13B6800CA;
	Mon,  1 Apr 2019 10:37:53 +0200 (CEST)
From: Xavier Berger <xavier.berger@bio-logic.net>
To: poky@yoctoproject.org
Date: Mon,  1 Apr 2019 10:37:30 +0200
Message-Id: <34d09b9cac98f9ab880cb4c2822a1a0b500fdbaa.1554106752.git.xavier.berger@bio-logic.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554106752.git.xavier.berger@bio-logic.net>
References: <cover.1554106752.git.xavier.berger@bio-logic.net>
Subject: [PATCH 2/2] package_manager: sign DEB package feeds
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
X-List-Received-Date: Mon, 01 Apr 2019 08:45:30 -0000

Implement debian package repository signature.
For each Release file created in repository subdirectory, a signature
Release.gpg is created.

Signature is performed using gpg backend when the following variables
are set in local.conf:
PACKAGE_CLASSES += "sign_package_feed"
PACKAGE_FEED_GPG_NAME = "<Id of GPG key>"
PACKAGE_FEED_GPG_PASSPHRASE_FILE="<path to password file>"

Signed-off-by: Xavier Berger <xavier.berger@bio-logic.net>
---
 meta/lib/oe/package_manager.py | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/meta/lib/oe/package_manager.py b/meta/lib/oe/package_manager.py
index 2835c1d..215d143 100644
--- a/meta/lib/oe/package_manager.py
+++ b/meta/lib/oe/package_manager.py
@@ -281,6 +281,7 @@ class DpkgIndexer(Indexer):
 
         index_cmds = []
         deb_dirs_found = False
+        index_sign_files = set()
         for arch in arch_list:
             arch_dir = os.path.join(self.deploy_dir, arch)
             if not os.path.isdir(arch_dir):
@@ -290,7 +291,10 @@ class DpkgIndexer(Indexer):
 
             cmd += "%s -fcn Packages > Packages.gz;" % gzip
 
-            with open(os.path.join(arch_dir, "Release"), "w+") as release:
+            release_file = os.path.join(arch_dir, "Release")
+            index_sign_files.add(release_file)
+
+            with open(release_file, "w+") as release:
                 release.write("Label: %s\n" % arch)
 
             cmd += "PSEUDO_UNLOAD=1 %s release . >> Release" % apt_ftparchive
@@ -304,8 +308,17 @@ class DpkgIndexer(Indexer):
             return
 
         oe.utils.multiprocess_launch(create_index, index_cmds, self.d)
-        if self.d.getVar('PACKAGE_FEED_SIGN') == '1':
-            raise NotImplementedError('Package feed signing not implementd for dpkg')
+        if self.d.getVar('PACKAGE_FEED_SIGN', True) == '1':
+            signer = get_signer(self.d, self.d.getVar('PACKAGE_FEED_GPG_BACKEND', True))
+        else:
+            signer = None
+        if signer:
+            for f in index_sign_files:
+                signer.detach_sign(f,
+                                   self.d.getVar('PACKAGE_FEED_GPG_NAME', True),
+                                   self.d.getVar('PACKAGE_FEED_GPG_PASSPHRASE_FILE', True),
+                                   output_suffix="gpg",
+                                   use_sha256=True)
 
 
 
-- 
2.7.4


