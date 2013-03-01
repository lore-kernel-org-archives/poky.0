Return-Path: <martin.jansa@gmail.com>
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id A31F5E002AB
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 13:17:23 -0800 (PST)
Received: by mail-pa0-f53.google.com with SMTP id bg4so2033132pad.40
	for <poky@yoctoproject.org>; Fri, 01 Mar 2013 13:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=A0BWkkm39M0x/8X2vfP7kcMe5cEfEklKrknCrTwV8Ag=;
	b=yUf7WoI3tCzi6LpMBxE9arXcqQ+rnT0ad8kQ10IjNr1k6Al5jvYeI7HYqROu1wnWzT
	b5W5nejJdvpuwBQCdoC5+EKILsVvpjSfW1uawXaH4aIv/Pr1rNxF3qvMDW9zLLgLr45q
	CLN0rBOhktUQ83ZW1axKB8ZOX8CfTMlOJc0FRPbqaEPkcXR4etNdNBmXR+WzzDc7pH0/
	J6qsenF4VPuMsVLBPX1eA2Tlp++/U9iWRY9xhzSS29erUdrfebbr7CEPzeC0JyQhqgxd
	4HfVRN56xU6wHGkpc/zvHf722xgboV+UFMC6Zn/8FVuv+mVe2Tj8+9DiVk59KP+X0DU6
	c0Wg==
X-Received: by 10.66.160.70 with SMTP id xi6mr20481912pab.109.1362172643459;
	Fri, 01 Mar 2013 13:17:23 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id g4sm14282634pax.4.2013.03.01.13.17.19
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 01 Mar 2013 13:17:22 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
To: poky@yoctoproject.org
Date: Fri,  1 Mar 2013 22:17:14 +0100
Message-Id: <1362172634-26841-1-git-send-email-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [PATCH] poky.conf: update SANITY_TESTED_DISTROS for openSUSE
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
X-List-Received-Date: Fri, 01 Mar 2013 21:17:23 -0000

From: Martin Jansa <martin.jansa@gmail.com>

* please wait for confirmation if it works fine with
  http://lists.linuxtogo.org/pipermail/openembedded-core/2013-March/036566.html
  applied in oe-core

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 meta-yocto/conf/distro/poky.conf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 20ac28a..d924fcc 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -85,9 +85,9 @@ SANITY_TESTED_DISTROS ?= " \
             CentOS-6.3 \n \
             Debian-6.0 \n \
             Debian-7.0 \n \
-            openSUSE-11.4 \n \
-            openSUSE-12.1 \n \
-            openSUSE-12.2 \n \
+            SUSE-LINUX-11.4 \n \
+            SUSE-LINUX-12.1 \n \
+            SUSE-LINUX-12.2 \n \
 	    "
 
 # Default hash policy for distro
-- 
1.8.1.4


