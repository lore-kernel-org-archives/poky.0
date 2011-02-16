Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D7F04C800A3
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 09:47:09 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1GFl9Rj005837
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 07:47:09 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 16 Feb 2011 07:47:08 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 16 Feb 2011 07:47:08 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Wed, 16 Feb 2011 09:45:11 -0600
Message-Id: <f54c30b4ee75672efb932c490996f04f43876f20.1297871058.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1297871058.git.mark.hatle@windriver.com>
References: <cover.1297871058.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1297871058.git.mark.hatle@windriver.com>
References: <cover.1297871058.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 16 Feb 2011 15:47:08.0738 (UTC)
	FILETIME=[C4C68220:01CBCDF0]
Subject: [PATCH 1/1] lttng-viewer: Fix rootfs contruction
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
X-List-Received-Date: Wed, 16 Feb 2011 15:47:09 -0000

A required run-time library was leaking into the -dev package.
This caused a large number of -dev packages to be included in the build.

This library is now part of the base lttng-viewer split.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-kernel/lttng/lttng-viewer_0.12.36.bb |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-kernel/lttng/lttng-viewer_0.12.36.bb b/meta/recipes-kernel/lttng/lttng-viewer_0.12.36.bb
index e305495..fc13210 100644
--- a/meta/recipes-kernel/lttng/lttng-viewer_0.12.36.bb
+++ b/meta/recipes-kernel/lttng/lttng-viewer_0.12.36.bb
@@ -27,6 +27,7 @@ inherit autotools
 LEAD_SONAME = "liblttvtraceread*"
 
 FILES_${PN} += "\
+    ${libdir}/liblttvtraceread*.so \
     ${libdir}/lttv/plugins/*.so \
     ${datadir}/LinuxTraceToolkitViewer/facilities/* \
     ${datadir}/LinuxTraceToolkitViewer/pixmaps/* "
-- 
1.7.3.4


