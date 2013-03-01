Return-Path: <martin.jansa@gmail.com>
Received: from mail-pb0-f51.google.com (mail-pb0-f51.google.com
	[209.85.160.51]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 40CF5E006F6
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 02:58:03 -0800 (PST)
Received: by mail-pb0-f51.google.com with SMTP id un15so1682753pbc.10
	for <poky@yoctoproject.org>; Fri, 01 Mar 2013 02:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=VBSr+U3eRcsjBoY5ekwXSUgDBx/kFE4KE4GLEBkGP7U=;
	b=xJqpN7ubkmXuxZgGs/xykt8II390bZ0CGCLSN0L0yn10qb3iIWK0rBQctUl3q8g6LJ
	9LgMun80WSh2dIcc579dmEYWvPm4UQ4BIYli+h/WxT5rz5v8T+gSMcGMZ3gruEP3rQvV
	GndVMy6Y2Uf9toTFSOCIEh3sORjtkHqJd8XVXh+/EKvYMwA/t7src+x6omX95oUb1ew4
	j03VEfNJjHN5bzz5sBKaC65jfTjmmvXVdZy4MYzTgsk4kgGlzkOU1XNe73SoX2TKTPwD
	GLqn3r3n/7e0pwooafnDU9b0Ydy6RdG/GJS4zfuB6JWTqeRl8W9fyireb0F+sYWvwr9e
	nQdg==
X-Received: by 10.66.72.198 with SMTP id f6mr17935928pav.42.1362135483074;
	Fri, 01 Mar 2013 02:58:03 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id bi8sm12728912pab.15.2013.03.01.02.57.58
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 01 Mar 2013 02:58:02 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
To: poky@yoctoproject.org
Date: Fri,  1 Mar 2013 11:57:53 +0100
Message-Id: <1362135473-20635-1-git-send-email-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [PATCH] poky.conf: update SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 01 Mar 2013 10:58:03 -0000

* use DistributorId-Release
* please test values for Yocto, Poky, CentOS and openSUSE

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 meta-yocto/conf/distro/poky.conf | 40 +++++++++++++++++++---------------------
 1 file changed, 19 insertions(+), 21 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index c48b492..62ad819 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -69,27 +69,25 @@ CONNECTIVITY_CHECK_URIS ?= " \
              http://bugzilla.yoctoproject.org/report.cgi"
 
 SANITY_TESTED_DISTROS ?= " \
-            Yocto (Built by Poky 7.0) 1.2 \n \
-            Poky 7.0 (Yocto Project 1.2 Reference Distro) 1.2 \n \
-            Poky 8.0 (Yocto Project 1.3 Reference Distro) 1.3 \n \
-            Ubuntu 10.04.4 LTS \n \
-            Ubuntu 11.10 \n \
-            Ubuntu 12.04 LTS \n \
-            Ubuntu 12.04.2 LTS \n \
-            Ubuntu 12.04.1 LTS \n \
-            Ubuntu 12.10 \n \
-            Fedora release 16 (Verne) \n \
-            Fedora release 17 (Beefy Miracle) \n \
-            Fedora release 18 (Spherical Cow) \n \
-            CentOS release 5.6 (Final) \n \
-            CentOS release 5.7 (Final) \n \
-            CentOS release 5.8 (Final) \n \
-            CentOS release 6.3 (Final) \n \
-            Debian GNU/Linux 6.0.6 (squeeze) \n \
-            Debian GNU/Linux 7.0 (wheezy) \n \
-            openSUSE 11.4 \n \
-            openSUSE 12.1 \n \
-            openSUSE 12.2 \n \
+            Yocto-1.2 \n \
+            Poky-1.2 \n \
+            Poky-1.3 \n \
+            Ubuntu-10.04 \n \
+            Ubuntu-11.10 \n \
+            Ubuntu-12.04 \n \
+            Ubuntu-12.10 \n \
+            Fedora-16 \n \
+            Fedora-17 \n \
+            Fedora-18 \n \
+            CentOS-5.6 \n \
+            CentOS-5.7 \n \
+            CentOS-5.8 \n \
+            CentOS-6.3 \n \
+            Debian-6.0 \n \
+            Debian-7.0 \n \
+            openSUSE-11.4 \n \
+            openSUSE-12.1 \n \
+            openSUSE-12.2 \n \
 	    "
 
 # Default hash policy for distro
-- 
1.8.1.4


