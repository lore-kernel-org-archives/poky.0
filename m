Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 94D734C810AC
	for <poky@yoctoproject.org>; Sat, 11 Dec 2010 13:35:53 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 11 Dec 2010 11:35:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,329,1288594800"; d="scan'208";a="635384954"
Received: from unknown (HELO localhost) ([10.255.13.46])
	by fmsmga002.fm.intel.com with ESMTP; 11 Dec 2010 11:35:52 -0800
Message-Id: <daa530f0104aa68fa8231cfdb5cd93d872c45b10.1292096034.git.sgw@linux.intel.com>
In-Reply-To: <cover.1292096034.git.sgw@linux.intel.com>
References: <cover.1292096034.git.sgw@linux.intel.com>
From: Saul Wold <Saul.Wold@intel.com>
Date: Fri, 10 Dec 2010 16:59:15 -0800
To: poky@yoctoproject.org
Cc: Saul Wold <Saul.Wold@intel.com>
Subject: [PATCH 03/13] rpm: Add LIC_FILES_CHKSUM
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
X-List-Received-Date: Sat, 11 Dec 2010 19:35:53 -0000

Signed-off-by: Saul Wold <Saul.Wold@intel.com>
---
 meta/recipes-devtools/rpm/rpm_5.1.10.bb |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/rpm/rpm_5.1.10.bb b/meta/recipes-devtools/rpm/rpm_5.1.10.bb
index 3914b59..5211a44 100644
--- a/meta/recipes-devtools/rpm/rpm_5.1.10.bb
+++ b/meta/recipes-devtools/rpm/rpm_5.1.10.bb
@@ -2,6 +2,8 @@ DESCRIPTION = "The RPM Package Manager - relaunched"
 DESCRIPTION_rpm-build = "The RPM Package Manager rpmbuild and related commands."
 HOMEPAGE = "http://rpm5.org/"
 LICENSE = "LGPL 2.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=2d5025d4aa3495befef8f17206a5b0a1"
+
 DEPENDS = "zlib perl popt beecrypt python libpcre elfutils"
 PR = "r7"
 
-- 
1.7.1.1


