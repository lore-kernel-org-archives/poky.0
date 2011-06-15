Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 068354C800B3
	for <poky@yoctoproject.org>; Tue, 14 Jun 2011 20:43:07 -0500 (CDT)
Received: from localhost.localdomain (c-76-115-40-57.hsd1.or.comcast.net
	[76.115.40.57])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 8C8E030501;
	Tue, 14 Jun 2011 21:43:02 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 14 Jun 2011 18:42:55 -0700
Message-Id: <b735e31ec3b5d2bd27718aec7aff868e859e66ae.1308101091.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1308101091.git.scott.a.garman@intel.com>
References: <cover.1308101091.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1308101091.git.scott.a.garman@intel.com>
References: <cover.1308101091.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 8C8E030501.E0588
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/1] bitbake wrapper: exit if python v3 is detected
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
X-List-Received-Date: Wed, 15 Jun 2011 01:43:08 -0000

Make sure we're not using python v3.x. This check can't go into
sanity.bbclass because bitbake's source code doesn't even pass
parsing stage when used with python v3, so we catch it here so we
can offer a meaningful error message.

This fixes bug [YOCTO #1128]

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 scripts/bitbake |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/scripts/bitbake b/scripts/bitbake
index 3923421..587428c 100755
--- a/scripts/bitbake
+++ b/scripts/bitbake
@@ -16,6 +16,17 @@ done
 [ $needpseudo = "0" ] && break
 done
 
+# Make sure we're not using python v3.x. This check can't go into
+# sanity.bbclass because bitbake's source code doesn't even pass
+# parsing stage when used with python v3, so we catch it here so we
+# can offer a meaningful error message.
+py_v3_check=`/usr/bin/env python --version 2>&1 | grep "Python 3"`
+if [ "$py_v3_check" != "" ]; then
+	echo "Bitbake is not compatible with python v3"
+	echo "Please set up python v2 as your default python interpreter"
+	exit 1
+fi
+
 needtar="1"
 TARVERSION=`tar --version | head -n 1 | cut -d ' ' -f 4`
 float_test() {
-- 
1.7.1


