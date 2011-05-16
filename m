Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 169E54C800E0
	for <poky@yoctoproject.org>; Mon, 16 May 2011 10:18:48 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4GFIlPP021461
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 May 2011 08:18:47 -0700 (PDT)
Received: from usp-ub10.corp.ad.wrs.com (128.224.163.66) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 16 May 2011 08:18:46 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <dvhart@linux.intel.com>, <sgw@linux.intel.com>
Date: Mon, 16 May 2011 23:19:06 +0800
Message-ID: <e3e569916fb79b1fa249c457846852873e14fc23.1305558153.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1305558153.git.liezhi.yang@windriver.com>
References: <cover.1305558153.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: V2 [PATCH 2/3] Add pidofproc to ${sysconfdir}/init.d/functions
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
X-List-Received-Date: Mon, 16 May 2011 15:18:48 -0000
Content-Type: text/plain

Add pidofproc to ${sysconfdir}/init.d/functions, this is used for
getting the pid of the process. It uses pidof to implement currently, it
may also use the pidfile or ps to implement in the future.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 .../initscripts/initscripts-1.0/functions          |   32 ++++++++++++++++++-
 1 files changed, 30 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-core/initscripts/initscripts-1.0/functions b/meta/recipes-core/initscripts/initscripts-1.0/functions
index 689fd32..6a51b3b 100644
--- a/meta/recipes-core/initscripts/initscripts-1.0/functions
+++ b/meta/recipes-core/initscripts/initscripts-1.0/functions
@@ -4,11 +4,39 @@
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
+pidofproc () {
+        local pid status
+
+        status=0
+        # pidof output null when no program is running, so no "2>/dev/null".
+        pid=`pidof $1` || status=$?
+        case $status in
+          0)
+                echo $pid
+                return 0
+                ;;
+          127)
+                echo "ERROR: command pidof not found" >&2
+                exit 127
+                ;;
+          *)
+                return $status
+                ;;
+        esac
+}
+
 machine_id() {		# return the machine ID
     awk 'BEGIN { FS=": " } /Hardware/ { gsub(" ", "_", $2); print tolower($2) } ' </proc/cpuinfo
 }
 
 killproc() {		# kill the named process(es)
-    pid=`/bin/pidof $1`
-    [ "$pid" != "" ] && kill $pid
+    pid=`pidofproc $1` && kill $pid
 }
-- 
1.7.1


