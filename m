Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17AD6E0043B
	for <poky@yoctoproject.org>; Tue, 10 Sep 2013 08:54:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r8AFsoEv009604
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Sep 2013 08:54:50 -0700 (PDT)
Received: from yow-bashfiel-d3.corp.ad.wrs.com (128.224.22.41) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Tue, 10 Sep 2013 08:54:49 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 10 Sep 2013 11:54:44 -0400
Message-ID: <58f2eb754c07a501c7102c1f1886c1564f04a102.1378828354.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1378828354.git.bruce.ashfield@windriver.com>
References: <cover.1378828354.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: [PATCH 1/1] meta-yocto-bsp: bump reference BSPs to v3.10.11
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
X-List-Received-Date: Tue, 10 Sep 2013 15:54:53 -0000
Content-Type: text/plain

Bumping to the 3.10.11 -stable release. Of note in this update is
the timer_list fix, which broke ssh access in the previous 3.10
series of updates:

    timer_list: correct the iterator for timer_list

    commit 84a78a6504f5c5394a8e558702e5b54131f01d14 upstream.

With this, we can revert the two temporary fixes for timer lists.
ssh access has been directly tested after this update.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 .../recipes-kernel/linux/linux-yocto_3.10.bbappend           |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
index 4391c0f..aa43b15 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.10.bbappend
@@ -7,11 +7,11 @@ KBRANCH_beagleboard = "standard/beagleboard"
 KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 
-SRCREV_machine_genericx86 ?= "ebc8428fdd938cfdfcdcadd77c3308ece6a57de1"
-SRCREV_machine_genericx86-64 ?= "ebc8428fdd938cfdfcdcadd77c3308ece6a57de1"
-SRCREV_machine_routerstationpro ?= "80d9c863208fba7d8af6afe7b9167808635a56c0"
-SRCREV_machine_mpc8315e-rdb ?= "b9b4bf71249ac7a24420913aa90f7ba75578d5a5"
-SRCREV_machine_beagleboard ?= "ebc8428fdd938cfdfcdcadd77c3308ece6a57de1"
+SRCREV_machine_genericx86 ?= "702040ac7c7ec66a29b4d147665ccdd0ff015577"
+SRCREV_machine_genericx86-64 ?= "702040ac7c7ec66a29b4d147665ccdd0ff015577"
+SRCREV_machine_routerstationpro ?= "d4e6adefaf92a1e7b6539d371ba49b78bd194a84"
+SRCREV_machine_mpc8315e-rdb ?= "12dc46ba4efb80e135fec4dce913eeb87ee671b3"
+SRCREV_machine_beagleboard ?= "702040ac7c7ec66a29b4d147665ccdd0ff015577"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-- 
1.7.10.4


