Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E36D4C81246
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 23:50:34 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0S5oXHD020455
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 21:50:33 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 21:50:33 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 27 Jan 2011 21:50:33 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Thu, 27 Jan 2011 23:46:28 -0600
Message-Id: <be9a6ab2107af617e272486cf0661858ed28f6f5.1296193457.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1296193457.git.mark.hatle@windriver.com>
References: <cover.1296193457.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1296193457.git.mark.hatle@windriver.com>
References: <cover.1296193457.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 28 Jan 2011 05:50:33.0341 (UTC)
	FILETIME=[473522D0:01CBBEAF]
Subject: [PATCH 2/3] rootfs_rpm: Setup the platform configuration
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
X-List-Received-Date: Fri, 28 Jan 2011 05:50:34 -0000

The RPM platform configuration file lists all of the supported architectures,
while RPM itself doesn't use this information, other tools may use it to
determine compatibility.  The first item is the default architecture for a
system, while the following items specify alternative compatible architectures.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/rootfs_rpm.bbclass |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
index 6be7886..4a4ec0e 100644
--- a/meta/classes/rootfs_rpm.bbclass
+++ b/meta/classes/rootfs_rpm.bbclass
@@ -39,7 +39,13 @@ fakeroot rootfs_rpm_do_rootfs () {
 
 	# Setup base system configuration
 	mkdir -p ${IMAGE_ROOTFS}/etc/rpm/
-	echo "${TARGET_ARCH}-linux" >${IMAGE_ROOTFS}/etc/rpm/platform
+
+	# Default arch is the top..
+	echo "${TARGET_ARCH}-unknown-linux" >${IMAGE_ROOTFS}/etc/rpm/platform
+	# Add the rest in sort order..
+	for each in ${PACKAGE_ARCHS} ; do
+		echo "$each""-unknown-linux" >>${IMAGE_ROOTFS}/etc/rpm/platform
+	done
 
 	# Tell RPM that the "/" directory exist and is available
 	mkdir -p ${IMAGE_ROOTFS}/etc/rpm/sysinfo
-- 
1.7.3.4


