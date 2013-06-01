Return-Path: <dimasadutra@gmail.com>
Received: from mail-gh0-f171.google.com (mail-gh0-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD54AE01525
	for <poky@yoctoproject.org>; Sat,  1 Jun 2013 10:26:17 -0700 (PDT)
Received: by mail-gh0-f171.google.com with SMTP id f15so21972ghb.30
	for <poky@yoctoproject.org>; Sat, 01 Jun 2013 10:26:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=OayfnORE4aYEWXJ+iLHCJz5iAuUQj6KeAIx1dS3/vAc=;
	b=FhKGNTWyq2pS1F2P4T7+6z5DmuYXt0dNMdhwi0RCAl4up87GNoUJQCMs4JxRGjjFic
	uaQiewS2bSy28kvvL6NaPAd8S2khB/m8j1J7KMf2pGWwENfu5Wm/dsJ41hJi+JPVSQw3
	P3aVPYt1dXE2zBtFDzu+kU4u6dhO4PvLo/vSIRYQWkp6+UxtTFunsh1seyC0GWSHu5KK
	nHwc98Ov3sAzduRb68ei83R63XR0oy6O2WTeoZ34eU0UtX5bLFrHB1GmuY5grVx2Isbe
	f4ZT96OCfZhtBcGGvhvc3BjJnG+SoeL3xHvG3ZN3TYl4owJTKxNGwgqTglzbFbRdlF6P
	63uQ==
X-Received: by 10.236.118.244 with SMTP id l80mr10331649yhh.123.1370107577232; 
	Sat, 01 Jun 2013 10:26:17 -0700 (PDT)
Received: from localhost.localdomain ([177.182.107.20])
	by mx.google.com with ESMTPSA id n15sm77026524yhi.2.2013.06.01.10.26.15
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 01 Jun 2013 10:26:16 -0700 (PDT)
Sender: Dimas Abreu Dutra <d1ma5ad@gmail.com>
From: Dimas Abreu Dutra <dimasadutra@gmail.com>
To: poky@yoctoproject.org
Date: Sat,  1 Jun 2013 14:24:19 -0300
Message-Id: <1370107459-26958-1-git-send-email-dimasadutra@gmail.com>
X-Mailer: git-send-email 1.8.3
Cc: Lukas Bulwahn <lukas.bulwahn@oss.bmw-carit.de>
Subject: [danny] [PATCH] site/common: deactivate a python cross-compilation runtime check
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
X-List-Received-Date: Sat, 01 Jun 2013 17:26:18 -0000

From: Lukas Bulwahn <lukas.bulwahn@oss.bmw-carit.de>

In configure there is a runtime check to determine buggy getaddrinfo and as we
are cross-compiling this check goes wrong. If ipv6 is enabled in python, the
failed test is reported as fatal error with the message
Fatal: You must get working getaddrinfo() function.

Setting ac_cv_buggy_getaddrinfo=no deactivates the runtime check and allows to
compile python with ipv6 enabled.

This commit was cherry-picked from commit 66db85262bef08802af30964b415bff349cfba69
into the danny branch. The original commit was in turn derived from the commit
700b75e7661062aa93cf81205b78c8bf7609922d in the Classic OpenEmbedded Development
Tree.

Fixes: bug #4557

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@oss.bmw-carit.de>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Dimas Abreu Dutra <dimasadutra@gmail.com>
---
 meta/site/common |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta/site/common b/meta/site/common
index 5da3ff4..1214a13 100644
--- a/meta/site/common
+++ b/meta/site/common
@@ -15,3 +15,5 @@ shadow_cv_utmpdir=${localstatedir}/run
 shadow_cv_logdir=${localstatedir}/log
 shadow_cv_passwd_dir=${bindir}
 
+# python: deactivate a runtime check for ipv6-support in python >=2.7.1 that fails when cross-compiling
+ac_cv_buggy_getaddrinfo=no
-- 
1.7.10.4


