Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12A20E006D7
	for <poky@yoctoproject.org>; Fri, 18 Jan 2013 10:27:23 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Jan 2013 10:27:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,494,1355126400"; d="scan'208";a="245712702"
Received: from unknown (HELO localhost) ([10.255.14.191])
	by azsmga001.ch.intel.com with ESMTP; 18 Jan 2013 10:27:21 -0800
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org
Date: Fri, 18 Jan 2013 12:27:10 -0600
Message-Id: <0a6441727f0c44157126af95890d6564e89fdf32.1357935675.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <1d1bf17bacd100d0ad849607863157e017617754.1357935675.git.tom.zanussi@intel.com>
References: <1d1bf17bacd100d0ad849607863157e017617754.1357935675.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1357935675.git.tom.zanussi@intel.com>
References: <cover.1357935675.git.tom.zanussi@intel.com>
Subject: [PATCH 4/7] yocto-layer: add 'layer' template data
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
X-List-Received-Date: Fri, 18 Jan 2013 18:27:23 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Add a 'layer' target containing all the data that will be used to
generate a generic yocto layer.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 .../bsp/substrate/target/arch/layer/COPYING.MIT    | 17 ++++++
 scripts/lib/bsp/substrate/target/arch/layer/README | 64 ++++++++++++++++++++++
 .../substrate/target/arch/layer/conf/layer.conf    | 10 ++++
 .../target/arch/layer/layer-questions.noinstall    | 14 +++++
 .../example.patch"                                 | 12 ++++
 ..._name}}_{{=example_bbappend_version}}.bbappend" |  8 +++
 .../{{=example_recipe_name}}-0.1/example.patch"    | 12 ++++
 .../{{=example_recipe_name}}-0.1/helloworld.c"     |  8 +++
 .../example/{{=example_recipe_name}}_0.1.bb"       | 23 ++++++++
 9 files changed, 168 insertions(+)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/COPYING.MIT
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/README
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}-{{=example_bbappend_version}}/example.patch"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/example.patch"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c"
 create mode 100644 "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb"

