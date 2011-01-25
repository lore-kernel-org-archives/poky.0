Return-Path: <aalonso00@gmail.com>
Received: from mail-px0-f176.google.com (mail-px0-f176.google.com
	[209.85.212.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C0934C806DA
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 15:02:31 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi11 with SMTP id 11so1153729pxi.35
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 13:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer; bh=120N4L0ROo6kqvnnhdq7IAefF78vNP9oDTwzqb1DtX4=;
	b=a7S6DmgI+eJoXyUVqrKQ9NQe6iQwZleR4kLkYgQ/+U6GxjuNaffZvZ/mSYohOWV5ZY
	rGlu2r135bBdBovDgb8GdI67MWGLmUBzDcuUjYiwtphRd4eCCJZMWtNhDOlAXAOlMurC
	eJQKHlhr5P9gbTPTNMhi4rh7qnGcxo5W7qDfo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	b=bt1pnm8AXcPrGfYSgMyptst5fXzu3A+Yj7ac6u/rOIB0IGQaZL0wNJDGaCBtkVAoJL
	DpuYWa3vFnoZvompnTXVNl47NKfOmdrq+wYp1Hs9WM9t3DWSFhnl4N4CsJvBtCJFaP/1
	+FInpXMcr6xzwXFFLK0LJta1exvQIKYaeidgs=
Received: by 10.142.179.13 with SMTP id b13mr5850179wff.24.1295989350979;
	Tue, 25 Jan 2011 13:02:30 -0800 (PST)
Received: from localhost.localdomain ([189.134.128.129])
	by mx.google.com with ESMTPS id x18sm19310222wfa.23.2011.01.25.13.02.28
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 25 Jan 2011 13:02:30 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: poky@yoctoproject.org
Date: Tue, 25 Jan 2011 15:09:16 -0600
Message-Id: <1295989756-7967-1-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 05/25][v2] u-boot: disable -Os option not supported by gcc
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
X-List-Received-Date: Tue, 25 Jan 2011 21:02:31 -0000

* Disable -Os optspace option not supported by gcc
* v2 use OPTFLAGS variable, remove meke file patch
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 recipes-bsp/uboot/u-boot-xilinx_git.bb |    6 ++++--
 1 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/recipes-bsp/uboot/u-boot-xilinx_git.bb b/recipes-bsp/uboot/u-boot-xilinx_git.bb
index 50d99e3..499ce0b 100644
--- a/recipes-bsp/uboot/u-boot-xilinx_git.bb
+++ b/recipes-bsp/uboot/u-boot-xilinx_git.bb
@@ -1,9 +1,11 @@
 require ../meta/recipes-bsp/uboot/u-boot.inc
-PR = "r2"
+PR = "r3"
 
+OPTFLAGS=""
 BRANCH="master"
 TAG="e094f2479ea339d7f48b6826f06f0be4984d9a98"
-SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git"
+SRC_URI = "git://git.xilinx.com/u-boot-xlnx.git;branch=${BRANCH};protocol=git \
+          "
 SRCREV = "${TAG}"
 
 inherit xilinx-boot
-- 
1.7.3.4


