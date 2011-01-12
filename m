Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id B01774C80BEF
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 08:42:59 -0600 (CST)
Received: by wwi17 with SMTP id 17so4048304wwi.5
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 06:42:58 -0800 (PST)
Received: by 10.227.69.201 with SMTP id a9mr1080491wbj.24.1294843378270;
	Wed, 12 Jan 2011 06:42:58 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id m13sm529610wbz.15.2011.01.12.06.42.50
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 12 Jan 2011 06:42:55 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Wed, 12 Jan 2011 15:42:46 +0100
Message-Id: <1294843366-21265-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
Subject: [PATCH] kernel bbclass: add 'perf' to kernel-modules blacklist
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
X-List-Received-Date: Wed, 12 Jan 2011 14:43:00 -0000

This makes 'kernel-modules' installable again when perf isn't enabled in the kernel config

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 meta/classes/kernel.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 86a1923..ef16fc5 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -441,7 +441,7 @@ python populate_packages_prepend () {
 	metapkg = "kernel-modules"
 	bb.data.setVar('ALLOW_EMPTY_' + metapkg, "1", d)
 	bb.data.setVar('FILES_' + metapkg, "", d)
-	blacklist = [ 'kernel-dev', 'kernel-image', 'kernel-base', 'kernel-vmlinux' ]
+	blacklist = [ 'kernel-dev', 'kernel-image', 'kernel-base', 'kernel-vmlinux', 'perf' ]
 	for l in module_deps.values():
 		for i in l:
 			pkg = module_pattern % legitimize_package_name(re.match(module_regex, os.path.basename(i)).group(1))
-- 
1.6.6.1


