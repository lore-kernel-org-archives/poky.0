Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6CE134C80097
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 08:28:34 -0600 (CST)
Received: by wwb31 with SMTP id 31so5043926wwb.11
	for <poky@yoctoproject.org>; Mon, 07 Feb 2011 06:28:33 -0800 (PST)
Received: by 10.227.155.66 with SMTP id r2mr2012416wbw.73.1297088913504;
	Mon, 07 Feb 2011 06:28:33 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id t11sm2184549wes.17.2011.02.07.06.28.32
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 07 Feb 2011 06:28:33 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Mon,  7 Feb 2011 15:27:27 +0100
Message-Id: <1297088847-4955-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
Subject: [PATCH] [RFH] rpm: catch up with fetcher2
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
X-List-Received-Date: Mon, 07 Feb 2011 14:28:35 -0000

I tried to change this to mimic the base.bbclass changes as much as possible, but I can't get it to work. Can someone with more RPM and fetcher2 experience have a look please?

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 meta/recipes-devtools/rpm/rpm_5.4.0.bb |   22 ++++++++++++----------
 1 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/meta/recipes-devtools/rpm/rpm_5.4.0.bb b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
index e158b80..6c1ce81 100644
--- a/meta/recipes-devtools/rpm/rpm_5.4.0.bb
+++ b/meta/recipes-devtools/rpm/rpm_5.4.0.bb
@@ -333,7 +333,7 @@ python base_do_unpack_append() {
 	import subprocess
 
 	for url in src_uri:
-		local = bb.fetch2.localpath(url)
+		local = bb.fetch2.localpath(url, d)
 		if local is None:
 			continue
 		local = os.path.realpath(local)
@@ -347,21 +347,23 @@ python base_do_unpack_append() {
 			newdir = ("%s/%s" % (old_cwd, 'srpm-unpack'))
 			bb.mkdirhier(newdir)
 			os.chdir(newdir)
-			ret = subprocess.call(cmd, preexec_fn=subprocess_setup, shell=True)
+			ret = subprocess.call(cmd, shell=True)
 			os.chdir(old_cwd)
 			if ret != 0:
 				raise bb.build.FuncFailed('Unpack command failed: %s (%s)' % (cmd, ret))
 
-	srpm_uri = bb.data.getVar('SRPM_UNPACK', localdata, True)
-	if not srpm_uri:
+	srpm_uri = bb.data.getVar('SRPM_UNPACK', localdata, True).split()
+	if len(srpm_uri) == 0:
 		return
 
-	# Note, not really URI's!  Just a list of files
-	for url in srpm_uri.split():
-		local = os.path.join(bb.data.getVar('WORKDIR', localdata, 1), "srpm-unpack/" + url)
-		ret = oe_unpack_file(local, localdata, 'file://' + url)
-		if not ret:
-			raise bb.build.FuncFailed("oe_unpack_file failed with return value %s" % ret)
+	rootdir = bb.data.getVar('WORKDIR', localdata, True)
+	srpm_file_uri = [ "file://srpm-unpack/" + uri for uri in srpm_uri]; 
+
+	try:
+		fetcher = bb.fetch2.Fetch(srpm_file_uri, localdata)
+		fetcher.unpack(rootdir)
+	except bb.fetch2.BBFetchException, e:
+		raise bb.build.FuncFailed(e)
 }
 
 do_configure() {
-- 
1.6.6.1


