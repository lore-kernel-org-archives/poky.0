Return-Path: <michel.thebeau@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D261DE014BD
	for <poky@yoctoproject.org>; Mon, 29 Apr 2013 06:54:22 -0700 (PDT)
Received: from yow-mthebeau-lx2.wrs.com (yow-mthebeau-lx2.wrs.com
	[128.224.146.159])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3TDsJTV029948;
	Mon, 29 Apr 2013 06:54:20 -0700 (PDT)
From: michel.thebeau@windriver.com
To: richard.purdie@linuxfoundation.org, poky@yoctoproject.org
Date: Mon, 29 Apr 2013 09:54:16 -0400
Message-Id: <1367243657-9424-1-git-send-email-michel.thebeau@windriver.com>
X-Mailer: git-send-email 1.7.9.7
Subject: [PATCH 0/1] [v2] routerstationpro: kernel 3.8: routerstationpro: use KERNEL_IMAGE_MAXSIZE to test the image
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
X-List-Received-Date: Mon, 29 Apr 2013 13:54:23 -0000

Hi Richard,

Here is a revised patch for do_sizecheck of routerstationpro on kernel 3.8.

M

