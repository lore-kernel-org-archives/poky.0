Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 220A3E00CBD; Sun, 28 Feb 2016 02:50:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32924E00DBB
	for <poky@yoctoproject.org>; Sun, 28 Feb 2016 02:50:06 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u1SAo5bK032245
	for <poky@yoctoproject.org>; Sun, 28 Feb 2016 10:50:05 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id alBbBpqgQNub for <poky@yoctoproject.org>;
	Sun, 28 Feb 2016 10:50:05 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u1SAo3Lw032242
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT)
	for <poky@yoctoproject.org>; Sun, 28 Feb 2016 10:50:04 GMT
Message-ID: <1456656603.11498.156.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Sun, 28 Feb 2016 10:50:03 +0000
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: [PATCH] meta-yocto: Rename to meta-poky to better match its purpose
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
X-List-Received-Date: Sun, 28 Feb 2016 10:50:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

"poky" is the reference distribution for the Yocto Project. This renames
the layer within the meta-yocto repository to meta-poky, better matching
what that layer contains.

A layer.conf file is left behind as this is the only way which allows 
existing builds to migrate safely to the new name. It will be removed
at some future point.

This change requires the corresponding OE-Core change to handle the 
migration and the changes to the infrastructure to support this.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .templateconf                                      |  2 +-
 README                                             |  2 +-
 meta-poky/classes/poky-sanity.bbclass              | 12 ++++++++++
 .../conf/bblayers.conf.sample                      |  8 +++----
 {meta-yocto => meta-poky}/conf/conf-notes.txt      |  0
 .../conf/distro/include/maintainers.inc            |  0
 .../distro/include/poky-floating-revisions.inc     |  0
 .../conf/distro/include/poky-world-exclude.inc     |  0
 .../conf/distro/poky-bleeding.conf                 |  0
 .../conf/distro/poky-lsb.conf                      |  0
 .../conf/distro/poky-tiny.conf                     |  0
 {meta-yocto => meta-poky}/conf/distro/poky.conf    |  0
 meta-poky/conf/layer.conf                          | 18 ++++++++++++++
 {meta-yocto => meta-poky}/conf/local.conf.sample   |  0
 .../conf/local.conf.sample.extended                |  0
 {meta-yocto => meta-poky}/conf/site.conf.sample    |  0
 {meta-yocto => meta-poky}/conf/toasterconf.json    | 10 ++++----
 .../busybox/busybox/poky-tiny/defconfig            |  0
 .../recipes-core/busybox/busybox_%.bbappend        |  0
 .../recipes-core/psplash/files/psplash-poky-img.h  |  0
 .../recipes-core/psplash/psplash_git.bbappend      |  0
 .../recipes-core/tiny-init/files/init              |  0
 .../recipes-core/tiny-init/files/rc.local.sample   |  0
 .../recipes-core/tiny-init/tiny-init.bb            |  0
 meta-yocto/classes/poky-sanity.bbclass             | 28 ----------------------
 meta-yocto/conf/layer.conf                         | 18 ++------------
 scripts/lib/bsp/help.py                            |  2 +-
 scripts/lib/bsp/substrate/target/arch/layer/README |  2 +-
 28 files changed, 45 insertions(+), 57 deletions(-)
 create mode 100644 meta-poky/classes/poky-sanity.bbclass
 rename {meta-yocto => meta-poky}/conf/bblayers.conf.sample (53%)
 rename {meta-yocto => meta-poky}/conf/conf-notes.txt (100%)
 rename {meta-yocto => meta-poky}/conf/distro/include/maintainers.inc (100%)
 rename {meta-yocto => meta-poky}/conf/distro/include/poky-floating-revisions.inc (100%)
 rename {meta-yocto => meta-poky}/conf/distro/include/poky-world-exclude.inc (100%)
 rename {meta-yocto => meta-poky}/conf/distro/poky-bleeding.conf (100%)
 rename {meta-yocto => meta-poky}/conf/distro/poky-lsb.conf (100%)
 rename {meta-yocto => meta-poky}/conf/distro/poky-tiny.conf (100%)
 rename {meta-yocto => meta-poky}/conf/distro/poky.conf (100%)
 create mode 100644 meta-poky/conf/layer.conf
 rename {meta-yocto => meta-poky}/conf/local.conf.sample (100%)
 rename {meta-yocto => meta-poky}/conf/local.conf.sample.extended (100%)
 rename {meta-yocto => meta-poky}/conf/site.conf.sample (100%)
 rename {meta-yocto => meta-poky}/conf/toasterconf.json (93%)
 rename {meta-yocto => meta-poky}/recipes-core/busybox/busybox/poky-tiny/defconfig (100%)
 rename {meta-yocto => meta-poky}/recipes-core/busybox/busybox_%.bbappend (100%)
 rename {meta-yocto => meta-poky}/recipes-core/psplash/files/psplash-poky-img.h (100%)
 rename {meta-yocto => meta-poky}/recipes-core/psplash/psplash_git.bbappend (100%)
 rename {meta-yocto => meta-poky}/recipes-core/tiny-init/files/init (100%)
 rename {meta-yocto => meta-poky}/recipes-core/tiny-init/files/rc.local.sample (100%)
 rename {meta-yocto => meta-poky}/recipes-core/tiny-init/tiny-init.bb (100%)
 delete mode 100644 meta-yocto/classes/poky-sanity.bbclass

