Return-Path: <constantinx.musca@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32716E00717
	for <poky@yoctoproject.org>; Thu, 27 Sep 2012 06:38:51 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 Sep 2012 06:38:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,495,1344236400"; d="scan'208";a="227279199"
Received: from costin-desktop (HELO localhost.localdomain) ([10.237.105.66])
	by fmsmga001.fm.intel.com with ESMTP; 27 Sep 2012 06:38:43 -0700
From: Constantin Musca <constantinx.musca@intel.com>
To: poky@yoctoproject.org
Date: Thu, 27 Sep 2012 15:44:11 +0300
Message-Id: <1348749851-12086-1-git-send-email-constantinx.musca@intel.com>
X-Mailer: git-send-email 1.7.9.5
Cc: Constantin Musca <constantinx.musca@intel.com>
Subject: [PATCH v2] poky-sanity.bbclass: bblayers.conf should be updated automatically
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
X-List-Received-Date: Thu, 27 Sep 2012 13:38:51 -0000

- we need a bbclass (poky-sanity) so that we can append to the
check_bblayers_conf bitbake function from sanity.bbclass the
bblayers.conf specific merging functionality
- add check_bblayers_conf_append bitbake function which does the
meta-yocto specific updates (the bblayers.conf v5 -> v6 update)
- every layer should make its specific bblayers.conf updates
- we ask the user to re-run bitbake because we can't trigger
reparsing without being invasive

[YOCTO #3082]

Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
---
 meta-yocto/classes/poky-sanity.bbclass |   16 ++++++++++++++++
 meta-yocto/conf/distro/poky.conf       |    3 +++
 2 files changed, 19 insertions(+)
 create mode 100644 meta-yocto/classes/poky-sanity.bbclass

diff --git a/meta-yocto/classes/poky-sanity.bbclass b/meta-yocto/classes/poky-sanity.bbclass
new file mode 100644
index 0000000..1c7514f
--- /dev/null
+++ b/meta-yocto/classes/poky-sanity.bbclass
@@ -0,0 +1,16 @@
+python check_bblayers_conf_append() {
+    if current_lconf != lconf_version:
+        if current_lconf == 5:
+            index, meta_yocto_line = find_line('meta-yocto\s*\\\\\\n', lines)
+            if meta_yocto_line:
+                lines.insert(index + 1, meta_yocto_line.replace('meta-yocto',
+                                                                'meta-yocto-bsp'))
+            else:
+                sys.exit()
+
+            index, line = find_line('LCONF_VERSION', lines)
+            current_lconf += 1
+            lines[index] = 'LCONF_VERSION = "%d"\n' % current_lconf
+            with open(bblayers_fn, "w") as f:
+                f.write(''.join(lines))
+}
diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index de82543..f7f03db 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -93,6 +93,9 @@ BB_SIGNATURE_HANDLER ?= 'OEBasicHash'
 #
 OELAYOUT_ABI = "8"
 
+# add poky sanity bbclass
+INHERIT += "poky-sanity"
+
 #WARN_QA = "unsafe-references-in-binaries unsafe-references-in-scripts"
 WARN_QA = ""
 ERROR_QA = "dev-so debug-deps dev-deps debug-files arch la2 pkgconfig la perms useless-rpaths rpaths staticdev ldflags"
-- 
1.7.9.5


