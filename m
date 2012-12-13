Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34B2AE00294
	for <poky@yoctoproject.org>; Thu, 13 Dec 2012 13:27:43 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Dec 2012 13:26:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,276,1355126400"; d="scan'208";a="257140849"
Received: from unknown (HELO localhost) ([10.255.12.87])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2012 13:27:42 -0800
From: tom.zanussi@intel.com
To: scott.a.garman@intel.com,
	poky@yoctoproject.org
Date: Thu, 13 Dec 2012 15:27:41 -0600
Message-Id: <7d31cf9e662cf2b2ea66a14012dbf1bbba5f78a6.1355433708.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1355433708.git.tom.zanussi@intel.com>
References: <cover.1355433708.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] yocto-bsp: set branches_base for list_property_values()
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
X-List-Received-Date: Thu, 13 Dec 2012 21:27:43 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

yocto_bsp_list_property_values() is missing the context it needs to
properly filter choicelists, so add it to the context object.

Fixes [YOCTO #3233]

(From meta-yocto rev: 064b15f76c5b52899f4c3fdef06412c3063062a5)

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/lib/bsp/engine.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 9d16b19..4ddb744 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1445,6 +1445,10 @@ def yocto_bsp_list_property_values(arch, property, scripts_path, properties_file
             gen_fn = input_line.props["gen"]
             if nested_properties:
                 context["filename"] = nested_properties[0]
+                try:
+                    context["branches_base"] = input_line.props["branches_base"]
+                except KeyError:
+                    context["branches_base"] = None
             values_list = input_line.gen_choices_list(context, False)
         except KeyError:
             for choice in input_line.choices:
-- 
1.7.11.4


