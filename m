Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 793384C810D2
	for <poky@yoctoproject.org>; Tue, 14 Dec 2010 12:35:40 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Dec 2010 10:35:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,343,1288594800"; d="scan'208";a="636281398"
Received: from unknown (HELO helios) ([10.255.16.81])
	by fmsmga002.fm.intel.com with SMTP; 14 Dec 2010 10:35:34 -0800
Received: by helios (sSMTP sendmail emulation); Tue, 14 Dec 2010 18:35:32 +0000
Message-Id: <5a110f1afd31a6581ffb577310ec3d7479ecdcb8.1292351445.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1292351445.git.paul.eggleton@linux.intel.com>
References: <cover.1292351445.git.paul.eggleton@linux.intel.com>
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Fri, 10 Dec 2010 14:29:39 +0000
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 1/3] bitbake: allow excluding dependencies of variables
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
X-List-Received-Date: Tue, 14 Dec 2010 18:35:40 -0000

Adds a vardepsexclude flag that can be used to exclude a dependency of
a variable (the opposite of vardeps). This will allow the exclusion of
variables from the hash generation much more selectively than blanket
whitelisting using BB_HASHBASE_WHITELIST.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 bitbake/lib/bb/data.py |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/data.py b/bitbake/lib/bb/data.py
index d4d43fd..0c95ebb 100644
--- a/bitbake/lib/bb/data.py
+++ b/bitbake/lib/bb/data.py
@@ -297,6 +297,7 @@ def build_dependencies(key, keys, shelldeps, d):
             deps |= parser.references
             deps = deps | (keys & parser.execs)
         deps |= set((d.getVarFlag(key, "vardeps") or "").split())
+        deps -= set((d.getVarFlag(key, "vardepsexclude") or "").split())
     except:
         bb.note("Error expanding variable %s" % key) 
         raise
-- 
1.7.1


