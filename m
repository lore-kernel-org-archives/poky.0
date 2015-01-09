Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FB71E00757; Thu,  8 Jan 2015 17:51:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24C83E0048B
	for <poky@yoctoproject.org>; Thu,  8 Jan 2015 17:51:35 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t091pY9G009030
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 8 Jan 2015 17:51:34 -0800 (PST)
Received: from ala-blade47.wrs.com (147.11.105.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Thu, 8 Jan 2015 17:51:33 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 8 Jan 2015 17:51:32 -0800
Message-ID: <55b3af047f8c0d197d319c9ae4695715a2308ae0.1420768234.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1420768234.git.liezhi.yang@windriver.com>
References: <cover.1420768234.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] maintainers.inc: update it
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
X-List-Received-Date: Fri, 09 Jan 2015 01:51:37 -0000
Content-Type: text/plain

Added:
gnu-efi
python-git
python-gitdb
systemd

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 meta-yocto/conf/distro/include/maintainers.inc |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 84797c3..85b206c 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -200,6 +200,7 @@ RECIPE_MAINTAINER_pn-gnome-doc-utils = "Alejandro Hernandez <alejandro.hernandez
 RECIPE_MAINTAINER_pn-gnome-icon-theme = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gnome-mime-data = "Alejandro Hernandez <alejandro.hernandez@linux.intel.com>"
 RECIPE_MAINTAINER_pn-gnu-config = "Robert Yang <liezhi.yang@windriver.com>"
+RECIPE_MAINTAINER_pn-gnu-efi = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-gnupg = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-gnutls = "Ross Burton <ross.burton@intel.com>"
 RECIPE_MAINTAINER_pn-gperf = "Ross Burton <ross.burton@intel.com>"
@@ -560,6 +561,8 @@ RECIPE_MAINTAINER_pn-python-dbus = "Richard Purdie <richard.purdie@linuxfoundati
 RECIPE_MAINTAINER_pn-python-distribute = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-docutils = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-gst = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-python-git = "Robert Yang <liezhi.yang@windriver.com>"
+RECIPE_MAINTAINER_pn-python-gitdb = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-python-imaging = "Richard Purdie <richard.purdie@linuxfoundation.org>"
 RECIPE_MAINTAINER_pn-python-mako = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-python-nose = "Khem Raj <raj.khem@gmail.com>"
@@ -634,6 +637,7 @@ RECIPE_MAINTAINER_pn-sysklogd = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-syslinux = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-sysprof = "Tom Zanussi <tom.zanussi@intel.com>"
 RECIPE_MAINTAINER_pn-sysstat = "Chen Qi <Qi.Chen@windriver.com>"
+RECIPE_MAINTAINER_pn-systemd = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-systemtap = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-systemtap-uprobes = "Tom Zanussi <tom.zanussi@intel.com>"
 RECIPE_MAINTAINER_pn-sysvinit-inittab = "Saul Wold <sgw@linux.intel.com>"
-- 
1.7.9.5


