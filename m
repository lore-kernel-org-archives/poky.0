Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6029D4C8112E
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 18:22:09 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 3F9C530503
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 19:22:04 -0500 (EST)
Message-Id: <8b101a50a90bb93493e747863a68248a6726637b.1295655589.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295655589.git.scott.a.garman@intel.com>
References: <cover.1295655589.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Fri, 21 Jan 2011 16:15:33 -0800
Date: Fri, 21 Jan 2011 16:22:01 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 3F9C530503.611FE
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 1/1] send-pull-request: unset $TO and $CC from environment
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
X-List-Received-Date: Sat, 22 Jan 2011 00:22:09 -0000

Darren Hart and I discovered that when $CC is set (which
our meta-toolchain environment script sets up), the value
leaks into the use of this script. Unsetting $TO as well
just to be thorough.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 scripts/send-pull-request |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/scripts/send-pull-request b/scripts/send-pull-request
index 9872c0d..a66d4dc 100755
--- a/scripts/send-pull-request
+++ b/scripts/send-pull-request
@@ -6,6 +6,10 @@ if [ -z "$PULL_MTA" ]; then
     PULL_MTA="sendmail"
 fi
 
+# Prevent environment leakage to these vars.
+unset TO
+unset CC
+
 usage()
 {
 cat <<EOM
-- 
1.7.1


