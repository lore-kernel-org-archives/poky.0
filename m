Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEDB7E01467
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:41:51 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 9D76C2FE86
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:41:45 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:03 -0700
Message-Id: <ad6617d1a1a523368ea0f57ef16ee01fd6c9cd86.1339533507.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 9D76C2FE86.91D96
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 13/31] bitbake.conf: Improve wget timeouts
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
X-List-Received-Date: Tue, 12 Jun 2012 20:41:51 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

The wget default is a 900 second timeout and 20 retries. This is way too long
for most of our usecases so this patch changes it to a 30 second timeout and
reduces retries from 5 to 2. We have good mirror infrastructure, this will
let us fall back to it easier.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 meta/conf/bitbake.conf |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
index 56e3e4d..618780c 100644
--- a/meta/conf/bitbake.conf
+++ b/meta/conf/bitbake.conf
@@ -559,17 +559,17 @@ XORG_MIRROR = "http://xorg.freedesktop.org/releases"
 
 FETCHCMD_svn = "/usr/bin/env svn"
 FETCHCMD_cvs = "/usr/bin/env cvs"
-FETCHCMD_wget = "/usr/bin/env wget -t 5 -nv --no-check-certificate"
+FETCHCMD_wget = "/usr/bin/env wget -t 2 -T 30 -nv --no-check-certificate"
 FETCHCMD_bzr = "/usr/bin/env bzr"
 FETCHCMD_hg = "/usr/bin/env hg"
 
 FETCHCOMMAND = "ERROR, this must be a BitBake bug"
-FETCHCOMMAND_wget = "/usr/bin/env wget -t 5 -nv --passive-ftp --no-check-certificate -P ${DL_DIR} '${URI}'"
+FETCHCOMMAND_wget = "/usr/bin/env wget  -t 2 -T 30 -nv --passive-ftp --no-check-certificate -P ${DL_DIR} '${URI}'"
 FETCHCOMMAND_cvs = "/usr/bin/env cvs '-d${CVSROOT}' co ${CVSCOOPTS} ${CVSMODULE}"
 FETCHCOMMAND_svn = "/usr/bin/env svn co ${SVNCOOPTS} ${SVNROOT} ${SVNMODULE}"
-CHECKCOMMAND_wget = "/usr/bin/env wget --spider -t 5 --passive-ftp --no-check-certificate -P ${DL_DIR} '${URI}'"
+CHECKCOMMAND_wget = "/usr/bin/env wget --spider  -t 2 -T 30 --passive-ftp --no-check-certificate -P ${DL_DIR} '${URI}'"
 RESUMECOMMAND = "ERROR, this must be a BitBake bug"
-RESUMECOMMAND_wget = "/usr/bin/env wget -c -t 5 -nv --passive-ftp --no-check-certificate -P ${DL_DIR} '${URI}'"
+RESUMECOMMAND_wget = "/usr/bin/env wget -c -t 2 -T 30 -nv --passive-ftp --no-check-certificate -P ${DL_DIR} '${URI}'"
 UPDATECOMMAND = "ERROR, this must be a BitBake bug"
 UPDATECOMMAND_cvs = "/usr/bin/env cvs -d${CVSROOT} update -d -P ${CVSCOOPTS}"
 UPDATECOMMAND_svn = "/usr/bin/env svn update ${SVNCOOPTS}"
-- 
1.7.9.5


