Return-Path: <michel.thebeau@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80665E01498
	for <poky@yoctoproject.org>; Mon, 22 Apr 2013 14:20:38 -0700 (PDT)
Received: from yow-mthebeau-lx2.wrs.com (yow-mthebeau-lx2.wrs.com
	[128.224.146.159])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3MLKIJR012341;
	Mon, 22 Apr 2013 14:20:19 -0700 (PDT)
From: michel.thebeau@windriver.com
To: poky@yoctoproject.org, richard.purdie@linuxfoundation.org
Date: Mon, 22 Apr 2013 17:20:14 -0400
Message-Id: <1366665616-24832-1-git-send-email-michel.thebeau@windriver.com>
X-Mailer: git-send-email 1.7.9.7
Cc: dvhart@linux.intel.com
Subject: [PATCH 0/1] routerstationpro: move board off 3.4 and onto the 3.8 kernel
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
X-List-Received-Date: Mon, 22 Apr 2013 21:20:38 -0000

Hi,

linux-yocto-3.8 kernel is updated for Routerstation Pro, so that the bsp
can moved to that kernel.

https://lists.yoctoproject.org/pipermail/linux-yocto/2013-April/000546.html

"Feel free to update the preferred version of the board in
meta-yocto-bsp." -Bruce

Hope I have the necessary changes here.  I'm cc'ing the people who were
addressed in the previous uprev for rsp.  Apologies if that's too much.

---

I also noticed that the fix for 3514 needs to carry forward.  Sending
along a patch for that as well.  It probably won't happen again since
people tend to use the previous file version as template.

M

