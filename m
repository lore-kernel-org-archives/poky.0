Return-Path: <michel.thebeau@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7448E014D5
	for <poky@yoctoproject.org>; Thu, 28 Mar 2013 12:33:14 -0700 (PDT)
Received: from yow-mthebeau-lx2.wrs.com (yow-mthebeau-lx2.wrs.com
	[128.224.146.159])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2SJX9tj024526;
	Thu, 28 Mar 2013 12:33:09 -0700 (PDT)
From: michel.thebeau@windriver.com
To: richard.purdie@linuxfoundation.org, bruce.ashfield@windriver.com
Date: Thu, 28 Mar 2013 15:32:54 -0400
Message-Id: <1364499175-29014-1-git-send-email-michel.thebeau@windriver.com>
X-Mailer: git-send-email 1.7.9.7
Cc: poky@yoctoproject.org
Subject: [PATCH 0/1] Routerstationpro: The size of the kernel image is too big
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
X-List-Received-Date: Thu, 28 Mar 2013 19:33:15 -0000

Hi Bruce, Richard,

I'd previously sent a patch to the poky list which Richard
has merged, commit 83716e40edacfd20dec8ef41f415ad5828d4643b:
"routerstationpro: use KERNEL_IMAGE_MAXSIZE to test the image"

The patch here is for yocto #3515.  I am sending two more patches
to the oe-core list:

I recommend that these three patches be applied in this order:
#3515
1. [OE-core] [PATCH 1/2] kernel.bbclass: omit vmlinux from rpm file when it is the alternative image
2. [poky] [PATCH 1/1] routerstationpro: swap KERNEL_IMAGETYPE and  KERNEL_ALT_IMAGETYPE

#3514
3. [OE-core] [PATCH 2/2] kernel.bbclass: do_sizecheck: update path to build image and do not delete

When these three are merged then I would consider #3514 and #3515 closed.

Michel

