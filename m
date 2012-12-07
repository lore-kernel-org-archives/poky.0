Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B455E01459
	for <poky@yoctoproject.org>; Thu,  6 Dec 2012 21:06:17 -0800 (PST)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 4BC3530410
	for <poky@yoctoproject.org>; Fri,  7 Dec 2012 00:06:10 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Thu,  6 Dec 2012 21:05:40 -0800
Message-Id: <61a7d3c85614c671daaac363b0ca8d173c739a45.1354856621.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1354856621.git.scott.a.garman@intel.com>
References: <cover.1354856621.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1354856621.git.scott.a.garman@intel.com>
References: <cover.1354856621.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 4BC3530410.2FB5E
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 07/18] opkg-utils: Add needed python modules as RDEPENDS
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
X-List-Received-Date: Fri, 07 Dec 2012 05:06:17 -0000

From: Andrei Gherzan <andrei@gherzan.ro>

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 meta/recipes-devtools/opkg-utils/opkg-utils_git.bb |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb b/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb
index 92e6624..825c927 100644
--- a/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb
+++ b/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb
@@ -4,11 +4,11 @@ HOMEPAGE = "http://wiki.openmoko.org/wiki/Opkg"
 LICENSE = "GPLv2+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://opkg.py;beginline=1;endline=18;md5=15917491ad6bf7acc666ca5f7cc1e083"
-RDEPENDS_${PN} = "python"
+RDEPENDS_${PN} = "python python-shell python-io python-math python-crypt python-logging python-fcntl python-subprocess python-pickle python-compression python-textutils python-stringold"
 RDEPENDS_${PN}_virtclass-native = ""
 SRCREV = "49cc783d8e0415059d126ae22c892988717ffda7"
 PV = "0.1.8+git${SRCPV}"
-PR = "r0"
+PR = "r1"
 
 SRC_URI = "git://git.yoctoproject.org/opkg-utils;protocol=git \
            "
-- 
1.7.9.5


