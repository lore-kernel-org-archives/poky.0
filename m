Return-Path: <keller.eric@gmail.com>
Received: from mail-ea0-f181.google.com (mail-ea0-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D45F7E01848
	for <poky@yoctoproject.org>; Fri,  8 Nov 2013 07:07:36 -0800 (PST)
Received: by mail-ea0-f181.google.com with SMTP id d10so1171014eaj.40
	for <poky@yoctoproject.org>; Fri, 08 Nov 2013 07:07:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=1mBP9tW+04c8aflVf2q7bOWrwtwHGJ08rjipeZHmAwk=;
	b=piJADWTnHt8naNpgG1OVldEPGE09hY1aV7kgbN5oZLKKEKGrtj0IPTkGfMwxrbAIiB
	u15Wai2+UBsU7z9rcLUJ6KaVt4EnlTQiZkMiyk6zmRKsvo3zyRXUldRxrfg7cBFnDYMh
	I3wfOIJ0g8xZP2A7xaBEiDkmHlbtd0x0sBKYqL/KYlr9MTPwgVmhj19OKlo4JScC6on8
	B3uKKpttKXjDO2Ah6tgWpHs11Bd4aR5B7w4hKgYasqgNidJKQXMSYKjuYhmaoOaiSoAn
	4YNCm3sNq+ADEbtLPK0fxno6GI3IX21R9TarW4n7LgnqqHrmXb4I2weq34vhGTCX6l5c
	STzQ==
X-Received: by 10.15.54.69 with SMTP id s45mr17131748eew.37.1383923255603;
	Fri, 08 Nov 2013 07:07:35 -0800 (PST)
Received: from localhost.localdomain (77-57-96-182.dclient.hispeed.ch.
	[77.57.96.182])
	by mx.google.com with ESMTPSA id 8sm23799362eem.15.2013.11.08.07.07.33
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Nov 2013 07:07:34 -0800 (PST)
From: Eric Keller <keller.eric@gmail.com>
To: poky@yoctoproject.org
Date: Fri,  8 Nov 2013 16:07:23 +0100
Message-Id: <1383923243-6328-2-git-send-email-eric.keller.ek1@roche.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1383923243-6328-1-git-send-email-eric.keller.ek1@roche.com>
References: <1383923243-6328-1-git-send-email-eric.keller.ek1@roche.com>
Cc: Eric Keller <eric.keller.ek1@roche.com>
Subject: [PATCH] add linux-yocto-rt_3.10.bbappend recipe for genericx86 and genericx86-64
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
X-List-Received-Date: Fri, 08 Nov 2013 15:07:37 -0000

Signed-off-by: Eric Keller <eric.keller.ek1@roche.com>
---
 .../recipes-kernel/linux/linux-yocto-rt_3.10.bbappend    |   14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
new file mode 100644
index 0000000..d1aefaa
--- /dev/null
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto-rt_3.10.bbappend
@@ -0,0 +1,14 @@
+KBRANCH_genericx86  = "standard/common-pc/base"
+KBRANCH_genericx86-64  = "standard/common-pc-64/base"
+
+KMACHINE_genericx86 ?= "common-pc"
+KMACHINE_genericx86-64 ?= "common-pc-64"
+
+SRCREV_machine_genericx86 ?= "702040ac7c7ec66a29b4d147665ccdd0ff015577"
+SRCREV_machine_genericx86-64 ?= "702040ac7c7ec66a29b4d147665ccdd0ff015577"
+
+COMPATIBLE_MACHINE_genericx86 = "genericx86"
+COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
+
+# routerstationpro has a flash size of 16mb
+KERNEL_IMAGE_MAXSIZE_routerstationpro = "16777216"
-- 
1.7.10.4


