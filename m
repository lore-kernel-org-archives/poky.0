Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4ABD3E014DB
	for <poky@yoctoproject.org>; Fri, 12 Apr 2013 13:22:55 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 12 Apr 2013 13:22:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,465,1363158000"; d="scan'208";a="226602128"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.168])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Apr 2013 13:22:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org
Date: Fri, 12 Apr 2013 21:22:49 +0100
Message-Id: <8112080eb202a73ae4540f614d9f02ab91c18a00.1365798009.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1365798009.git.paul.eggleton@linux.intel.com>
References: <cover.1365798009.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1365798009.git.paul.eggleton@linux.intel.com>
References: <cover.1365798009.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 1/1] classes/poky-sanity: fix handling of bblayers.conf updating
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
X-List-Received-Date: Fri, 12 Apr 2013 20:22:55 -0000

* Update for new structure in sanity.bbclass - use a separate function
  to update bblayers.conf and add it to the list to be executed
* Additionally, don't add meta-yocto-bsp if it's already in BBLAYERS
  (this can occur when switching between DISTRO = "" or other distros
  which use a LAYER_CONF_VERSION = "5" and DISTRO = "poky" which has
  LAYER_CONF_VERSION = "6")

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 meta-yocto/classes/poky-sanity.bbclass |   26 +++++++++++++++++---------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/meta-yocto/classes/poky-sanity.bbclass b/meta-yocto/classes/poky-sanity.bbclass
index 1c7514f..fff08b3 100644
--- a/meta-yocto/classes/poky-sanity.bbclass
+++ b/meta-yocto/classes/poky-sanity.bbclass
@@ -1,16 +1,24 @@
-python check_bblayers_conf_append() {
-    if current_lconf != lconf_version:
-        if current_lconf == 5:
-            index, meta_yocto_line = find_line('meta-yocto\s*\\\\\\n', lines)
+python poky_update_bblayersconf() {
+    current_version = int(d.getVar('LCONF_VERSION', True) or -1)
+    latest_version = int(d.getVar('LAYER_CONF_VERSION', True) or -1)
+
+    bblayers_fn = bblayers_conf_file(d)
+    lines = sanity_conf_read(bblayers_fn)
+
+    if current_version == 5 and latest_version == 6:
+        if '/meta-yocto-bsp' not in d.getVar('BBLAYERS', True):
+            index, meta_yocto_line = sanity_conf_find_line('meta-yocto\s*\\\\\\n', lines)
             if meta_yocto_line:
                 lines.insert(index + 1, meta_yocto_line.replace('meta-yocto',
                                                                 'meta-yocto-bsp'))
             else:
                 sys.exit()
 
-            index, line = find_line('LCONF_VERSION', lines)
-            current_lconf += 1
-            lines[index] = 'LCONF_VERSION = "%d"\n' % current_lconf
-            with open(bblayers_fn, "w") as f:
-                f.write(''.join(lines))
+        current_version += 1
+        sanity_conf_update(bblayers_fn, lines, 'LCONF_VERSION', current_version)
+        return
+
+    sys.exit()
 }
+
+BBLAYERS_CONF_UPDATE_FUNCS += "poky_update_bblayersconf"
-- 
1.7.10.4


