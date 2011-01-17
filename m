Return-Path: <aalonso00@gmail.com>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E7674C81218
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:24:17 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gw0-f48.google.com with SMTP id 15so1914215gwj.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:24:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=xIz5/FLdgCOUHe3IcwOcuU0pqJeiVPZGH7chvjLPZ8k=;
	b=K3TwyXOWMdUBtHa4TJS61dm8tQERRBd6e4lzwuDd23gKT7UrOYO0rtLvjI/YT07By6
	P7mKpRpc7oMSeblN9hADYxAmtj3f2RrSbeFuQDWuFN+oXHRhRjaA0YZd3xa+3OQ+1Scu
	Zedo60//Sf2G+ufdypjix2QDhw0P4iDqjLjOo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=jsEdCQ+hAO6f2GcVoa8S/35l54rMLFYxfBt6BLoIuM9arTOzOvPHx66Y+M/DmB/jx2
	ZJJZ4oOodFNE2hIdAMgp4cYRDuNNsIm8qA6vvf9lPHBYCtjffBLDGRg7FI0E+AU7dTJk
	oSwy4pIVdIMg8ijXE3VugzrOgaQr4RwMbLRGs=
Received: by 10.90.103.9 with SMTP id a9mr5041696agc.165.1295295857320;
	Mon, 17 Jan 2011 12:24:17 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.24.14
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:24:16 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:32 -0600
Message-Id: <1295296178-18590-19-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 19/25] tune-ppc405: append ppc440 in PACKAGE_EXTRA_ARCHS
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
X-List-Received-Date: Mon, 17 Jan 2011 20:24:17 -0000

* Append ppc440 in PACKAGE_EXTRA_ARCHS
* Support gnueabi toolchain for pcc440 and ppc405 archs
  (Xilinx PowerPC targets)

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 conf/machine/include/tune-ppc405.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/conf/machine/include/tune-ppc405.inc b/conf/machine/include/tune-ppc405.inc
index e5edd68..53332c9 100644
--- a/conf/machine/include/tune-ppc405.inc
+++ b/conf/machine/include/tune-ppc405.inc
@@ -3,4 +3,4 @@ TARGET_FPU   ?=  "soft"
 TARGET_CC_ARCH = "-mcpu=405"
 BASE_PACKAGE_ARCH = "ppc405"
 FEED_ARCH = "ppc405"
-PACKAGE_EXTRA_ARCHS += "ppc405"
+PACKAGE_EXTRA_ARCHS += "ppc405 ppc440"
-- 
1.7.3.4


