Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7016D4C80A54
	for <poky@yoctoproject.org>; Mon, 16 May 2011 21:39:42 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4H2dfUN022674
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 May 2011 19:39:41 -0700 (PDT)
Received: from usp-ub10.corp.ad.wrs.com (128.224.163.66) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 16 May 2011 19:39:41 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <dvhart@linux.intel.com>, <sgw@linux.intel.com>
Date: Tue, 17 May 2011 10:40:01 +0800
Message-ID: <64381f0d88c840c6cb48392c1094b87149ed5372.1305599686.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1305599686.git.liezhi.yang@windriver.com>
References: <cover.1305599686.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: V3 [PATCH 3/4] Add pidofproc to ${sysconfdir}/init.d/functions
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
X-List-Received-Date: Tue, 17 May 2011 02:39:42 -0000
Content-Type: text/plain

Add pidofproc to ${sysconfdir}/init.d/functions, this is used for
getting the pid of the process. It uses pidof to implement currently, it
may also use the pidfile or ps to implement in the future.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 .../initscripts/initscripts-1.0/functions          |   32 ++++++++++++++++++-
 1 files changed, 30 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/initscripts/initscripts-1.0/functions b/meta/recipes-core/initscripts/initscripts-1.0/functions
index ac99e11..1c8e5ce 100644
--- a/meta/recipes-core/initscripts/initscripts-1.0/functions
+++ b/meta/recipes-core/initscripts/initscripts-1.0/functions
@@ -3,6 +3,35 @@
 # functions     This file contains functions to be used by most or all
 #               shell scripts in the /etc/init.d directory.
 #
+# NOTE: The pidofproc () doesn't support the process which is a script unless
+#       the pidof supports "-x" option. If you want to use it for such a
+#       process:
+#       1) If there is no "pidof -x", replace the "pidof $1" with another
+#          command like(for core-image-minimal):
+#            ps | awk '/'"$1"'/ {print $1}'
+#       Or
+#       2) If there is "pidof -x", replace "pidof" with "pidof -x".
+#
+# pidofproc - print the pid of a process
+# $1: the name of the process
+pidofproc () {
+
+    # pidof output null when no program is running, so no "2>/dev/null".
+    pid=`pidof $1`
+    case $? in
+    0)
+        echo $pid
+        return 0
+        ;;
+    127)
+        echo "ERROR: command pidof not found" >&2
+        exit 127
+        ;;
+    *)
+        return $?
+        ;;
+    esac
+}
 
 machine_id() { # return the machine ID
 	awk 'BEGIN { FS=": " } /Hardware/ \
@@ -10,6 +39,5 @@ machine_id() { # return the machine ID
 }
 
 killproc() { # kill the named process(es)
-	pid=`/bin/pidof $1`
-	[ "$pid" != "" ] && kill $pid
+	pid=`pidofproc $1` && kill $pid
 }
-- 
1.7.1


