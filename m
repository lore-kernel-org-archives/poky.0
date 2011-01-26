Return-Path: <aalonso00@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 443024C80B6E
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 11:35:32 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxm8 with SMTP id 8so226597yxm.35
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 09:35:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer; bh=MvXSTDuYQS0OjcCdc6kke/XOQWn1pSZWdH+4OO9gyvw=;
	b=SEiWsAHoWgHA5VCeBzPVZMqs7pLFkjEM9xVMjAN66To0bIavchigEAYYjjc22OG1DZ
	bEH/K4jPD+eFt+9Bbb5+1BDu9GxxhXMTQwqvKrVOUZ4q2gIhZ6NiZ2GiUVKpi3rSJ91F
	7TEdTEhGusNdRL2fxmSqIPbpTIDQziwNJt8WQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	b=RFQXY8ja4zR104GqFElMkOT+rpB/Iky6wTkodJBCo+zlI4uw6ryNc0lPrW0hy5mHFG
	VNLJSrwf3q6dBmRDqsioQ5dLj1eXU5obLBHK9QEUke7VSEZrSzodawA+U+zwpp8JkIJa
	l4S0U8ZxQnhwBEy5+dQeL/SHx8iEMpKLk52IA=
Received: by 10.90.24.10 with SMTP id 10mr1601902agx.179.1296063331742;
	Wed, 26 Jan 2011 09:35:31 -0800 (PST)
Received: from localhost.localdomain ([189.134.1.130])
	by mx.google.com with ESMTPS id z5sm1268350yhc.35.2011.01.26.09.35.29
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 26 Jan 2011 09:35:31 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: poky@yoctoproject.org
Date: Wed, 26 Jan 2011 11:42:23 -0600
Message-Id: <1296063743-4676-1-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 05/25][v3] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Wed, 26 Jan 2011 17:35:32 -0000

* Disable -Os optspace option not supported by gcc use insted -O2
* v2 Remove Make file patch
* v3 use EXTRA_OEMAKE variable, override default OPTFLAGS settings
  in u-boot.inc, Powerpc targets build only with -O1, -O2 optflags
  Build failures are related to gcc bugs #44392 and #45052
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 recipes-bsp/uboot/u-boot-xilinx_git.bb |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb b/recipes-bsp/uboot/u-boot-xilinx_git.bb
index 50d99e3..a373428 100644
--- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
+++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
@@ -1,9 +1,11 @@
 require ../meta/recipes-bsp/uboot/u-boot.inc
-PR = "r2"
+PR = "r3"
 
+EXTRA_OEMAKE = "CROSS_COMPILE=${TARGET_PREFIX} OPTFLAGS='-O2'"
 BRANCH="master"
 TAG="e094f2479ea339d7f48b6826f06f0be4984d9a98"
-SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git"
+SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git \
+          "
 SRCREV = "${TAG}"
 
 inherit xilinx-boot
-- 
1.7.3.4


