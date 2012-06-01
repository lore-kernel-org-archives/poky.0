Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E701EE0044A
	for <poky@yoctoproject.org>; Fri,  1 Jun 2012 01:51:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q518pC9h009101
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 1 Jun 2012 01:51:12 -0700 (PDT)
Received: from usp-ub10.corp.ad.wrs.com (128.224.163.69) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Fri, 1 Jun 2012 01:51:12 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Fri, 1 Jun 2012 16:51:43 +0800
Message-ID: <abb5651cbd1e4851b0b766d44ae10984429ca3d9.1338538332.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1338538332.git.liezhi.yang@windriver.com>
References: <cover.1338538332.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] kernel.py: replace os.popen with subprocess.Popen
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
X-List-Received-Date: Fri, 01 Jun 2012 08:51:13 -0000
Content-Type: text/plain

Replace os.popen with subprocess.Popen since the older function would
fail (more or less) silently if the executed program cannot be found

More info:
http://docs.python.org/library/subprocess.html#subprocess-replacements

[YOCTO #2454]

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 scripts/lib/bsp/kernel.py |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index 8b3aa72..7c6da4e 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -31,6 +31,7 @@ import os
 import shutil
 from tags import *
 import glob
+import subprocess
 
 
 def find_bblayers(scripts_path):
@@ -678,7 +679,7 @@ def base_branches(context):
     print "Getting branches from remote repo %s..." % giturl
 
     gitcmd = "git ls-remote %s *heads* 2>&1" % (giturl)
-    tmp = os.popen(gitcmd).read()
+    tmp = subprocess.Popen(gitcmd, shell=True, stdout=subprocess.PIPE).stdout.read()
 
     branches = []
 
@@ -708,7 +709,7 @@ def all_branches(context):
     print "Getting branches from remote repo %s..." % giturl
 
     gitcmd = "git ls-remote %s *heads* 2>&1" % (giturl)
-    tmp = os.popen(gitcmd).read()
+    tmp = subprocess.Popen(gitcmd, shell=True, stdout=subprocess.PIPE).stdout.read()
 
     branches = []
 
-- 
1.7.1