diff --git a/.templateconf b/.templateconf
index 0650a46..0fe6f82 100644
--- a/.templateconf
+++ b/.templateconf
@@ -1,2 +1,2 @@
 # Template settings
-TEMPLATECONF=${TEMPLATECONF:-meta-yocto/conf}
+TEMPLATECONF=${TEMPLATECONF:-meta-poky/conf}
diff --git a/README b/README
index 4e295c4..9ee0078 100644
--- a/README
+++ b/README
@@ -42,7 +42,7 @@ documentation:
     Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/
     Mailing list: yocto@yoctoproject.org
 
-meta-yocto(-bsp):
+meta-poky, meta-yocto-bsp:
     Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto(-bsp)
     Mailing list: poky@yoctoproject.org
 
diff --git a/meta-poky/classes/poky-sanity.bbclass b/meta-poky/classes/poky-sanity.bbclass
new file mode 100644
index 0000000..287a9e3
--- /dev/null
+++ b/meta-poky/classes/poky-sanity.bbclass
@@ -0,0 +1,12 @@
+# Provide some extensions to sanity.bbclass to handle poky-specific conf file upgrades
+
+python poky_update_bblayersconf() {
+    current_version = int(d.getVar('POKY_BBLAYERS_CONF_VERSION', True) or -1)
+    latest_version = int(d.getVar('REQUIRED_POKY_BBLAYERS_CONF_VERSION', True) or -1)
+
+    # No version transitions here yet
+    raise NotImplementedError("You need to update bblayers.conf manually for this version transision")
+}
+
+# Prepend to ensure our function runs before the OE-Core one
+BBLAYERS_CONF_UPDATE_FUNCS =+ "conf/bblayers.conf:POKY_BBLAYERS_CONF_VERSION:REQUIRED_POKY_BBLAYERS_CONF_VERSION:poky_update_bblayersconf"
diff --git a/meta-yocto/conf/bblayers.conf.sample b/meta-poky/conf/bblayers.conf.sample
similarity index 53%
rename from meta-yocto/conf/bblayers.conf.sample
rename to meta-poky/conf/bblayers.conf.sample
index 0eda565..b948df2 100644
--- a/meta-yocto/conf/bblayers.conf.sample
+++ b/meta-poky/conf/bblayers.conf.sample
@@ -1,16 +1,16 @@
-# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
+# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.conf
 # changes incompatibly
