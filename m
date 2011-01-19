Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 410984C811F6
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 22:20:01 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 18437304EE
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 23:19:55 -0500 (EST)
Message-Id: <d57e678ab0ed9d20ebb08a5935e3d8d7bdbcfed5.1295410231.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295410231.git.scott.a.garman@intel.com>
References: <cover.1295410231.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Thu, 6 Jan 2011 08:19:36 -0800
Date: Tue, 18 Jan 2011 20:19:53 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 18437304EE.93805
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 5/9] insane.bbclass: skip checks on .la installed status
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
X-List-Received-Date: Wed, 19 Jan 2011 04:20:01 -0000

Enabling libtool sysroot support triggers these errors but they
are a valid change in behavior.

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 meta/classes/insane.bbclass |    5 -----
 1 files changed, 0 insertions(+), 5 deletions(-)

diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
index 3ab4c2c..6f06d85 100644
--- a/meta/classes/insane.bbclass
+++ b/meta/classes/insane.bbclass
@@ -427,11 +427,6 @@ def package_qa_check_staged(path,d):
             path = os.path.join(root,file)
             if file.endswith(".la"):
                 file_content = open(path).read()
-                # Don't check installed status for native/cross packages
-                if not bb.data.inherits_class("native", d) and not bb.data.inherits_class("cross", d):
-                    if installed in file_content:
-                        error_msg = "%s failed sanity test (installed) in path %s" % (file,root)
-                        sane = package_qa_handle_error(5, error_msg, "staging", path, d)
                 if workdir in file_content:
                     error_msg = "%s failed sanity test (workdir) in path %s" % (file,root)
                     sane = package_qa_handle_error(8, error_msg, "staging", path, d)
-- 
1.7.1


