Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87C2BE013B7
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:22:46 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 937A530438
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:22:40 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:20:22 -0700
Message-Id: <0a9c64116b0b34f64363adb33554406e06d52bfa.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 937A530438.8E277
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 56/57] yocto-bsp: generate default properties even if json specified
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
X-List-Received-Date: Mon, 13 Aug 2012 21:22:46 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Users seem to want to specify incomplete property sets when using json
input.  Allow this by generating default properties before the
user-specified properties are applied; the user will then get the
defaults for any unspecified values, and avoid cryptic backtraces.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 scripts/lib/bsp/engine.py |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index af90e91..9d16b19 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1245,10 +1245,10 @@ def yocto_bsp_create(machine, arch, scripts_path, bsp_output_dir, codedump, prop
 
     gen_program_header_lines(program_lines)
 
+    gen_initial_property_vals(input_lines, program_lines)
+
     if properties:
         gen_supplied_property_vals(properties, program_lines)
-    else:
-        gen_initial_property_vals(input_lines, program_lines)
 
     gen_program_machine_lines(machine, program_lines)
 
-- 
1.7.9.5


