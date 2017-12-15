Return-Path: <sascha-ml-linux-yocto-poky@silbe.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37705E00CE8; Fri, 15 Dec 2017 11:16:57 -0800 (PST)
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
Received: from bbox.sascha.silbe.org (bbox.sascha.silbe.org [84.201.25.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 246ECE008CA
	for <poky@yoctoproject.org>; Fri, 15 Dec 2017 11:16:55 -0800 (PST)
Received: from twin.sascha.silbe.org (twin.sascha.silbe.org [192.168.1.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client CN "twin.sascha.silbe.org",
	Issuer "stunnel Pseudo-CA" (verified OK))
	by bbox.sascha.silbe.org (Postfix) with ESMTPS id 00921BEF3E;
	Fri, 15 Dec 2017 20:16:54 +0100 (CET)
Received: (nullmailer pid 32547 invoked by uid 8193);
	Fri, 15 Dec 2017 19:16:53 -0000
From: Sascha Silbe <x-yo17@se-silbe.de>
To: poky@yoctoproject.org
Date: Fri, 15 Dec 2017 20:16:42 +0100
Message-Id: <20171215191642.32393-1-x-yo17@se-silbe.de>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <6262fd1f-85df-b108-69b0-eb9b78b2afa9@linux.intel.com>
References: <6262fd1f-85df-b108-69b0-eb9b78b2afa9@linux.intel.com>
MIME-Version: 1.0
Subject: [PATCH v2] gitignore: ignore documentation build products
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
X-List-Received-Date: Fri, 15 Dec 2017 19:16:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

There are several different manuals by now, all of which produce
output. The "eclipse" directory might even have been present the last
time .gitignore was updated.

Ignore the files and directories that can be generated during "make
DOC=<directory>" as well as "make DOC=<directory> pdf". While at it,
make sure the patterns only match for the top-level documentation
directory.

Signed-off-by: Sascha Silbe <x-yo17@se-silbe.de>
---
v1→v2:
  - condense single-file rules into wildcard rules

 .gitignore | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/.gitignore b/.gitignore
index 94894d498c..0c4e112d9d 100644
--- a/.gitignore
+++ b/.gitignore
@@ -18,9 +18,10 @@ hob-image-*.bb
 !meta-yocto
 !meta-yocto-bsp
 !meta-yocto-imported
-documentation/user-manual/user-manual.html
-documentation/user-manual/user-manual.pdf
-documentation/user-manual/user-manual.tgz
+/documentation/*/eclipse/
+/documentation/*/*.html
+/documentation/*/*.pdf
+/documentation/*/*.tgz
 pull-*/
 bitbake/lib/toaster/contrib/tts/backlog.txt
 bitbake/lib/toaster/contrib/tts/log/*
-- 
2.11.0


