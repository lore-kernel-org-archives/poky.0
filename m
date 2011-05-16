Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 763944C80A53
	for <poky@yoctoproject.org>; Mon, 16 May 2011 06:32:40 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id EF096166019A; Mon, 16 May 2011 05:32:39 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9FC22166015B;
	Mon, 16 May 2011 05:32:38 -0600 (MDT)
Message-ID: <4DD10B56.1060700@mlbassoc.com>
Date: Mon, 16 May 2011 05:32:38 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: [PATCH resend] Kernel command line options for runqemu
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
X-List-Received-Date: Mon, 16 May 2011 11:32:41 -0000
X-Groupsio-MsgNum: 6180
Content-Type: multipart/mixed; boundary="------------050209080702070108080300"

--------------050209080702070108080300
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

This patch lets the user add options to the kernel command line when
started via runqemu.  Very useful for things like 'psplash=false'

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------050209080702070108080300
Content-Type: text/x-patch;
 name="0001-runqemu-allow-kernel-command-line-options-to-be-spec.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-runqemu-allow-kernel-command-line-options-to-be-spec.pa";
 filename*1="tch"

From eaeb894f1bd4b769ec05c28cca4e31f334339261 Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Mon, 16 May 2011 05:29:24 -0600
Subject: [PATCH] runqemu: allow kernel command line options to be specified by user

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 scripts/runqemu |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/runqemu b/scripts/runqemu
index a09362c..2c3f6f4 100755
--- a/scripts/runqemu
+++ b/scripts/runqemu
@@ -51,7 +51,7 @@ ROOTFS=""
 LAZY_ROOTFS=""
 SCRIPT_QEMU_OPT=""
 SCRIPT_QEMU_EXTRA_OPT=""
-SCRIPT_KERNEL_OPT=""
+SCRIPT_KERNEL_OPT=${SCRIPT_KERNEL_OPT:-""}
 
 TMPDIR=""
 
-- 
1.7.3.4


--------------050209080702070108080300--
