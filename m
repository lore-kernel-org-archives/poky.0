Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 18FB84C810C1;
	Mon, 10 Jan 2011 11:28:38 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0AHSZGU008979;
	Mon, 10 Jan 2011 09:28:36 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Mon, 10 Jan 2011 12:30:48 -0500
Message-Id: <26c8c86c03a1e632f630966cad7d5cf565db788a.1294680187.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1294680187.git.bruce.ashfield@windriver.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1294680187.git.bruce.ashfield@windriver.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 1/5] kernel-yocto: pass the build directory to configme
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
X-List-Received-Date: Mon, 10 Jan 2011 17:28:38 -0000

configme used to be able to calculate the output/build directory
when branches were always <machine>-<kernel type>. Branch names
can now be widely different and to avoid embedding complexity
in the scripts it is easier to just pass ${B} from the build system
down to the scripts.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta/classes/kernel-yocto.bbclass                  |    2 +-
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
index 7ebe5d6..df2a8a4 100644
--- a/meta/classes/kernel-yocto.bbclass
+++ b/meta/classes/kernel-yocto.bbclass
@@ -121,7 +121,7 @@ do_kernel_configme() {
 	echo "[INFO] doing kernel configme"
 
 	cd ${S}
-	configme --reconfig
+	configme --reconfig --output ${B}
 	if [ $? -ne 0 ]; then
 		echo "ERROR. Could not configure ${KMACHINE}-${LINUX_KERNEL_TYPE}"
 		exit 1
diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index c11faf9..c4b00a6 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -57,7 +57,7 @@ SRCREV_pn-gypsy ??= "147"
 SRCREV_pn-inputproto ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-native ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
 SRCREV_pn-inputproto-nativesdk ??= "7203036522ba9d4b224d282d6afc2d0b947711ee"
-SRCREV_pn-kern-tools-native ??= "72683bf61fdb83a1c0b4110763f803ff3e39f8ca"
+SRCREV_pn-kern-tools-native ??= "a494ddaf1c9151af8af8050e8427c9958440ec4c"
 SRCREV_pn-libdrm ??= "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
 SRCREV_pn-libfakekey ??= "2031"
 SRCREV_pn-libgdbus ??= "aeab6e3c0185b271ca343b439470491b99cc587f"
-- 
1.7.0.4


