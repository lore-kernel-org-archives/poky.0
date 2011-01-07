Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE96F4C811BE
	for <poky@yoctoproject.org>; Fri,  7 Jan 2011 00:28:29 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Jan 2011 22:27:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,287,1291622400"; d="scan'208";a="644380545"
Received: from llu-piketon.sh.intel.com ([10.239.36.141])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jan 2011 22:27:59 -0800
Received: from lulianhao by llu-piketon.sh.intel.com with local (Exim 4.71)
	(envelope-from <lianhao.lu@intel.com>)
	id 1Pb5pg-0003W1-3n; Fri, 07 Jan 2011 14:29:52 +0800
Message-Id: <37a6c2de5b89889fc7ae364854675c647437e45a.1294381578.git.lianhao.lu@intel.com>
In-Reply-To: <cover.1294381578.git.lianhao.lu@intel.com>
References: <cover.1294381578.git.lianhao.lu@intel.com>
From: Lianhao Lu <lianhao.lu@intel.com>
Old-Date: Fri, 7 Jan 2011 14:17:10 +0800
Date: Fri, 07 Jan 2011 14:29:52 +0800
To: poky@yoctoproject.org
Subject: [PATCH 1/1] bitbake/data.py: corrected the output for shell syntax.
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
X-List-Received-Date: Fri, 07 Jan 2011 06:28:30 -0000

[BUGID# 645], modify the emit_var()
1. Added "#" to the beginning of each line if the comment contains
multiple lines.

2. Added "\" to the end of each line if the shell variable value
contains multiple lines.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 bitbake/lib/bb/data.py |    4 +++-
 1 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/data.py b/bitbake/lib/bb/data.py
index 6ec522a..53ce7d6 100644
--- a/bitbake/lib/bb/data.py
+++ b/bitbake/lib/bb/data.py
@@ -192,7 +192,8 @@ def emit_var(var, o=sys.__stdout__, d = init(), all=False):
         return 0
 
     if all:
-        o.write('# %s=%s\n' % (var, oval))
+        commentVal = re.sub('\n', '\n#', str(oval))
+        o.write('# %s=%s\n' % (var, commentVal))
 
     if (var.find("-") != -1 or var.find(".") != -1 or var.find('{') != -1 or var.find('}') != -1 or var.find('+') != -1) and not all:
         return 0
@@ -219,6 +220,7 @@ def emit_var(var, o=sys.__stdout__, d = init(), all=False):
     # if we're going to output this within doublequotes,
     # to a shell, we need to escape the quotes in the var
     alter = re.sub('"', '\\"', val.strip())
+    alter = re.sub('\n', ' \\\n', alter)
     o.write('%s="%s"\n' % (varExpanded, alter))
     return 0
 
-- 
1.7.0.4


