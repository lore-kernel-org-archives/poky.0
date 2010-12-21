Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id AD4C94C80050
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 11:25:43 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Dec 2010 09:25:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,208,1291622400"; d="scan'208";a="870511812"
Received: from qhe2-db.sh.intel.com ([10.239.13.38])
	by fmsmga001.fm.intel.com with ESMTP; 21 Dec 2010 09:25:43 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PV5sq-0007yn-Rb; Wed, 22 Dec 2010 01:20:20 +0800
Message-Id: <58c4affd052b2859fc9f86375f7ec0f354b14bc5.1292950145.git.qing.he@intel.com>
In-Reply-To: <cover.1292950144.git.qing.he@intel.com>
References: <cover.1292950144.git.qing.he@intel.com>
From: Qing He <qing.he@intel.com>
Date: Wed, 22 Dec 2010 00:30:27 +0800
To: poky@yoctoproject.org
Subject: [PATCH 3/4] data_smart: remote data
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
X-List-Received-Date: Tue, 21 Dec 2010 17:25:43 -0000

ad hoc version of remote data for data_smart
the data.dict["_remote_data"]["content"] is supposed to be the socket
used for data connection

Signed-off-by: Qing He <qing.he@intel.com>
---
 bitbake/lib/bb/data_smart.py |   25 ++++++++++++++++++++++++-
 1 files changed, 24 insertions(+), 1 deletions(-)

diff --git a/bitbake/lib/bb/data_smart.py b/bitbake/lib/bb/data_smart.py
index c8cd8f8..9b630eb 100644
--- a/bitbake/lib/bb/data_smart.py
+++ b/bitbake/lib/bb/data_smart.py
@@ -32,6 +32,13 @@ import copy, re, sys
 import bb
 from bb   import utils
 from bb.COW  import COWDictBase
+import socket
+
+try:
+    import cPickle as pickle
+except ImportError:
+    import pickle
+    bb.msg.note(1, bb.msg.domain.Cache, "Importing cPickle failed. Falling back to a very slow implementation.")
 
 
 __setvar_keyword__ = ["_append", "_prepend"]
@@ -189,6 +196,12 @@ class DataSmart:
             if var in dest:
                 return dest[var]
 
+            if "_remote_data" in dest:
+                s = dest["_remote_data"]["content"]
+                s.send(var)
+                l = int(s.recv(4), 16)
+                return pickle.loads(s.recv(l, socket.MSG_WAITALL))
+
             if "_data" not in dest:
                 break
             dest = dest["_data"]
@@ -351,8 +364,18 @@ class DataSmart:
                 _keys(d["_data"], mykey)
 
             for key in d.keys():
-                if key != "_data":
+                if key != "_data" and key != "_remote_data":
                     mykey[key] = None
+
+            if "_remote_data" in d:
+                s = d["_remote_data"]["content"]
+                s.send("_cmd_keys")
+                l = int(s.recv(4), 16)
+                rk = pickle.loads(s.recv(l, socket.MSG_WAITALL))
+                for key in rk:
+                    if key != "_data":
+                        mykey[key] = None
+
         keytab = {}
         _keys(self.dict, keytab)
         return keytab.keys()
-- 
1.7.0


