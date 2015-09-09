Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9046CE00C8F; Tue,  8 Sep 2015 17:01:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A537E00B0B
	for <poky@yoctoproject.org>; Tue,  8 Sep 2015 17:01:16 -0700 (PDT)
Received: by qkdw123 with SMTP id w123so35659609qkd.0
	for <poky@yoctoproject.org>; Tue, 08 Sep 2015 17:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=zmBlVXHA/Dl0voyaU7iZxo6gvOY7//Twsd0UvGdbaaU=;
	b=g9qmEmw5wjrr1/tsdXHqLwgzO2ZflOO/kJFnBTuqR4O4p9xXahIMBD+bXNpJOTY+t0
	Y3IhHhUGlfe6jh2z/wj4OdQQBvTNiQ1xWAx7TbRCFlmNIWZjfdnQpFnUMNt5Y2agu/1E
	k4FFmypzKNbjinp7Uwrp/E+DWUcwdo9ighC1hJREjkoPeXCirPaxcXF4dByzxKTDlftn
	an38i5YrQ4vOP3Si2gCQLC3j/nUlGRSccos3oB1BUwTRKWAjSZDUEWRuEma+2S07rdkU
	lNvvbA8MFv1IRwib5GXjaj3KDx6xPzGHQgDFodHRGs0HV/aqcUokxeCvdRXOz5ty4ZEJ
	6hJQ==
X-Received: by 10.55.42.163 with SMTP id q35mr39090613qkq.107.1441756876302;
	Tue, 08 Sep 2015 17:01:16 -0700 (PDT)
Received: from ip-96-114-220-84.ae.ccp.cable.comcast.com ([96.114.220.84])
	by smtp.gmail.com with ESMTPSA id
	m82sm2845630qhb.19.2015.09.08.17.01.15
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 08 Sep 2015 17:01:15 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Wed,  9 Sep 2015 00:01:10 +0000
Message-Id: <1441756870-52527-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.5.1
Subject: [PATCH] poky-tiny.conf: Require utmpx, its needed for busybox
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
X-List-Received-Date: Wed, 09 Sep 2015 00:01:22 -0000

This libc feature is a basic need and prerequisite for busybox fix for
[YOCTO #8243] to be merged

[YOCTO #8243]

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-yocto/conf/distro/poky-tiny.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index f4a772e..b0227de 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -63,7 +63,7 @@ DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
 DISTRO_FEATURES_LIBC_TINY_append_x86-64 = " libc-libm-big"
 
 # Required for "who"
-DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-getlogin"
+DISTRO_FEATURES_LIBC_MINIMAL = "libc-utmp libc-utmpx libc-getlogin"
 DISTRO_FEATURES_LIBC_REGEX = "libc-posix-regexp"
 DISTRO_FEATURES_LIBC_NET = "libc-inet libc-nis"
 
-- 
2.5.1


