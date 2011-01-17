Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F6C74C811D2
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 09:54:41 -0600 (CST)
Received: by wwb31 with SMTP id 31so5682949wwb.11
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 07:54:40 -0800 (PST)
Received: by 10.216.166.130 with SMTP id g2mr3992201wel.3.1295279679292;
	Mon, 17 Jan 2011 07:54:39 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id m6sm2448567wej.34.2011.01.17.07.54.30
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 07:54:30 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Mon, 17 Jan 2011 16:53:25 +0100
Message-Id: <1295279606-19767-4-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
In-Reply-To: <1295279606-19767-3-git-send-email-koen@dominion.thruhere.net>
References: <1295279606-19767-1-git-send-email-koen@dominion.thruhere.net>
	<1295279606-19767-2-git-send-email-koen@dominion.thruhere.net>
	<1295279606-19767-3-git-send-email-koen@dominion.thruhere.net>
Subject: [PATCH 4/5] setuptools bbclass: import from OE
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
X-List-Received-Date: Mon, 17 Jan 2011 15:54:42 -0000

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


