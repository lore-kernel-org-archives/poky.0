Return-Path: <Zubair.Kakakhel@imgtec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B358E00DC4; Wed, 19 Oct 2016 03:56:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 938 seconds by postgrey-1.32 at yocto-www;
	Wed, 19 Oct 2016 03:56:32 PDT
Received: from mailapp01.imgtec.com (mailapp02.imgtec.com [217.156.133.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F6B4E00DBD
	for <poky@yoctoproject.org>; Wed, 19 Oct 2016 03:56:32 -0700 (PDT)
Received: from HHMAIL03.hh.imgtec.org (unknown [10.44.0.21])
	by Forcepoint Email with ESMTPS id D50E973115B54
	for <poky@yoctoproject.org>; Wed, 19 Oct 2016 11:40:49 +0100 (IST)
Received: from HHMAIL01.hh.imgtec.org (10.100.10.19) by HHMAIL03.hh.imgtec.org
	(10.44.0.21) with Microsoft SMTP Server (TLS) id 14.3.294.0;
	Wed, 19 Oct 2016 11:40:52 +0100
Received: from zkakakhel-linux.le.imgtec.org (192.168.154.45) by
	HHMAIL01.hh.imgtec.org (10.100.10.21) with Microsoft SMTP Server (TLS)
	id 14.3.294.0; Wed, 19 Oct 2016 11:40:51 +0100
From: Zubair Lutfullah Kakakhel <Zubair.Kakakhel@imgtec.com>
To: <poky@yoctoproject.org>
Date: Wed, 19 Oct 2016 11:40:47 +0100
Message-ID: <1476873647-45290-1-git-send-email-Zubair.Kakakhel@imgtec.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [192.168.154.45]
Subject: [Patch] poky.conf: Update QEMU_TARGETS and add mips64el
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
X-List-Received-Date: Wed, 19 Oct 2016 10:56:36 -0000
Content-Type: text/plain

qemu-system-mips64el is unavailable which causes problems for runqemu
Add mips64el to QEMU_TARGETS to build it.

Signed-off-by: Zubair Lutfullah Kakakhel <Zubair.Kakakhel@imgtec.com>

---
Is there any particular reason QEMU_TARGETS is over-ridden here?
oe-core already has them in meta/recipes-devtools/qemu/qemu.inc
Perhaps this is some legacy cruft from 43fe018e ?
---
 meta-poky/conf/distro/poky.conf | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index ddf030a..570dc58 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -45,8 +45,8 @@ DISTRO_EXTRA_RDEPENDS_append_qemux86-64 = " ${POKYQEMUDEPS}"
 
 TCLIBCAPPEND = ""
 
-QEMU_TARGETS ?= "arm aarch64 i386 mips mipsel mips64 ppc x86_64"
-# Other QEMU_TARGETS "mips64el sh4"
+QEMU_TARGETS ?= "arm aarch64 i386 mips mipsel mips64 mips64el ppc x86_64"
+# Other QEMU_TARGETS "sh4"
 
 PREMIRRORS ??= "\
 bzr://.*/.*   http://downloads.yoctoproject.org/mirror/sources/ \n \
-- 
1.9.1


