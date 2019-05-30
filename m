Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4EEEE00D6B; Thu, 30 May 2019 02:23:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82A1FE00D63
	for <poky@yoctoproject.org>; Thu, 30 May 2019 02:23:35 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x4U9NSDN013465
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 30 May 2019 02:23:28 -0700 (PDT)
Received: from msp-lpggp1.wrs.com (172.25.34.110) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.439.0;
	Thu, 30 May 2019 02:23:27 -0700
From: <kai.kang@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Thu, 30 May 2019 05:22:32 -0400
Message-ID: <20190530092232.169453-4-kai.kang@windriver.com>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20190530092232.169453-1-kai.kang@windriver.com>
References: <20190530092232.169453-1-kai.kang@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: [meta-poky][PATCH v4 3/3] systemd-conf: configure wired network with dhcp
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 30 May 2019 09:23:38 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

Add a configure file for systemd.networkd to configure wired network
interfaces with dhcp. It works with common network interfaces such eth0
and eno1. And do not install it for qemu bsps.

Refer to
https://github.com/YoeDistro/meta-yoe/tree/master/recipes-core/systemd

[YOCTO #13057]

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 meta/recipes-core/systemd/systemd-conf/wired.network | 9 +++++++++
 meta/recipes-core/systemd/systemd-conf_242.bb        | 6 ++++++
 2 files changed, 15 insertions(+)
 create mode 100644 meta/recipes-core/systemd/systemd-conf/wired.network

diff --git a/meta/recipes-core/systemd/systemd-conf/wired.network b/meta/recipes-core/systemd/systemd-conf/wired.network
new file mode 100644
index 0000000000..253aee9382
--- /dev/null
+++ b/meta/recipes-core/systemd/systemd-conf/wired.network
@@ -0,0 +1,9 @@
+[Match]
+Name=en* eth*
+
+[Network]
+DHCP=yes
+
+[DHCP]
+RouteMetric=10
+ClientIdentifier=mac
diff --git a/meta/recipes-core/systemd/systemd-conf_242.bb b/meta/recipes-core/systemd/systemd-conf_242.bb
index 96beea53a7..d9ec023bfd 100644
--- a/meta/recipes-core/systemd/systemd-conf_242.bb
+++ b/meta/recipes-core/systemd/systemd-conf_242.bb
@@ -10,17 +10,22 @@ SRC_URI = "\
     file://logind.conf \
     file://system.conf \
     file://system.conf-qemuall \
+    file://wired.network \
 "
 
 do_install() {
 	install -D -m0644 ${WORKDIR}/journald.conf ${D}${systemd_unitdir}/journald.conf.d/00-${PN}.conf
 	install -D -m0644 ${WORKDIR}/logind.conf ${D}${systemd_unitdir}/logind.conf.d/00-${PN}.conf
 	install -D -m0644 ${WORKDIR}/system.conf ${D}${systemd_unitdir}/system.conf.d/00-${PN}.conf
+	install -D -m0644 ${WORKDIR}/wired.network ${D}${systemd_unitdir}/network/80-wired.network
 }
 
 # Based on change from YP bug 8141, OE commit 5196d7bacaef1076c361adaa2867be31759c1b52
 do_install_append_qemuall() {
 	install -D -m0644 ${WORKDIR}/system.conf-qemuall ${D}${systemd_unitdir}/system.conf.d/01-${PN}.conf
+
+	# Do not install wired.network for qemu bsps
+	rm -rf ${D}${systemd_unitdir}/network
 }
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
@@ -29,4 +34,5 @@ FILES_${PN} = "\
     ${systemd_unitdir}/journald.conf.d/ \
     ${systemd_unitdir}/logind.conf.d/ \
     ${systemd_unitdir}/system.conf.d/ \
+    ${systemd_unitdir}/network/ \
 "
-- 
2.20.0


