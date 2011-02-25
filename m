Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 039F84C80772
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 04:52:25 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Feb 2011 02:52:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,224,1297065600"; d="scan'208";a="661402580"
Received: from unknown (HELO localhost) ([10.255.16.236])
	by fmsmga002.fm.intel.com with ESMTP; 25 Feb 2011 02:52:24 -0800
Message-Id: <e8e040accd55b10d517ac569ac905a25ddda9cf3.1298630947.git.josh@linux.intel.com>
In-Reply-To: <cover.1298630947.git.josh@linux.intel.com>
References: <cover.1298630947.git.josh@linux.intel.com>
Old-Date: Fri, 25 Feb 2011 10:22:44 +0000
Date: Fri, 25 Feb 2011 10:52:19 +0000
To: poky@yoctoproject.org
CC: 
From: Joshua Lock <josh@linux.intel.com>
Subject: [PATCH 1/2] bitbake/codeparser: fix raising of ShellSyntaxError
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
X-List-Received-Date: Fri, 25 Feb 2011 10:52:26 -0000

From: Joshua Lock <josh@linux.intel.com>

To raise the ShellSyntaxError we need to import it's module and reference it
by namespace.

Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 bitbake/lib/bb/codeparser.py |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/bitbake/lib/bb/codeparser.py b/bitbake/lib/bb/codeparser.py
index bfffcac..c887a3c 100644
--- a/bitbake/lib/bb/codeparser.py
+++ b/bitbake/lib/bb/codeparser.py
@@ -4,7 +4,7 @@ import logging
 import os.path
 import bb.utils, bb.data
 from itertools import chain
-from pysh import pyshyacc, pyshlex
+from pysh import pyshyacc, pyshlex, sherrors
 
 
 logger = logging.getLogger('BitBake.CodeParser')
@@ -227,7 +227,7 @@ class ShellParser():
         try:
             tokens, _ = pyshyacc.parse(value, eof=True, debug=False)
         except pyshlex.NeedMore:
-            raise ShellSyntaxError("Unexpected EOF")
+            raise sherrors.ShellSyntaxError("Unexpected EOF")
 
         for token in tokens:
             self.process_tokens(token)
-- 
1.7.4


