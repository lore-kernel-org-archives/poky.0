Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1C44E01437
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 13:42:21 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 502E82FF3B
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 16:42:16 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Tue, 12 Jun 2012 13:41:17 -0700
Message-Id: <d90c887f91a5330fb5ff51776542a23870569fb0.1339533508.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
References: <cover.1339533507.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 502E82FF3B.9BA93
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 27/31] gitignore: add wildcard to match toplevel patch files
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
X-List-Received-Date: Tue, 12 Jun 2012 20:42:21 -0000

From: Paul Gortmaker <paul.gortmaker@windriver.com>

To support the basic workflow of trivial patches:

 git format-patch HEAD~.. ; git send-email --to foo@bar.com 0001-foo.patch

We don't want git status reporting on patches lying in the top
level dir in this case.

Cc: Richard Purdie <richard.purdie@linuxfoundation.org>
(From OE-Core rev: f9c2d97d549e848127b741b967d90288c60f4d43)

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .gitignore |    1 +
 1 file changed, 1 insertion(+)

diff --git a/.gitignore b/.gitignore
index 04e36c5..f8db092 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,5 +1,6 @@
 *.pyc
 *.pyo
+/*.patch
 build*/conf/local.conf
 build*/conf/bblayers.conf
 build*/downloads
-- 
1.7.9.5


