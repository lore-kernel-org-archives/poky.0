Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC69FE002AC
	for <poky@yoctoproject.org>; Tue, 18 Sep 2012 03:33:38 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q8IAXaow026608
	for <poky@yoctoproject.org>; Tue, 18 Sep 2012 11:33:36 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 25975-05 for <poky@yoctoproject.org>;
	Tue, 18 Sep 2012 11:33:31 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q8IAXTLC026602
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <poky@yoctoproject.org>; Tue, 18 Sep 2012 11:33:30 +0100
Message-ID: <1347964408.13596.111.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 18 Sep 2012 11:33:28 +0100
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: [PATCH] poky.conf: Silence unsafe reference warnings
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
X-List-Received-Date: Tue, 18 Sep 2012 10:33:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

These QA warnings undermine the quality impression of OE-Core. They are
useful in some specific circumstances but until the system has been audited
and these warnings are reduced, they shouldn't be showing by default.

Therefore disable them for now.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 6897ac4..ecce9f5 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -93,6 +93,6 @@ BB_SIGNATURE_HANDLER ?= 'OEBasicHash'
 #
 OELAYOUT_ABI = "8"
 
-WARN_QA = "unsafe-references-in-binaries unsafe-references-in-scripts"
+#WARN_QA = "unsafe-references-in-binaries unsafe-references-in-scripts"
 ERROR_QA = "dev-so debug-deps dev-deps debug-files arch la2 pkgconfig la perms useless-rpaths rpaths staticdev ldflags"
 



