Return-Path: <sascha-ml-linux-yocto-poky@silbe.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66DB0E00DAA; Fri, 15 Dec 2017 03:02:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [84.201.25.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 594 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Dec 2017 03:02:09 PST
Received: from bbox.sascha.silbe.org (bbox.sascha.silbe.org [84.201.25.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F34EE00AD7
	for <poky@yoctoproject.org>; Fri, 15 Dec 2017 03:02:09 -0800 (PST)
Received: from twin.sascha.silbe.org (twin.sascha.silbe.org [192.168.1.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client CN "twin.sascha.silbe.org",
	Issuer "stunnel Pseudo-CA" (verified OK))
	by bbox.sascha.silbe.org (Postfix) with ESMTPS id E1FA1BEF3E;
	Fri, 15 Dec 2017 11:52:13 +0100 (CET)
Received: (nullmailer pid 10026 invoked by uid 8193);
	Fri, 15 Dec 2017 10:52:13 -0000
From: Sascha Silbe <x-yo17@se-silbe.de>
To: poky@yoctoproject.org
Date: Fri, 15 Dec 2017 11:52:08 +0100
Message-Id: <20171215105208.9957-1-x-yo17@se-silbe.de>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH] gitignore: ignore documentation build products
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
X-List-Received-Date: Fri, 15 Dec 2017 11:02:11 -0000

There are several different manuals by now, all of which produce
output. The "eclipse" directory might even have been present the last
time .gitignore was updated.

Ignore all files and directories generated during "make
DOC=<directory>" for all existing manuals as well as "make
DOC=<directory> pdf" for all manuals that support PDF
generation. While at it, make sure the patterns only match for the
top-level documentation directory.

Signed-off-by: Sascha Silbe <x-yo17@se-silbe.de>
---

Resent because the previous one disappeared into nirvana (mailing list
silently dropping mails from non-subscribers?).

 .gitignore | 31 ++++++++++++++++++++++++++++---
 1 file changed, 28 insertions(+), 3 deletions(-)

diff --git a/.gitignore b/.gitignore
index 94894d498c..f1da5b2df9 100644
--- a/.gitignore
+++ b/.gitignore
@@ -18,9 +18,34 @@ hob-image-*.bb
 !meta-yocto
 !meta-yocto-bsp
 !meta-yocto-imported
-documentation/user-manual/user-manual.html
-documentation/user-manual/user-manual.pdf
-documentation/user-manual/user-manual.tgz
+/documentation/*/eclipse/
+/documentation/bsp-guide/bsp-guide.html
+/documentation/bsp-guide/bsp-guide.pdf
+/documentation/bsp-guide/bsp-guide.tgz
+/documentation/dev-manual/dev-manual.html
+/documentation/dev-manual/dev-manual.pdf
+/documentation/dev-manual/dev-manual.tgz
+/documentation/kernel-dev/kernel-dev.html
+/documentation/kernel-dev/kernel-dev.pdf
+/documentation/kernel-dev/kernel-dev.tgz
+/documentation/mega-manual/mega-manual.html
+/documentation/mega-manual/mega-manual.tgz
+/documentation/profile-manual/profile-manual.html
+/documentation/profile-manual/profile-manual.pdf
+/documentation/profile-manual/profile-manual.tgz
+/documentation/ref-manual/ref-manual.html
+/documentation/ref-manual/ref-manual.pdf
+/documentation/ref-manual/ref-manual.tgz
+/documentation/sdk-manual/sdk-manual.html
+/documentation/sdk-manual/sdk-manual.pdf
+/documentation/sdk-manual/sdk-manual.tgz
+/documentation/toaster-manual/toaster-manual.html
+/documentation/toaster-manual/toaster-manual.tgz
+/documentation/user-manual/user-manual.html
+/documentation/user-manual/user-manual.pdf
+/documentation/user-manual/user-manual.tgz
+/documentation/yocto-project-qs/yocto-project-qs.html
+/documentation/yocto-project-qs/yocto-project-qs.tgz
 pull-*/
 bitbake/lib/toaster/contrib/tts/backlog.txt
 bitbake/lib/toaster/contrib/tts/log/*
-- 
2.11.0


