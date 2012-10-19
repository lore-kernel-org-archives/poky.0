Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66220E00348
	for <poky@yoctoproject.org>; Fri, 19 Oct 2012 10:22:15 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Oct 2012 10:21:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,613,1344236400"; d="scan'208";a="208199404"
Received: from unknown (HELO localhost) ([10.255.14.73])
	by orsmga001.jf.intel.com with ESMTP; 19 Oct 2012 10:22:14 -0700
From: tom.zanussi@intel.com
To: poky@yoctoproject.org
Date: Fri, 19 Oct 2012 12:22:13 -0500
Message-Id: <fb09064abc2df8e5162663fce150ffcd532aa649.1350666665.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1350666665.git.tom.zanussi@intel.com>
References: <cover.1350666665.git.tom.zanussi@intel.com>
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
X-List-Received-Date: Fri, 19 Oct 2012 17:22:15 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

yocto_bsp_list_property_values() is missing the context it needs to
properly filter choicelists, so add it to the context object.

Fixes [YOCTO #3233]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index ac5058c..8d47bbf 100644
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


