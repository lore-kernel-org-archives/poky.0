Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3E5D64C80AA3
	for <poky@yoctoproject.org>; Tue, 31 May 2011 13:14:21 -0500 (CDT)
Received: from localhost.localdomain (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 710072FE9F;
	Tue, 31 May 2011 14:14:16 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 31 May 2011 11:13:57 -0700
Message-Id: <ba366e72b41cf042347f5772373d2bc2718b0e88.1306865217.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1306865217.git.scott.a.garman@intel.com>
References: <cover.1306865217.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1306865217.git.scott.a.garman@intel.com>
References: <cover.1306865217.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 710072FE9F.2CB86
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 7/7] package_rpm.bbclass: make RPM use on-disk permissions
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
X-List-Received-Date: Tue, 31 May 2011 18:14:21 -0000

Instruct RPM to use the on-disk permissions, owners, groups,
and directory permissions, instead of defaulting to root:root

Code changes suggested by Mark Hatle.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/classes/package_rpm.bbclass |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/classes/package_rpm.bbclass b/meta/classes/package_rpm.bbclass
index 1d8c686..d124c01 100644
--- a/meta/classes/package_rpm.bbclass
+++ b/meta/classes/package_rpm.bbclass
@@ -484,6 +484,7 @@ python write_specfile () {
 			else:
 				bb.note("Creating RPM package for %s" % splitname)
 				spec_files_top.append('%files')
+				spec_files_top.append('%defattr(-,-,-,-)')
 				if file_list:
 					spec_files_top.extend(file_list)
 				spec_files_top.append('')
@@ -570,6 +571,7 @@ python write_specfile () {
 		else:
 			bb.note("Creating RPM package for %s" % splitname)
 			spec_files_bottom.append('%%files -n %s' % splitname)
+			spec_files_bottom.append('%defattr(-,-,-,-)')
 			if file_list:
 				spec_files_bottom.extend(file_list)
 			spec_files_bottom.append('')
-- 
1.7.1


