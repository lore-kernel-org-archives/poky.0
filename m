Return-Path: <aalonso00@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 00B4B4C80FA4
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:23:37 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gx0-f176.google.com with SMTP id 4so2387299gxk.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=0hWUoDGS5t2tDth4XKPh4GvbvlSIMzf1/U8iAvsN2WA=;
	b=lIOQm2r53+cU1yNb8B4dB14s6RsLCM8k+hbP79G3PFupXnSbIjgVfiyScvJEPe0L7r
	1ZHNpEdV9t7Y9cBpaNIrEXepHPcIc/wh7NsVr5HefaIhtfuur5cgSS9rn2qW0fX4j8Tf
	+LlBAIvIZKFHCMRrsRXt00E47A93cDkleS4t4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=sR/eoRzFYC1uiKJkZJXNaFdIvZbYYFtbzTO8uI/9yrxqfwdEfoW++8zAvOsDvd6pRE
	YXzujUqW2d1I+UdqXWxzEB5uJEtS/NUNE+wI4rHqb3K8lUlOxGFOadgoIsDMajEz/SJP
	dd3iuiP903b+D3Yh4xgG5mgSBMRgyznLtEy1s=
Received: by 10.91.64.2 with SMTP id r2mr5065201agk.133.1295295817410;
	Mon, 17 Jan 2011 12:23:37 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.23.35
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:23:36 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:17 -0600
Message-Id: <1295296178-18590-4-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 04/25] u-boot: update version use xilinx-boot bbclass
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
X-List-Received-Date: Mon, 17 Jan 2011 20:23:38 -0000

* Update u-boot version for Xilinx Powerpc targets
* Use xilinx-boot bbclass for sh/hw integration
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 recipes-bsp/uboot/u-boot-xilinx_git.bb |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb b/recipes-bsp/uboot/u-boot-xilinx_git.bb
index f345096..50d99e3 100644
--- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
+++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
@@ -1,12 +1,12 @@
 require ../meta/recipes-bsp/uboot/u-boot.inc
-PR = "r1"
+PR = "r2"
 
-# Prefered u-boot from mainstream since has generic support for
-# ppc405, ppc440
-SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;protocol=git"
-SRCREV = "26e999650cf77c16f33c580abaadab2532f5e8b2"
+BRANCH="master"
+TAG="e094f2479ea339d7f48b6826f06f0be4984d9a98"
+SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git"
+SRCREV = "${TAG}"
 
-inherit xilinx-bsp
+inherit xilinx-boot
 
 TARGET_BOARD = "${@map_target(bb.data.getVar('TARGET_ARCH', d, 1), d)}"
 UBOOT_TARGET = "${@uboot_target(bb.data.getVar('TARGET_ARCH', d, 1), d)}"
-- 
1.7.3.4


