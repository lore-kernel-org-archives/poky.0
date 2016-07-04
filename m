Return-Path: <humberto.ibarra.lopez@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E81DE00D54; Mon,  4 Jul 2016 12:53:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 622CEE00D3F
	for <poky@yoctoproject.org>; Mon,  4 Jul 2016 12:53:01 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga104.fm.intel.com with ESMTP; 04 Jul 2016 12:53:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,576,1459839600"; d="scan'208";a="729616432"
Received: from jhibarra-mobl1.zpn.intel.com ([10.219.16.231])
	by FMSMGA003.fm.intel.com with ESMTP; 04 Jul 2016 12:53:00 -0700
From: Humberto Ibarra <humberto.ibarra.lopez@intel.com>
To: poky@yoctoproject.org
Date: Mon,  4 Jul 2016 14:54:53 -0500
Message-Id: <1467662093-7273-1-git-send-email-humberto.ibarra.lopez@intel.com>
X-Mailer: git-send-email 2.4.11
Subject: [PATCH] scripts/lib/bsp/engine.py: Add error message for wrong input file
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
X-List-Received-Date: Mon, 04 Jul 2016 19:53:04 -0000

Format of properties file is expected to be a simple json detailing properties, if this format fails an exception is thrown. This patch adds a graceful error message to the case when the properties file has a wrong format.

[YOCTO #9750]
---
 scripts/lib/bsp/engine.py | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/scripts/lib/bsp/engine.py b/scripts/lib/bsp/engine.py
index 85f095e..760efc7 100644
--- a/scripts/lib/bsp/engine.py
+++ b/scripts/lib/bsp/engine.py
@@ -1547,11 +1547,13 @@ def yocto_common_create(machine, target, scripts_path, layer_output_dir, codedum
     if properties_file:
         try:
             infile = open(properties_file, "r")
+            properties = json.load(infile)
         except IOError:
             print("Couldn't open properties file %s for reading, exiting" % properties_file)
             sys.exit(1)
-
-        properties = json.load(infile)
+        except ValueError:
+            print("Wrong format on properties file %s, exiting" % properties_file)
+            sys.exit(1)
 
     if properties_str and not properties:
         properties = json.loads(properties_str)
-- 
2.4.11


