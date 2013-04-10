Return-Path: <michel.thebeau@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63BFAE014C1
	for <poky@yoctoproject.org>; Wed, 10 Apr 2013 05:37:41 -0700 (PDT)
Received: from yow-mthebeau-lx2.wrs.com (yow-mthebeau-lx2.wrs.com
	[128.224.146.159])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3ACbZBg014714;
	Wed, 10 Apr 2013 05:37:35 -0700 (PDT)
From: michel.thebeau@windriver.com
To: richard.purdie@linuxfoundation.org, poky@yoctoproject.org
Date: Wed, 10 Apr 2013 08:37:32 -0400
Message-Id: <1365597453-16109-1-git-send-email-michel.thebeau@windriver.com>
X-Mailer: git-send-email 1.7.9.7
Subject: [PATCH 0/1] routerstationpro: strip the output kernel of .comment
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
X-List-Received-Date: Wed, 10 Apr 2013 12:37:41 -0000

Hi Richard,

This is the patch that reverts 9cd3816e4db97c8fd093a120a75a2b5d193afcdd,
and enables do_strip for routerstation pro.

[YOCTO 3515]
[YOCTO 4220]

M

