Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1FF864C8007E
	for <poky@yoctoproject.org>; Tue,  8 Feb 2011 23:54:32 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p195sVYe011479
	for <poky@yoctoproject.org>; Tue, 8 Feb 2011 21:54:31 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 21:54:31 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 8 Feb 2011 21:54:31 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Tue,  8 Feb 2011 23:51:45 -0600
Message-Id: <e710a3850b0438d5b092fdfef03a7cf4261e6970.1297230569.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1297230569.git.mark.hatle@windriver.com>
References: <cover.1297230569.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1297230569.git.mark.hatle@windriver.com>
References: <cover.1297230569.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 09 Feb 2011 05:54:31.0448 (UTC)
	FILETIME=[D2166180:01CBC81D]
Subject: [PATCH 1/2] package.bbclass: Preserve hard links!
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
X-List-Received-Date: Wed, 09 Feb 2011 05:54:32 -0000

Hard links were not being preserved in the move from the install image
-> package copy.  Again they were being discarded in the package ->
packages-split copy as well.

By preserving the hard links we have the potential to save a ton of rootfs
space.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/classes/package.bbclass |   18 +++++++++++++++++-
 1 files changed, 17 insertions(+), 1 deletions(-)

diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index 8f58ad0..0698f64 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -323,7 +323,8 @@ python perform_packagecopy () {
 	# Start by package population by taking a copy of the installed 
 	# files to operate on
 	os.system('rm -rf %s/*' % (dvar))
-	os.system('cp -pPR %s/* %s/' % (dest, dvar))
+	# Preserve sparse files and hard links
+	os.system('tar -cf - -C %s -ps . | tar -xf - -C %s' % (dest, dvar))
 }
 
 python populate_packages () {
@@ -383,6 +384,7 @@ python populate_packages () {
 
 		filesvar = bb.data.getVar('FILES', localdata, True) or ""
 		files = filesvar.split()
+		file_links = {}
 		for file in files:
 			if os.path.isabs(file):
 				file = '.' + file
@@ -406,9 +408,23 @@ python populate_packages () {
 				bb.mkdirhier(os.path.join(root,file))
 				os.chmod(os.path.join(root,file), os.stat(file).st_mode)
 				continue
+
 			fpath = os.path.join(root,file)
 			dpath = os.path.dirname(fpath)
 			bb.mkdirhier(dpath)
+
+			# Check if this is a hardlink to something... if it is
+			# attempt to preserve the link information, instead of copy.
+			if not os.path.islink(file):
+				s = os.stat(file)
+				if s.st_nlink > 1:
+					file_reference = "%d_%d" % (s.st_dev, s.st_ino)
+					if file_reference not in file_links:
+						# Save the reference for next time...
+						file_links[file_reference] = fpath
+					else:
+						os.link(file_links[file_reference], fpath)
+						continue
 			ret = bb.copyfile(file, fpath)
 			if ret is False or ret == 0:
 				raise bb.build.FuncFailed("File population failed")
-- 
1.7.3.4


