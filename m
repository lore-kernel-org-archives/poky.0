Return-Path: <sascha-ml-linux-yocto-poky@silbe.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D28AE00C14; Wed, 21 Mar 2018 09:24:32 -0700 (PDT)
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
X-Greylist: delayed 584 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Mar 2018 09:24:29 PDT
Received: from bbox.sascha.silbe.org (bbox.sascha.silbe.org [84.201.25.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70464E00744
	for <poky@yoctoproject.org>; Wed, 21 Mar 2018 09:24:29 -0700 (PDT)
Received: from twin.sascha.silbe.org (twin.sascha.silbe.org [192.168.1.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client CN "twin.sascha.silbe.org",
	Issuer "stunnel Pseudo-CA" (verified OK))
	by bbox.sascha.silbe.org (Postfix) with ESMTPS id 01359BEF57;
	Wed, 21 Mar 2018 17:14:43 +0100 (CET)
Received: (nullmailer pid 15888 invoked by uid 8193);
	Wed, 21 Mar 2018 16:14:43 -0000
From: Sascha Silbe <x-yo17@se-silbe.de>
To: poky@yoctoproject.org
Date: Wed, 21 Mar 2018 17:14:33 +0100
Message-Id: <20180321161433.15784-1-x-yo17@se-silbe.de>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH] gitignore: ignore bitbake documentation build products
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
X-List-Received-Date: Wed, 21 Mar 2018 16:24:32 -0000

Missed the bitbake manual the last time around because it's in a
different directory.

Signed-off-by: Sascha Silbe <x-yo17@se-silbe.de>
---
 .gitignore | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/.gitignore b/.gitignore
index 0c4e112d9d..d3ef473b04 100644
--- a/.gitignore
+++ b/.gitignore
@@ -22,6 +22,9 @@ hob-image-*.bb
 /documentation/*/*.html
 /documentation/*/*.pdf
 /documentation/*/*.tgz
+/bitbake/doc/bitbake-user-manual/bitbake-user-manual.html
+/bitbake/doc/bitbake-user-manual/bitbake-user-manual.pdf
+/bitbake/doc/bitbake-user-manual/bitbake-user-manual.tgz
 pull-*/
 bitbake/lib/toaster/contrib/tts/backlog.txt
 bitbake/lib/toaster/contrib/tts/log/*
-- 
2.11.0


