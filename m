Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 216D1E01275
	for <poky@yoctoproject.org>; Thu, 18 Oct 2012 07:25:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Oct 2012 07:24:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,607,1344236400"; d="scan'208";a="235548278"
Received: from unknown (HELO localhost) ([10.255.14.139])
	by fmsmga001.fm.intel.com with ESMTP; 18 Oct 2012 07:24:40 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Poky <poky@yoctoproject.org>
Date: Thu, 18 Oct 2012 10:23:23 -0400
Message-Id: <d4af8f9ad5defd3922ac5d6744092e1d650b07fe.1350570203.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.11.7
Cc: Darren Hart <dvhart@linux.intel.com>, evadeflow@gmail.com
Subject: [PATCH] yocto-bsp: Fix git url parsing, allowing for local mirrors
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
X-List-Received-Date: Thu, 18 Oct 2012 14:25:01 -0000

The git URLs used in bitbake recipes are not compatible directly with git.  In
bitbake-speak, all git URLs start with git:// and the protocol is optionally
specified in the SRC_URI. Local git mirrors are specified like so:

    git:///path/to/local/mirror.git;protocol=file

The URL that git requires would be:

    file:///path/to/local/mirror.git

Update the yocto-bsp kernel.py to make the necessary adjustment when parsing
the SRC_URI to extract the git URL.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
CC: Tom Zanussi <tom.zanussi@intel.com>
CC: evadeflow@gmail.com
---
 scripts/lib/bsp/kernel.py | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
index d4bdc4c..128fad0 100644
--- a/scripts/lib/bsp/kernel.py
+++ b/scripts/lib/bsp/kernel.py
@@ -631,6 +631,7 @@ def extract_giturl(file):
     Extract the git url of the kernel repo from the kernel recipe's
     SRC_URI.
     """
+    url = None
     f = open(file, "r")
     lines = f.readlines()
     for line in lines:
@@ -641,10 +642,15 @@ def extract_giturl(file):
                 line = line[1:].strip()
                 if line.startswith("\""):
                     line = line[1:].strip()
-                    fields = line.split(";")
-                    if fields:
-                        return fields[0]
-    return None
+                    prot = "git"
+                    for s in line.split(";"):
+                        if s.startswith("git://"):
+                            url = s
+                        if s.startswith("protocol="):
+                            prot = s.split("=")[1]
+                    if url:
+                        url = prot + url[3:]
+    return url
 
 
 def find_giturl(context):
-- 
1.7.11.7


