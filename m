Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 299F54C80AB7
	for <poky@yoctoproject.org>; Mon, 16 May 2011 21:39:39 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4H2dc6s022663
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 May 2011 19:39:38 -0700 (PDT)
Received: from usp-ub10.corp.ad.wrs.com (128.224.163.66) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 16 May 2011 19:39:37 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <dvhart@linux.intel.com>, <sgw@linux.intel.com>
Date: Tue, 17 May 2011 10:39:58 +0800
Message-ID: <14498d01143ba4265eb60b52cf2d3d1fd464c2c2.1305599686.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1305599686.git.liezhi.yang@windriver.com>
References: <cover.1305599686.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: V3 [PATCH 2/4] Cleanup the whitespace in functions
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
X-List-Received-Date: Tue, 17 May 2011 02:39:39 -0000
Content-Type: text/plain

Cleanup the whitespace in functions, replace the 4 whitespaces
indent with tab.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 .../initscripts/initscripts-1.0/functions          |   11 ++++++-----
 1 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/meta/recipes-core/initscripts/initscripts-1.0/functions b/meta/recipes-core/initscripts/initscripts-1.0/functions
index 689fd32..ac99e11 100644
--- a/meta/recipes-core/initscripts/initscripts-1.0/functions
+++ b/meta/recipes-core/initscripts/initscripts-1.0/functions
@@ -4,11 +4,12 @@
 #               shell scripts in the /etc/init.d directory.
 #
 
-machine_id() {		# return the machine ID
-    awk 'BEGIN { FS=": " } /Hardware/ { gsub(" ", "_", $2); print tolower($2) } ' </proc/cpuinfo
+machine_id() { # return the machine ID
+	awk 'BEGIN { FS=": " } /Hardware/ \
+		{ gsub(" ", "_", $2); print tolower($2) } ' </proc/cpuinfo
 }
 
-killproc() {		# kill the named process(es)
-    pid=`/bin/pidof $1`
-    [ "$pid" != "" ] && kill $pid
+killproc() { # kill the named process(es)
+	pid=`/bin/pidof $1`
+	[ "$pid" != "" ] && kill $pid
 }
-- 
1.7.1


