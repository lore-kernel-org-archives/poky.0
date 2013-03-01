Return-Path: <martin.jansa@gmail.com>
Received: from mail-da0-f47.google.com (mail-da0-f47.google.com
	[209.85.210.47]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id B8931E003BC
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 10:01:57 -0800 (PST)
Received: by mail-da0-f47.google.com with SMTP id s35so1510304dak.20
	for <poky@yoctoproject.org>; Fri, 01 Mar 2013 10:01:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=EEQHarw0KgovkHYGj+ZU/3IFeWaUdrlzOHFcbzFDeaY=;
	b=LvGf7FL4HubYAbl/CUUSy3jFXJRyefHN3u36Z7Om6MfkSLCPAQ5G9HA/E95KnNXEOy
	nOfTpqrFLuz5xmlW7YHQ76a4NfZ4LZCIqMD0Q98uXtw13qnhkbb9KMMhWpIWwvvm6PBR
	ajBagLRANVfvBXw6lCEJSA9U9Mzk23HnD0SV3QpyEY21s6RKPt6M8W5+SDZWOP1LwD1Z
	lRvxR+jPOgSbKvRUN7pkyLYpxqXxx8I+FzumMk+gyFiIngmn2Ib+JnYOVJnc0nct+LGv
	NGBuSkuB5PvI6FoLYY8hD3SZqe4LglwpejyRdl6ohZD1vuP0CxKsAZDOwvuD2CB5Ra9T
	0jdw==
X-Received: by 10.66.83.136 with SMTP id q8mr20284198pay.83.1362160917166;
	Fri, 01 Mar 2013 10:01:57 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id j7sm13827325pay.10.2013.03.01.10.01.53
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 01 Mar 2013 10:01:56 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
To: poky@yoctoproject.org
Date: Fri,  1 Mar 2013 19:01:51 +0100
Message-Id: <1362160911-25880-1-git-send-email-Martin.Jansa@gmail.com>
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
X-List-Received-Date: Fri, 01 Mar 2013 18:01:57 -0000

From: Martin Jansa <martin.jansa@gmail.com>

* please wait for confirmation if it works fine with
  http://lists.linuxtogo.org/pipermail/openembedded-core/2013-March/036566.html
  applied in oe-core

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta-yocto/conf/distro/poky.conf | 41 +++++++++++++++++++---------------------
 1 file changed, 19 insertions(+), 22 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index c7afc97..d924fcc 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -69,28 +69,25 @@ CONNECTIVITY_CHECK_URIS ?= " \
              http://bugzilla.yoctoproject.org/report.cgi"
 
 SANITY_TESTED_DISTROS ?= " \
-            Yocto (Built by Poky 8.0) 1.2 \n \
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
+            SUSE-LINUX-11.4 \n \
+            SUSE-LINUX-12.1 \n \
+            SUSE-LINUX-12.2 \n \
 	    "
 
 # Default hash policy for distro
-- 
1.8.1.4


