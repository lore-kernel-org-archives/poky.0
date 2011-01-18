Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id B58274C80039
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 05:12:38 -0600 (CST)
Received: by wye20 with SMTP id 20so6170059wye.35
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 03:12:37 -0800 (PST)
Received: by 10.227.147.5 with SMTP id j5mr5406432wbv.61.1295349157747;
	Tue, 18 Jan 2011 03:12:37 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id s9sm3547833wby.4.2011.01.18.03.12.35
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 18 Jan 2011 03:12:36 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Tue, 18 Jan 2011 12:11:36 +0100
Message-Id: <1295349098-29677-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
Subject: [PATCH v2 1/3] python-dir bbclass: import from OE
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
X-List-Received-Date: Tue, 18 Jan 2011 11:12:39 -0000

This will be used later on when updating the distutils classes

A small deviation from OE is the use of PYTHON_BASEVERSION instead of non-deterministic python code. See https://lists.yoctoproject.org/pipermail/poky/2011-January/002320.html for some background info

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 meta/classes/python-dir.bbclass |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/python-dir.bbclass

diff --git a/meta/classes/python-dir.bbclass b/meta/classes/python-dir.bbclass
new file mode 100644
index 0000000..a072a93
--- /dev/null
+++ b/meta/classes/python-dir.bbclass
@@ -0,0 +1,2 @@
+PYTHON_DIR = "python${PYTHON_BASEVERSION}"
+PYTHON_SITEPACKAGES_DIR = "${libdir}/${PYTHON_DIR}/site-packages"
-- 
1.6.6.1


