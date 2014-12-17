Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAE55E00B63; Tue, 16 Dec 2014 16:41:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12E51E00B60
	for <poky@yoctoproject.org>; Tue, 16 Dec 2014 16:41:37 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Dec 2014 16:41:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,590,1413270000"; d="scan'208";a="638711582"
Received: from unknown (HELO localhost) ([10.255.13.117])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2014 16:41:35 -0800
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: poky@yoctoproject.org
Date: Tue, 16 Dec 2014 18:41:08 -0600
Message-Id: <7d1b90f227bf7a959a028ef8c724611547641ffb.1418776404.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <02cf016f4ee8172f07278a3ab3465a973107279a.1418776404.git.tom.zanussi@linux.intel.com>
References: <02cf016f4ee8172f07278a3ab3465a973107279a.1418776404.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1418776404.git.tom.zanussi@linux.intel.com>
References: <cover.1418776404.git.tom.zanussi@linux.intel.com>
Cc: Tom Zanussi <tom.zanussi@linux.intel.com>
Subject: [PATCH 9/9] yocto-layer: Get rid of 'strange' filenames in templates
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
X-List-Received-Date: Wed, 17 Dec 2014 00:41:39 -0000

For the yocto-layer templates, give all the 'strange' template
filenames 'normal' names, adding new yocto-bsp-filename and
yocto-bsp-dirname tags for the new filename processing pass where
needed.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 .../bsp/substrate/target/arch/layer/recipes-example-bbappend.noinstall   | 1 +
 .../example-bbappend/example-bbappend-version.bbappend                   | 1 +
 .../example-bbappend/example-bbappend-version.noinstall                  | 1 +
 .../example-bbappend/example-bbappend-version/example.patch              | 0
 scripts/lib/bsp/substrate/target/arch/layer/recipes-example.noinstall    | 1 +
 .../target/arch/layer/recipes-example/example/example-recipe-0.1.bb      | 1 +
 .../arch/layer/recipes-example/example/example-recipe-0.1.noinstall      | 1 +
 .../arch/layer/recipes-example/example/example-recipe-0.1/example.patch  | 0
 .../arch/layer/recipes-example/example/example-recipe-0.1/helloworld.c   | 0
 9 files changed, 6 insertions(+)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend" => scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version.bbappend (78%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}-{{=example_bbappend_version}}/example.patch" => scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version/example.patch (100%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb" => scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb (90%)
 create mode 100644 scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.noinstall
 rename "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/example.patch" => scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1/example.patch (100%)
 rename "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c" => scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1/helloworld.c (100%)

diff --git a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend.noinstall b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend.noinstall
new file mode 100644
index 0000000..3594e65
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend.noinstall
@@ -0,0 +1 @@
+# yocto-bsp-dirname {{ if create_example_bbappend == "y": }} recipes-example-bbappend
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend" b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version.bbappend
similarity index 78%
rename from "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend"
rename to scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version.bbappend
index 2e50ff6..3531330 100644
--- "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend"	
+++ b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version.bbappend
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=example_bbappend_name}}_{{=example_bbappend_version}}.bbappend
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
 #
diff --git a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version.noinstall b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version.noinstall
new file mode 100644
index 0000000..46df8a8
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version.noinstall
@@ -0,0 +1 @@
+# yocto-bsp-dirname {{=example_bbappend_name}}-{{=example_bbappend_version}}
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}-{{=example_bbappend_version}}/example.patch" b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version/example.patch
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_bbappend == \"y\": }} recipes-example-bbappend/example-bbappend/{{=example_bbappend_name}}-{{=example_bbappend_version}}/example.patch"
rename to scripts/lib/bsp/substrate/target/arch/layer/recipes-example-bbappend/example-bbappend/example-bbappend-version/example.patch
diff --git a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example.noinstall b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example.noinstall
new file mode 100644
index 0000000..b0069b1
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example.noinstall
@@ -0,0 +1 @@
+# yocto-bsp-dirname {{ if create_example_recipe == "y": }} recipes-example
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb" b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
similarity index 90%
rename from "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb"
rename to scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
index 14bf344..ba1ccb1 100644
--- "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}_0.1.bb"	
+++ b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.bb
@@ -1,3 +1,4 @@
+# yocto-bsp-filename {{=example_recipe_name}}_0.1.bb
 #
 # This file was derived from the 'Hello World!' example recipe in the
 # Yocto Project Development Manual.
diff --git a/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.noinstall b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.noinstall
new file mode 100644
index 0000000..c319c19
--- /dev/null
+++ b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1.noinstall
@@ -0,0 +1 @@
+# yocto-bsp-dirname {{=example_recipe_name}}-0.1
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/example.patch" b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1/example.patch
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/example.patch"
rename to scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1/example.patch
diff --git "a/scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c" b/scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1/helloworld.c
similarity index 100%
rename from "scripts/lib/bsp/substrate/target/arch/layer/{{ if create_example_recipe == \"y\": }} recipes-example/example/{{=example_recipe_name}}-0.1/helloworld.c"
rename to scripts/lib/bsp/substrate/target/arch/layer/recipes-example/example/example-recipe-0.1/helloworld.c
-- 
1.9.3


