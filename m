Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id DA6FC4C804B8
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 19:41:20 -0600 (CST)
Received: from localhost (unknown [67.232.160.146])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id A038C304F3
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 20:41:12 -0500 (EST)
Message-Id: <bcbd651b7ab49ce5de3674b4c1bb9be9f0060658.1299807513.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1299807513.git.scott.a.garman@intel.com>
References: <cover.1299807513.git.scott.a.garman@intel.com>
Old-Date: Thu, 10 Mar 2011 16:06:16 -0800
Date: Thu, 10 Mar 2011 17:41:10 -0800
To: poky@yoctoproject.org
CC: 
From: Scott Garman <scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: A038C304F3.B9504
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 2/7] openssh: allow the openssh meta package to be empty
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
X-List-Received-Date: Fri, 11 Mar 2011 01:41:21 -0000

From: Scott Garman <scott.a.garman@intel.com>

This allows the openssh meta-package to be used in the
poky-ssh task. Otherwise there will be no package named
openssh to install during image creation.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/recipes-connectivity/openssh/openssh_5.6p1.bb |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-connectivity/openssh/openssh_5.6p1.bb b/meta/recipes-connectivity/openssh/openssh_5.6p1.bb
index be9ae09..d93a773 100644
--- a/meta/recipes-connectivity/openssh/openssh_5.6p1.bb
+++ b/meta/recipes-connectivity/openssh/openssh_5.6p1.bb
@@ -7,7 +7,7 @@ SECTION = "console/network"
 LICENSE = "BSD"
 LIC_FILES_CHKSUM = "file://LICENCE;md5=7ae09218173be1643c998a4b71027f9b"
 
-PR = "r0"
+PR = "r1"
 
 DEPENDS = "zlib openssl"
 DEPENDS += "${@base_contains('DISTRO_FEATURES', 'pam', 'libpam', '', d)}"
@@ -67,6 +67,8 @@ do_install_append () {
 	rmdir ${D}/var/run/sshd ${D}/var/run ${D}/var
 }
 
+ALLOW_EMPTY_${PN} = "1"
+
 PACKAGES =+ "${PN}-keygen ${PN}-scp ${PN}-ssh ${PN}-sshd ${PN}-sftp ${PN}-misc ${PN}-sftp-server"
 FILES_${PN}-scp = "${bindir}/scp.${PN}"
 FILES_${PN}-ssh = "${bindir}/ssh.${PN} ${sysconfdir}/ssh/ssh_config"
-- 
1.7.1