-LCONF_VERSION = "6"
+POKY_BBLAYERS_CONF_VERSION = "1"
 
 BBPATH = "${TOPDIR}"
 BBFILES ?= ""
 
 BBLAYERS ?= " \
   ##OEROOT##/meta \
-  ##OEROOT##/meta-yocto \
+  ##OEROOT##/meta-poky \
   ##OEROOT##/meta-yocto-bsp \
   "
 BBLAYERS_NON_REMOVABLE ?= " \
   ##OEROOT##/meta \
-  ##OEROOT##/meta-yocto \
+  ##OEROOT##/meta-poky \
   "
diff --git a/meta-yocto/conf/conf-notes.txt b/meta-poky/conf/conf-notes.txt
similarity index 100%
rename from meta-yocto/conf/conf-notes.txt
rename to meta-poky/conf/conf-notes.txt
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
similarity index 100%
rename from meta-yocto/conf/distro/include/maintainers.inc
rename to meta-poky/conf/distro/include/maintainers.inc
diff --git a/meta-yocto/conf/distro/include/poky-floating-revisions.inc b/meta-poky/conf/distro/include/poky-floating-revisions.inc
similarity index 100%
rename from meta-yocto/conf/distro/include/poky-floating-revisions.inc
rename to meta-poky/conf/distro/include/poky-floating-revisions.inc
diff --git a/meta-yocto/conf/distro/include/poky-world-exclude.inc b/meta-poky/conf/distro/include/poky-world-exclude.inc
similarity index 100%
rename from meta-yocto/conf/distro/include/poky-world-exclude.inc
rename to meta-poky/conf/distro/include/poky-world-exclude.inc
diff --git a/meta-yocto/conf/distro/poky-bleeding.conf b/meta-poky/conf/distro/poky-bleeding.conf
similarity index 100%
rename from meta-yocto/conf/distro/poky-bleeding.conf
rename to meta-poky/conf/distro/poky-bleeding.conf
diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-poky/conf/distro/poky-lsb.conf
similarity index 100%
rename from meta-yocto/conf/distro/poky-lsb.conf
rename to meta-poky/conf/distro/poky-lsb.conf
diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
similarity index 100%
rename from meta-yocto/conf/distro/poky-tiny.conf
rename to meta-poky/conf/distro/poky-tiny.conf
diff --git a/meta-yocto/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
similarity index 100%
rename from meta-yocto/conf/distro/poky.conf
rename to meta-poky/conf/distro/poky.conf
diff --git a/meta-poky/conf/layer.conf b/meta-poky/conf/layer.conf
new file mode 100644
index 0000000..b5ffd9e
--- /dev/null
+++ b/meta-poky/conf/layer.conf
@@ -0,0 +1,18 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH =. "${LAYERDIR}:"
+
+# We have recipes-* directories, add to BBFILES
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
+            ${LAYERDIR}/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "yocto"
+BBFILE_PATTERN_yocto = "^${LAYERDIR}/"
+BBFILE_PRIORITY_yocto = "5"
+
+# This should only be incremented on significant changes that will
+# cause compatibility issues with other layers
+LAYERVERSION_yocto = "3"
+
+LAYERDEPENDS_yocto = "core"
+
+REQUIRED_POKY_BBLAYERS_CONF_VERSION = "1"
diff --git a/meta-yocto/conf/local.conf.sample b/meta-poky/conf/local.conf.sample
similarity index 100%
rename from meta-yocto/conf/local.conf.sample
rename to meta-poky/conf/local.conf.sample
diff --git a/meta-yocto/conf/local.conf.sample.extended b/meta-poky/conf/local.conf.sample.extended
similarity index 100%
rename from meta-yocto/conf/local.conf.sample.extended
rename to meta-poky/conf/local.conf.sample.extended
diff --git a/meta-yocto/conf/site.conf.sample b/meta-poky/conf/site.conf.sample
similarity index 100%
rename from meta-yocto/conf/site.conf.sample
rename to meta-poky/conf/site.conf.sample
diff --git a/meta-yocto/conf/toasterconf.json b/meta-poky/conf/toasterconf.json
similarity index 93%
rename from meta-yocto/conf/toasterconf.json
rename to meta-poky/conf/toasterconf.json
index 3f79f42..dc592ab 100644
--- a/meta-yocto/conf/toasterconf.json
+++ b/meta-poky/conf/toasterconf.json
@@ -20,10 +20,10 @@
                     "dirpath": "meta"
                 },
                 {
-                    "name": "meta-yocto",
-                    "local_path": "meta-yocto",
+                    "name": "meta-poky",
+                    "local_path": "meta-poky",
                     "vcs_url": "remote:origin",
-                    "dirpath": "meta-yocto"
+                    "dirpath": "meta-poky"
                 },
                 {
                     "name": "meta-yocto-bsp",
@@ -83,7 +83,7 @@
             "description": "Yocto Project master",
             "bitbake": "master",
             "branch": "master",
-            "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
+            "defaultlayers": [ "openembedded-core", "meta-poky", "meta-yocto-bsp"],
             "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
             "helptext": "Toaster will run your builds using the tip of the <a href=\"http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/\">Yocto Project master branch</a>, where active development takes place. This is not a stable branch, so your builds might not work as expected."
         },
