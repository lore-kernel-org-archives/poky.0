Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5CA564C80AAA
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 20:20:42 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Mar 2011 18:20:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,300,1297065600"; d="scan'208";a="896099201"
Received: from unknown (HELO localhost) ([10.255.17.57])
	by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2011 18:20:36 -0800
Message-Id: <c9de88de6487945c3fd27f41020b5b2c9ecc2f05.1299809859.git.sgw@linux.intel.com>
In-Reply-To: <cover.1299809859.git.sgw@linux.intel.com>
References: <cover.1299809859.git.sgw@linux.intel.com>
Old-Date: Thu, 10 Mar 2011 16:06:16 -0800
Date: Thu, 10 Mar 2011 18:20:34 -0800
To: poky@yoctoproject.org,openembedded-core@lists.openembedded.org
From: Saul Wold <sgw@linux.intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [PATCH 07/12] openssh: allow the openssh meta package to be empty
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
X-List-Received-Date: Fri, 11 Mar 2011 02:20:42 -0000

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
1.7.1.1


