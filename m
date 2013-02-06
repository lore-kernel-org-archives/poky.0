Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1B69E0071D
	for <poky@yoctoproject.org>; Wed,  6 Feb 2013 07:34:22 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Feb 2013 07:34:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,615,1355126400"; d="scan'208";a="287380293"
Received: from unknown (HELO localhost) ([10.255.12.217])
	by fmsmga002.fm.intel.com with ESMTP; 06 Feb 2013 07:34:21 -0800
From: tom.zanussi@linux.intel.com
To: poky@yoctoproject.org,
	ross.burton@intel.com
Date: Wed,  6 Feb 2013 09:34:21 -0600
Message-Id: <d640fe6bfd1fc07c040fac39825fe4895274b3ea.1360164582.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.7.11.4
In-Reply-To: <cover.1360164582.git.tom.zanussi@linux.intel.com>
References: <cover.1360164582.git.tom.zanussi@linux.intel.com>
Subject: [PATCH 1/1][danny] yocto-bsp: set branches_base for list_property_values()
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
X-List-Received-Date: Wed, 06 Feb 2013 15:34:23 -0000

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


