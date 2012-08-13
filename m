Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FC41E01404
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 14:21:45 -0700 (PDT)
Received: from localhost (c-76-105-137-48.hsd1.or.comcast.net [76.105.137.48])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id 08CE83042E
	for <poky@yoctoproject.org>; Mon, 13 Aug 2012 17:21:39 -0400 (EDT)
From: Scott Garman <scott.a.garman@intel.com>
To: poky@yoctoproject.org
Date: Mon, 13 Aug 2012 14:19:56 -0700
Message-Id: <5d7ef59d947315f87e5fbb8ad4101bb0d0d628f4.1344892714.git.scott.a.garman@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: 08CE83042E.7813D
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 30/57] task-core-tools-testapps.bb: kexec-tools does not work on e5500-64b parts
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
X-List-Received-Date: Mon, 13 Aug 2012 21:21:45 -0000

From: Matthew McClintock <msm@freescale.com>

This prevents kexec from building for this part since it does not work

(From OE-Core rev: c7beda1b779ce189c614fcce13e9ccf2c1b4ca6c)

Signed-off-by: Matthew McClintock <msm@freescale.com>
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../recipes-core/tasks/task-core-tools-testapps.bb |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta/recipes-core/tasks/task-core-tools-testapps.bb b/meta/recipes-core/tasks/task-core-tools-testapps.bb
index b5847f8..bdd0d05 100644
--- a/meta/recipes-core/tasks/task-core-tools-testapps.bb
+++ b/meta/recipes-core/tasks/task-core-tools-testapps.bb
@@ -22,6 +22,7 @@ KEXECTOOLS ?= "kexec"
 KEXECTOOLS_mips ?= ""
 KEXECTOOLS_mipsel ?= ""
 KEXECTOOLS_powerpc ?= ""
+KEXECTOOLS_e5500-64b ?= ""
 
 RDEPENDS_${PN} = "\
     blktool \
-- 
1.7.9.5


