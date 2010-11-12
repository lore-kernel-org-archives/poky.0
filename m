Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 203BA4C8108C
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 15:36:39 -0600 (CST)
Received: from [192.168.0.7] (5ada2504.bb.sky.com [90.218.37.4])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 3544D12EC117
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 16:13:24 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
Date: Fri, 12 Nov 2010 21:36:31 +0000
Message-ID: <1289597791.27930.40.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Subject: [PATCH 1/5] bitbake-runtask-strace: simple shell script to wrap tasks in a strace call
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
X-List-Received-Date: Fri, 12 Nov 2010 21:36:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/bin/bitbake-runtask-strace |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)
 create mode 100755 bitbake/bin/bitbake-runtask-strace

diff --git a/bitbake/bin/bitbake-runtask-strace
b/bitbake/bin/bitbake-runtask-strace
new file mode 100755
index 0000000..1741a84
--- /dev/null
+++ b/bitbake/bin/bitbake-runtask-strace
@@ -0,0 +1,8 @@
+#!/bin/bash
+STRACE=`which strace`
+
+if [ ! -x "$STRACE" ]; then
+    bitbake-runtask $1 $2 $3 $4
+else
+    strace -f -o $TRACE_LOGFILE-$3.log -e trace=open,execve
bitbake-runtask $1 $2 $3 $4
+fi
-- 
1.7.3.2



