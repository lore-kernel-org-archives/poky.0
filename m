Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 92CA74C811C1
	for <poky@yoctoproject.org>; Sun,  9 Jan 2011 05:40:59 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jan 2011 03:40:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,295,1291622400"; d="scan'208";a="644945471"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga002.fm.intel.com with ESMTP; 09 Jan 2011 03:40:57 -0800
Message-Id: <ebc1dff5024077224410cbf9022a767a88ce32fa.1294571866.git.ke.yu@intel.com>
In-Reply-To: <cover.1294571866.git.ke.yu@intel.com>
References: <cover.1294571866.git.ke.yu@intel.com>
From: Yu Ke <ke.yu@intel.com>
Old-Date: Sat, 8 Jan 2011 16:40:18 +0800
Date: Sun, 09 Jan 2011 19:49:49 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 2/8] bb.fetch2: add urldata_init call for Fetch class
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
X-List-Received-Date: Sun, 09 Jan 2011 11:40:59 -0000

FetchData has some fetch method specific data, and only fetch method knows how
to initialize it. originally it is mostly initialized in Fetch.localpath().
But now there is requirement to call Fetch.latest_revision() before
Fetch.localpath(), thus require another earlier place for initialization. so
urldata_init is introduced for this purpose. it will be called in FetchData:__init__
and make all the Fetch functions useable after that.

Signed-off-by: Yu Ke <ke.yu@intel.com>
---
 bitbake/lib/bb/fetch2/__init__.py |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index 3a209d3..52c8d97 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -543,6 +543,8 @@ class FetchData(object):
         for m in methods:
             if m.supports(url, self, d):
                 self.method = m
+                if hasattr(m,"urldata_init"):
+                    m.urldata_init(self, d)
                 return
         raise NoMethodError("Missing implementation for url %s" % url)
 
-- 
1.7.0.4