diff --git a/scripts/lib/bsp/substrate/target/arch/layer/COPYING.MIT b/scripts/lib/bsp/substrate/target/arch/layer/COPYING.MIT
new file mode 100644
index 0000000..89de354
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/layer/COPYING.MIT
@@ -0,0 +1,17 @@
+Permission is hereby granted, free of charge, to any person obtaining a copy
+of this software and associated documentation files (the "Software"), to deal
+in the Software without restriction, including without limitation the rights
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+copies of the Software, and to permit persons to whom the Software is
+furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+THE SOFTWARE.
diff --git a/scripts/lib/bsp/substrate/target/arch/layer/README b/scripts/lib/bsp/substrate/target/arch/layer/README
new file mode 100644
index 0000000..943dfc4
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/layer/README
@@ -0,0 +1,64 @@
+This README file contains information on the contents of the
+{{=layer_name}} layer.
+
+Please see the corresponding sections below for details.
+
+
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/bitbake
+  branch: master
+
+  URI: git://git.openembedded.org/openembedded-core
+  layers: meta
+  branch: master
+
+  URI: git://git.yoctoproject.org/xxxx
+  layers: xxxx
+  branch: master
+
+
+Patches
+=======
+
+Please submit any patches against the {{=layer_name}} layer to the
+xxxx mailing list (xxxx@zzzz.org) and cc: the maintainer:
+
+Maintainer: XXX YYYYYY <xxx.yyyyyy@zzzzz.com>
+
+
+Table of Contents
+=================
+
+  I. Adding the {{=layer_name}} layer to your build
+ II. Misc
+
+
+I. Adding the {{=layer_name}} layer to your build
+=================================================
+
+--- replace with specific instructions for the {{=layer_name}} layer ---
+
+In order to use this layer, you need to make the build system aware of
+it.
+
+Assuming the {{=layer_name}} layer exists at the top-level of your
+yocto build tree, you can add it to the build system by adding the
+location of the {{=layer_name}} layer to bblayers.conf, along with any
+other layers needed. e.g.:
+
+  BBLAYERS ?= " \
+    /path/to/yocto/meta \
+    /path/to/yocto/meta-yocto \
+    /path/to/yocto/meta-yocto-bsp \
+    /path/to/yocto/meta-{{=layer_name}} \
+    "
+
+
+II. Misc
+========
+
+--- replace with specific information about the {{=layer_name}} layer ---
diff --git a/scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf b/scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf
new file mode 100644
index 0000000..84a9abb
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/layer/conf/layer.conf
@@ -0,0 +1,10 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH := "${BBPATH}:${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+	${LAYERDIR}/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "{{=layer_name}}"
+BBFILE_PATTERN_{{=layer_name}} := "^${LAYERDIR}/"
+BBFILE_PRIORITY_{{=layer_name}} = "{{=layer_priority}}"
diff --git a/scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall b/scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
new file mode 100644
index 0000000..e2a89c3
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/layer/layer-questions.noinstall
@@ -0,0 +1,14 @@
+{{ input type:"edit" name:"layer_priority" prio:"20" msg:"Please enter the layer priority you'd like to use for the layer:" default:"6"}}
+
+{{ input type:"boolean" name:"create_example_recipe" prio:"20" msg:"Would you like to have an example recipe created? (y/n)" default:"n"}}
+
+{{ if create_example_recipe == "y": }}
+{{ input type:"edit" name:"example_recipe_name" prio:"20" msg:"Please enter the name you'd like to use for your example recipe:" default:"example"}}
+
+{{ input type:"boolean" name:"create_example_bbappend" prio:"20" msg:"Would you like to have an example bbappend file created? (y/n)" default:"n"}}
+
+{{ if create_example_bbappend == "y": }}
+{{ input type:"edit" name:"example_bbappend_name" prio:"20" msg:"Please enter the name you'd like to use for your bbappend file:" default:"example"}}
+
+{{ if create_example_bbappend == "y": }}
+{{ input type:"edit" name:"example_bbappend_version" prio:"20" msg:"Please enter the version number you'd like to use for your bbappend file (this should match the recipe you're appending to):" default:"0.1"}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}-{{=example_bbappend_version}}/example.patch" "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}-{{=example_bbappend_version}}/example.patch"
new file mode 100644
index 0000000..2000a34
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}-{{=example_bbappend_version}}/example.patch"	
@@ -0,0 +1,12 @@
+#
+# This is a non-functional placeholder file, here for example purposes
+# only.
+#
+# If you had a patch for your recipe, you'd put it in this directory
+# and reference it from your recipe's SRC_URI:
+#
+#  SRC_URI += "file://example.patch"
+#
+# Note that you could also rename the directory containing this patch
+# to remove the version number or simply rename it 'files'.  Doing so
+# allows you to use the same directory for multiple recipes.
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend" "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend"
new file mode 100644
index 0000000..2e50ff6
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend"	
@@ -0,0 +1,8 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
+
+#
+# This .bbappend doesn't yet do anything - replace this text with
+# modifications to the example_0.1.bb recipe, or whatever recipe it is
+# that you want to modify with this .bbappend (make sure you change
+# the recipe name (PN) and version (PV) to match).
+#
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/example.patch" "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/example.patch"
new file mode 100644
index 0000000..2000a34
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/example.patch"	
@@ -0,0 +1,12 @@
+#
+# This is a non-functional placeholder file, here for example purposes
+# only.
+#
+# If you had a patch for your recipe, you'd put it in this directory
+# and reference it from your recipe's SRC_URI:
+#
+#  SRC_URI += "file://example.patch"
+#
+# Note that you could also rename the directory containing this patch
+# to remove the version number or simply rename it 'files'.  Doing so
+# allows you to use the same directory for multiple recipes.
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c" "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c"
new file mode 100644
index 0000000..71f2e46
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c"	
@@ -0,0 +1,8 @@
+#include <stdio.h>
+
+int main(int argc, char **argv)
+{
+    printf("Hello World!\n");
+
+    return 0;
+}
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb" "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb"
new file mode 100644
index 0000000..14bf344
--- /dev/null
+++ "b/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb"	
@@ -0,0 +1,23 @@
+#
+# This file was derived from the 'Hello World!' example recipe in the
+# Yocto Project Development Manual.
+#
+
+DESCRIPTION = "Simple helloworld application"
+SECTION = "examples"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
+PR = "r0"
+
+SRC_URI = "file://helloworld.c"
+
+S = "${WORKDIR}"
+
+do_compile() {
+	     ${CC} helloworld.c -o helloworld
+}
+
+do_install() {
+	     install -d ${D}${bindir}
+	     install -m 0755 helloworld ${D}${bindir}
+}
-- 
1.7.11.4