@@ -110,7 +110,7 @@
             "description": "Local Yocto Project",
             "bitbake": "HEAD",
             "branch": "HEAD",
-            "defaultlayers": [ "openembedded-core", "meta-yocto", "meta-yocto-bsp"],
+            "defaultlayers": [ "openembedded-core", "meta-poky", "meta-yocto-bsp"],
             "layersourcepriority": { "Imported layers": 99, "Local Yocto Project" : 10, "OpenEmbedded" :  0 },
             "helptext": "Toaster will run your builds with the version of the Yocto Project you have cloned or downloaded to your computer."
         }
diff --git a/meta-yocto/recipes-core/busybox/busybox/poky-tiny/defconfig b/meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
similarity index 100%
rename from meta-yocto/recipes-core/busybox/busybox/poky-tiny/defconfig
rename to meta-poky/recipes-core/busybox/busybox/poky-tiny/defconfig
diff --git a/meta-yocto/recipes-core/busybox/busybox_%.bbappend b/meta-poky/recipes-core/busybox/busybox_%.bbappend
similarity index 100%
rename from meta-yocto/recipes-core/busybox/busybox_%.bbappend
rename to meta-poky/recipes-core/busybox/busybox_%.bbappend
diff --git a/meta-yocto/recipes-core/psplash/files/psplash-poky-img.h b/meta-poky/recipes-core/psplash/files/psplash-poky-img.h
similarity index 100%
rename from meta-yocto/recipes-core/psplash/files/psplash-poky-img.h
rename to meta-poky/recipes-core/psplash/files/psplash-poky-img.h
diff --git a/meta-yocto/recipes-core/psplash/psplash_git.bbappend b/meta-poky/recipes-core/psplash/psplash_git.bbappend
similarity index 100%
rename from meta-yocto/recipes-core/psplash/psplash_git.bbappend
rename to meta-poky/recipes-core/psplash/psplash_git.bbappend
diff --git a/meta-yocto/recipes-core/tiny-init/files/init b/meta-poky/recipes-core/tiny-init/files/init
similarity index 100%
rename from meta-yocto/recipes-core/tiny-init/files/init
rename to meta-poky/recipes-core/tiny-init/files/init
diff --git a/meta-yocto/recipes-core/tiny-init/files/rc.local.sample b/meta-poky/recipes-core/tiny-init/files/rc.local.sample
similarity index 100%
rename from meta-yocto/recipes-core/tiny-init/files/rc.local.sample
rename to meta-poky/recipes-core/tiny-init/files/rc.local.sample
diff --git a/meta-yocto/recipes-core/tiny-init/tiny-init.bb b/meta-poky/recipes-core/tiny-init/tiny-init.bb
similarity index 100%
rename from meta-yocto/recipes-core/tiny-init/tiny-init.bb
rename to meta-poky/recipes-core/tiny-init/tiny-init.bb
diff --git a/meta-yocto/classes/poky-sanity.bbclass b/meta-yocto/classes/poky-sanity.bbclass
deleted file mode 100644
index 77c266e..0000000
--- a/meta-yocto/classes/poky-sanity.bbclass
+++ /dev/null
@@ -1,28 +0,0 @@
-# Provide some extensions to sanity.bbclass to handle poky-specific conf file upgrades
-
-python poky_update_bblayersconf() {
-    current_version = int(d.getVar('LCONF_VERSION', True) or -1)
-    latest_version = int(d.getVar('LAYER_CONF_VERSION', True) or -1)
-
-    bblayers_fn = bblayers_conf_file(d)
-    lines = sanity_conf_read(bblayers_fn)
-
-    if current_version == 5 and latest_version > 5:
-        # Handle split out of meta-yocto-bsp from meta-yocto
-        if '/meta-yocto-bsp' not in d.getVar('BBLAYERS', True):
-            index, meta_yocto_line = sanity_conf_find_line('meta-yocto\s*\\\\\\n', lines)
-            if meta_yocto_line:
-                lines.insert(index + 1, meta_yocto_line.replace('meta-yocto',
-                                                                'meta-yocto-bsp'))
-            else:
-                sys.exit()
-
-        current_version += 1
-        sanity_conf_update(bblayers_fn, lines, 'LCONF_VERSION', current_version)
-        return
-
-    sys.exit()
-}
-
-# Prepend to ensure our function runs before the OE-Core one
-BBLAYERS_CONF_UPDATE_FUNCS =+ "poky_update_bblayersconf"
diff --git a/meta-yocto/conf/layer.conf b/meta-yocto/conf/layer.conf
index 9942b51..9ed30ed 100644
--- a/meta-yocto/conf/layer.conf
+++ b/meta-yocto/conf/layer.conf
@@ -1,16 +1,2 @@
-# We have a conf and classes directory, add to BBPATH
-BBPATH =. "${LAYERDIR}:"
-
-# We have recipes-* directories, add to BBFILES
-BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
-            ${LAYERDIR}/recipes-*/*/*.bbappend"
-
-BBFILE_COLLECTIONS += "yocto"
-BBFILE_PATTERN_yocto = "^${LAYERDIR}/"
-BBFILE_PRIORITY_yocto = "5"
-
-# This should only be incremented on significant changes that will
-# cause compatibility issues with other layers
-LAYERVERSION_yocto = "2"
-
-LAYERDEPENDS_yocto = "core"
+# Dummy file to allow for meta-yocto -> meta-poky transition
+BBPATH =. "${LAYERDIR}/../meta-poky:"
diff --git a/scripts/lib/bsp/help.py b/scripts/lib/bsp/help.py
index 4cce100..bbb7b31 100644
--- a/scripts/lib/bsp/help.py
+++ b/scripts/lib/bsp/help.py
@@ -173,7 +173,7 @@ DESCRIPTION
 
     BBLAYERS ?= " \\
       /path/to/poky/meta \\
-      /path/to/poky/meta-yocto \\
+      /path/to/poky/meta-poky \\
       /path/to/poky/meta-mybsp \\
       "
 """
diff --git a/scripts/lib/bsp/substrate/target/arch/layer/README b/scripts/lib/bsp/substrate/target/arch/layer/README
index 943dfc4..ca6527c 100644
--- a/scripts/lib/bsp/substrate/target/arch/layer/README
+++ b/scripts/lib/bsp/substrate/target/arch/layer/README
@@ -52,7 +52,7 @@ other layers needed. e.g.:
 
   BBLAYERS ?= " \
     /path/to/yocto/meta \
-    /path/to/yocto/meta-yocto \
+    /path/to/yocto/meta-poky \
     /path/to/yocto/meta-yocto-bsp \
     /path/to/yocto/meta-{{=layer_name}} \
     "


