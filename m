Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B07A2E013CB
	for <poky@yoctoproject.org>; Tue,  9 Jul 2013 23:37:13 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r6A6bDG4014133
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 9 Jul 2013 23:37:13 -0700 (PDT)
Received: from pek-qchen1-d1.corp.ad.wrs.com (128.224.162.233) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Tue, 9 Jul 2013 23:37:11 -0700
From: <Qi.Chen@windriver.com>
To: <poky@yoctoproject.org>
Date: Wed, 10 Jul 2013 14:37:12 +0800
Message-ID: <9915990f3fb2466fb2146394f65154e21b35890d.1373438138.git.Qi.Chen@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1373438138.git.Qi.Chen@windriver.com>
References: <cover.1373438138.git.Qi.Chen@windriver.com>
MIME-Version: 1.0
Cc: qingtao.cao@windriver.com
Subject: [PATCH 1/2] poky-tiny.conf: add extra libc features
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
X-List-Received-Date: Wed, 10 Jul 2013 06:37:15 -0000
Content-Type: text/plain

From: Chen Qi <Qi.Chen@windriver.com>

Add two extra libc features, libc-spawn and libc-rcmd, as they are
needed to successfully compile the shadow package which is needed
if we set USER_GROUP_SETTIGNS in some configuration file.

[YOCTO #4074]

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
---
 meta-yocto/conf/distro/poky-tiny.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 755667f..9d9ea3c 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -62,7 +62,7 @@ ASSUME_PROVIDED += "pkgconfig$"
 
 # Reconfigure eglibc for a smaller installation
 # Comment out any of the lines below to disable them in the build
-DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
+DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt libc-spawn libc-rcmd"
 DISTRO_FEATURES_LIBC_TINY_append_x86-64 = " libc-libm-big"
 
 # Required for "who"
-- 
1.7.9.5


