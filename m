Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB9E04C81199
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 05:12:40 -0600 (CST)
Received: by mail-wy0-f176.google.com with SMTP id 20so6170059wye.35
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 03:12:40 -0800 (PST)
Received: by 10.227.128.75 with SMTP id j11mr432447wbs.60.1295349160625;
	Tue, 18 Jan 2011 03:12:40 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id 11sm4112022wbi.0.2011.01.18.03.12.39
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 18 Jan 2011 03:12:40 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Tue, 18 Jan 2011 12:11:38 +0100
Message-Id: <1295349098-29677-3-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
In-Reply-To: <1295349098-29677-2-git-send-email-koen@dominion.thruhere.net>
References: <1295349098-29677-1-git-send-email-koen@dominion.thruhere.net>
	<1295349098-29677-2-git-send-email-koen@dominion.thruhere.net>
Subject: [PATCH v2 3/3] setuptools bbclass: import from OE
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
X-List-Received-Date: Tue, 18 Jan 2011 11:12:41 -0000

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 meta/classes/setuptools.bbclass |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)
 create mode 100644 meta/classes/setuptools.bbclass

diff --git a/meta/classes/setuptools.bbclass b/meta/classes/setuptools.bbclass
new file mode 100644
index 0000000..ced9509
--- /dev/null
+++ b/meta/classes/setuptools.bbclass
@@ -0,0 +1,8 @@
+inherit distutils
+
+DEPENDS += "python-setuptools-native"
+
+DISTUTILS_INSTALL_ARGS = "--root=${D} \
+    --single-version-externally-managed \
+    --prefix=${prefix} \
+    --install-data=${datadir}"
-- 
1.6.6.1


