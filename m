Return-Path: <trini@kernel.crashing.org>
Received: from fed1rmmtao102.cox.net (fed1rmmtao102.cox.net [68.230.241.44])
	by mx1.pokylinux.org (Postfix) with ESMTP id 17A654C810E5
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 13:28:25 -0600 (CST)
Received: from fed1rmimpo01.cox.net ([70.169.32.71]) by fed1rmmtao102.cox.net
	(InterMail vM.8.01.04.00 201-2260-137-20101110) with ESMTP id
	<20110128192825.LQJV27452.fed1rmmtao102.cox.net@fed1rmimpo01.cox.net>;
	Fri, 28 Jan 2011 14:28:25 -0500
Received: from localhost ([68.230.54.74]) by fed1rmimpo01.cox.net with bizsmtp
	id 17UR1g00K1c4QQc037URry; Fri, 28 Jan 2011 14:28:25 -0500
X-VR-Score: 0.00
X-Authority-Analysis: v=1.1 cv=BG8qfcBhb6ysayQw8y3mT4lZCrTQT92KqHQGbTaNafk=
	c=1 sm=1 a=1wnsU2VTbYgA:10 a=Radsl6Z+G8iJZwukXIp+gw==:17
	a=9Wbp7B8dAAAA:8
	a=SUDCPscr1U1aFJE8fWYA:9 a=Q_4I0erR77Ef3whiKL-7FYFGg0AA:4
	a=QKMRfEvApNQA:10 a=Radsl6Z+G8iJZwukXIp+gw==:117
X-CM-Score: 0.00
Authentication-Results: cox.net; none
From: Tom Rini <tom_rini@mentor.com>
To: poky@yoctoproject.org
Date: Fri, 28 Jan 2011 12:28:19 -0700
Message-Id: <1296242899-7406-1-git-send-email-tom_rini@mentor.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH] poky-{glibc,uclibc}.inc: Add libc-foo OVERRIDES
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Jan 2011 19:28:26 -0000

This brings things back in sync with OpenEmbedded and will
help with recipe porting.

Signed-off-by: Tom Rini <tom_rini@mentor.com>
---
 meta/conf/distro/include/poky-glibc.inc  |    3 +++
 meta/conf/distro/include/poky-uclibc.inc |    3 +++
 2 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/meta/conf/distro/include/poky-glibc.inc b/meta/conf/distro/include/poky-glibc.inc
index 35c6fc1..4be7122 100644
--- a/meta/conf/distro/include/poky-glibc.inc
+++ b/meta/conf/distro/include/poky-glibc.inc
@@ -2,6 +2,9 @@
 # glibc specific configuration
 #
 
+# Add glibc to the overrides.
+OVERRIDES =. "libc-glibc:"
+
 #glibc
 PREFERRED_PROVIDER_virtual/libiconv ?= "glibc"
 PREFERRED_PROVIDER_virtual/libintl ?= "glibc"
diff --git a/meta/conf/distro/include/poky-uclibc.inc b/meta/conf/distro/include/poky-uclibc.inc
index edbcc4a..def9dfe 100644
--- a/meta/conf/distro/include/poky-uclibc.inc
+++ b/meta/conf/distro/include/poky-uclibc.inc
@@ -2,6 +2,9 @@
 # uclibc specific configuration
 #
 
+# Add uclibc overrides to the overrides.
+OVERRIDES =. "libc-uclibc:"
+
 PREFERRED_PROVIDER_virtual/libc = "uclibc"
 PREFERRED_PROVIDER_virtual/${TARGET_PREFIX}libc-for-gcc = "uclibc"
 PREFERRED_PROVIDER_virtual/libiconv ?= "libiconv"
-- 
1.7.0.4


