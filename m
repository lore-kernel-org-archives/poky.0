Return-Path: <martin.jansa@gmail.com>
Received: from mail-pb0-f46.google.com (mail-pb0-f46.google.com
	[209.85.160.46]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id B915DE0121B
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 08:20:04 -0800 (PST)
Received: by mail-pb0-f46.google.com with SMTP id uo15so1838282pbc.19
	for <poky@yoctoproject.org>; Fri, 01 Mar 2013 08:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references; bh=gGVkMWiCRI8to1gNib0snjK1zOdHTXU2DUyG0FDKdXE=;
	b=0E4H/liRHOSA52u4dvfBRqWrwRmp3yiKG7gYBcvxlceYBD6jXI4OHi2K1VEn8PsIzd
	kzBqakMa/XfJF/7D9eWQqXb8XioqzeMWxgaRrNHMSI5EjsUHNa5SfBHeuknovN52Lkf3
	WFMB/EipwhGVY5qHlwsb0sOmeipL8mBlWztbZ5xskKu5MphXtHprPuUO71LgVQRIOhDD
	armsj6xLesUE39+FUn35tfyvm0vtR0O+LcHgtun+C9MSSJUHJtGVMPe9tVjGT1gEg3Q5
	0rMZTSCEEF19rVEi8UrkZ6u0JD/4K6GbGEaCJFbw6MIj5j/Di7m2A3GdOC6nriBy3ZSx
	14eQ==
X-Received: by 10.68.137.42 with SMTP id qf10mr14969071pbb.80.1362154804467;
	Fri, 01 Mar 2013 08:20:04 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id qf7sm12516264pbb.2.2013.03.01.08.20.01
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 01 Mar 2013 08:20:03 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
To: poky@yoctoproject.org
Date: Fri,  1 Mar 2013 17:19:53 +0100
Message-Id: <1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1362135473-20635-1-git-send-email-Martin.Jansa@gmail.com>
References: <1362135473-20635-1-git-send-email-Martin.Jansa@gmail.com>
Subject: [PATCHv2] poky.conf: update SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 01 Mar 2013 16:20:04 -0000

* use DistributorId-Release
* please test values for Yocto, Poky, CentOS and openSUSE

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 meta-yocto/conf/distro/poky.conf | 40 +++++++++++++++++++---------------------
 1 file changed, 19 insertions(+), 21 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index c48b492..48180d7 100644
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
+            SUSE-LINUX-11.4 \n \
+            SUSE-LINUX-12.1 \n \
+            SUSE-LINUX-12.2 \n \
 	    "
 
 # Default hash policy for distro
-- 
1.8.1.4


