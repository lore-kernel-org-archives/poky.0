Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D74024C81199
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 09:54:27 -0600 (CST)
Received: by mail-wy0-f176.google.com with SMTP id 20so5407306wye.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 07:54:27 -0800 (PST)
Received: by 10.216.171.133 with SMTP id r5mr42044wel.91.1295279667313;
	Mon, 17 Jan 2011 07:54:27 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id r38sm2449066weq.47.2011.01.17.07.54.26
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 07:54:26 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Mon, 17 Jan 2011 16:53:23 +0100
Message-Id: <1295279606-19767-2-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
In-Reply-To: <1295279606-19767-1-git-send-email-koen@dominion.thruhere.net>
References: <1295279606-19767-1-git-send-email-koen@dominion.thruhere.net>
Subject: [PATCH 2/5] python-dir bbclass: import from OE
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
X-List-Received-Date: Mon, 17 Jan 2011 15:54:28 -0000

This will be used later on when updating the distutils classes

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 meta/classes/python-dir.bbclass |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/python-dir.bbclass

diff --git a/meta/classes/python-dir.bbclass b/meta/classes/python-dir.bbclass
new file mode 100644
index 0000000..7b0b809
--- /dev/null
+++ b/meta/classes/python-dir.bbclass
@@ -0,0 +1,11 @@
+def python_dir(d):
+	import os, bb
+	staging_incdir = bb.data.getVar( "STAGING_INCDIR", d, 1 )
+	for majmin in "2.6 2.5 2.4 2.3".split():
+		if os.path.exists( "%s/python%s" % ( staging_incdir, majmin ) ): return "python%s" % majmin
+	if not "python-native" in bb.data.getVar( "DEPENDS", d, 1 ).split():
+		raise Exception("No Python in STAGING_INCDIR. Forgot to build python-native?")
+	return "INVALID"
+
+PYTHON_DIR = "${@python_dir(d)}"
+PYTHON_SITEPACKAGES_DIR = "${libdir}/${PYTHON_DIR}/site-packages"
-- 
1.6.6.1


