Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D2D8E0143E
	for <poky@yoctoproject.org>; Mon,  4 Jun 2012 14:00:28 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 4907E30465
	for <poky@yoctoproject.org>; Mon,  4 Jun 2012 17:00:21 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Jun 2012 14:00:18 -0700
Message-Id: <ee0d2bc245499a46df2d4de96208821c4b04ff35.1338843506.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1338843506.git.scott.a.garman@intel.com>
References: <cover.1338843506.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1338843506.git.scott.a.garman@intel.com>
References: <cover.1338843506.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 4907E30465.20657
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/7] netbase: Correctly set FILESEXTRAPATHS to include the version
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
X-List-Received-Date: Mon, 04 Jun 2012 21:00:28 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

[YOCTO #2366]

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../recipes-core/netbase/netbase_4.47.bbappend     |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-yocto/recipes-core/netbase/netbase_4.47.bbappend b/meta-yocto/recipes-core/netbase/netbase_4.47.bbappend
index 72d991c..5622303 100644
--- a/meta-yocto/recipes-core/netbase/netbase_4.47.bbappend
+++ b/meta-yocto/recipes-core/netbase/netbase_4.47.bbappend
@@ -1 +1 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
-- 
1.7.9.5


