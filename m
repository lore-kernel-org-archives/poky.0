Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1037DE01400
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 13:45:18 -0800 (PST)
Received: from localhost (c-50-137-42-92.hsd1.or.comcast.net [50.137.42.92])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 955812FEF1
	for <poky@yoctoproject.org>; Fri, 28 Dec 2012 16:45:09 -0500 (EST)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Fri, 28 Dec 2012 13:44:20 -0800
Message-Id: <4501c5de4282593607fc8e95978425f9991fd7d1.1356731004.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1356731004.git.scott.a.garman@intel.com>
References: <cover.1356731004.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 955812FEF1.49588
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 14/23] yocto-bsp: set branches_base for list_property_values()
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
X-List-Received-Date: Fri, 28 Dec 2012 21:45:18 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

yocto_bsp_list_property_values() is missing the context it needs to
properly filter choicelists, so add it to the context object.

Fixes [YOCTO #3233]

(From meta-yocto rev: 064b15f76c5b52899f4c3fdef06412c3063062a5)

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/lib/bsp/engine.py |    4 ++++
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
1.7.9.5


