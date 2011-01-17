Return-Path: <aalonso00@gmail.com>
Received: from mail-yi0-f54.google.com (mail-yi0-f54.google.com
	[209.85.218.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id AC1864C8120D
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:24:04 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yi0-f54.google.com with SMTP id 19so2880643yie.13
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=yeR+6mY41wcgyZQntzhn14rf7DuySvrdZxzb88D5pws=;
	b=RUEeHCJzSIOIcPBtYsPr4yW63GKa5PnOVDx0/P2R+tu7ivgHKzAIqf/+RZd9Z9TcbY
	xemstoXRCo1Q4feyQXJSR+ZK/OtBdNCwOlNQrJNsZJgeN/MXtB9bL75lNExPw27Z1EuV
	ZFZEuOxZGvz4BI3c/SrB+cGeuqxhwN9Uv0QIU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=pSLG5w9/HSQ3wqzQVFSXEwjXGYCQlsgc4d7ZJLaXipVRs3jlFjwSKcr1PnIUpWhKDB
	7P43pcOwH7v6qi2Pn6lWWXXJTqHTr6lxula30GOPvuojEha+0MyLns7eoT+cmQf7pM2o
	+52cdX5eMAbNFtOFNHnt+lxeOkbW1Y+mQVFwY=
Received: by 10.100.135.15 with SMTP id i15mr2781310and.186.1295295844525;
	Mon, 17 Jan 2011 12:24:04 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.24.02
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:24:03 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:27 -0600
Message-Id: <1295296178-18590-14-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 14/25] linux-xilinx: update kernel version 2.6.37 rc4
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
X-List-Received-Date: Mon, 17 Jan 2011 20:24:09 -0000

* Update kernel version 2.6.37 rc4
* Remove xilinx frame buffer patch, integrated in 2.6.36
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 .../linux-xilinx/xilinxfb-update-tft-comp.patch    |   28 --------------------
 recipes-kernel/linux/linux-xilinx_git.bb           |    7 ++---
 2 files changed, 3 insertions(+), 32 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-xilinx/xilinxfb-update-tft-comp.patch

diff --git a/recipes-kernel/linux/linux-xilinx/xilinxfb-update-tft-comp.patch b/recipes-kernel/linux/linux-xilinx/xilinxfb-update-tft-comp.patch
deleted file mode 100644
index ba6c77d..0000000
--- a/recipes-kernel/linux/linux-xilinx/xilinxfb-update-tft-comp.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-From 93d77edd37fccd03b227f259f0e52072eae9ba74 Mon Sep 17 00:00:00 2001
-From: Adrian Alonso <aalonso00@gmail.com>
-Date: Thu, 15 Jul 2010 23:16:48 -0500
-Subject: [PATCH] xilinxfb: update tft comp versions
-
-* Add tft display module compatibility for new
-  hardware modules
-
-Signed-off-by: Adrian Alonso <aalonso00@gmail.com>
----
- drivers/video/xilinxfb.c |    2 ++
- 1 files changed, 2 insertions(+), 0 deletions(-)
-
-diff --git a/drivers/video/xilinxfb.c b/drivers/video/xilinxfb.c
-index ed7c8d0..829efaa 100644
---- a/drivers/video/xilinxfb.c
-+++ b/drivers/video/xilinxfb.c
-@@ -484,6 +484,8 @@ static int __devexit xilinxfb_of_remove(struct of_device *op)
- /* Match table for of_platform binding */
- static struct of_device_id xilinxfb_of_match[] __devinitdata = {
-	{ .compatible = "xlnx,xps-tft-1.00.a", },
-+	{ .compatible = "xlnx,xps-tft-2.00.a", },
-+	{ .compatible = "xlnx,xps-tft-2.01.a", },
-	{ .compatible = "xlnx,plb-tft-cntlr-ref-1.00.a", },
-	{ .compatible = "xlnx,plb-dvi-cntlr-ref-1.00.c", },
-	{},
---
-1.7.1.1
diff --git a/recipes-kernel/linux/linux-xilinx_git.bb b/recipes-kernel/linux/linux-xilinx_git.bb
index 9b44e83..0541b3f 100644
--- a/recipes-kernel/linux/linux-xilinx_git.bb
+++ b/recipes-kernel/linux/linux-xilinx_git.bb
@@ -7,13 +7,12 @@ DEFAULT_PREFERENCE = "-1"
 DEFAULT_PREFERENCE_virtex4 = "1"
 DEFAULT_PREFERENCE_virtex5 = "1"
 
-TAG="xilinx_v2.6.35"
-PV = "2.6.35+git"
-PR = "r2"
+TAG="xilinx_v2.6.37-rc4"
+PV = "2.6.37.4"
+PR = "r3"
 
 SRCREV = "${TAG}"
 SRC_URI = "git://git.xilinx.com/linux-2.6-xlnx.git;protocol=git \
-           file://xilinxfb-update-tft-comp.patch \
            file://linux-xilinx-do-not-use-OS-option.patch \
 		   file://defconfig"
 
-- 
1.7.3.4


