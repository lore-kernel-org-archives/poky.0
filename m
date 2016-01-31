Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BAFAE00BB5; Sun, 31 Jan 2016 05:26:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,KHOP_DYNAMIC
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 887BEE00B89
	for <poky@yoctoproject.org>; Sun, 31 Jan 2016 05:26:08 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u0VDQ7ZG015903
	for <poky@yoctoproject.org>; Sun, 31 Jan 2016 13:26:07 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 59y2ZyepEGtV for <poky@yoctoproject.org>;
	Sun, 31 Jan 2016 13:26:07 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u0VDQ1t4015900
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT)
	for <poky@yoctoproject.org>; Sun, 31 Jan 2016 13:26:02 GMT
Message-ID: <1454246761.27087.17.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Sun, 31 Jan 2016 13:26:01 +0000
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: [PATCH] poky: Add poky-world-exclude.inc and add qwt
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
X-List-Received-Date: Sun, 31 Jan 2016 13:26:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

In an ideal world we'd test everything in every combination. Reality
is we can't. This file contains things which we don't intend to test
within our world builds.

Add qwt since it has QA warnings which we don't intend to fix and
we don't really want to build this either, its out of scope of our
general qt4 requirements (which is for LSB).

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

diff --git a/meta-yocto/conf/distro/include/poky-world-exclude.inc b/meta-yocto/conf/distro/include/poky-world-exclude.inc
new file mode 100644
index 0000000..6b32fb3
--- /dev/null
+++ b/meta-yocto/conf/distro/include/poky-world-exclude.inc
@@ -0,0 +1,6 @@
+#
+# Things we exlude fromw world testing within the reference distro
+#
+
+# qwt from meta-qt4, has poky-lsb QA warnings, qt4 for lsb only
+EXCLUDE_FROM_WORLD_pn-qwt = "1"
diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 76520fb..dec3644 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -99,3 +99,5 @@ WARN_TO_ERROR_QA = "already-stripped compile-host-path install-host-path \
                     useless-rpaths"
 WARN_QA_remove = "${WARN_TO_ERROR_QA}"
 ERROR_QA_append = " ${WARN_TO_ERROR_QA}"
+
+require conf/distro/include/poky-world-exclude.inc



