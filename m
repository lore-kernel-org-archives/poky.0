Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E61DE012F0
	for <poky@yoctoproject.org>; Sun,  7 Oct 2012 20:41:45 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id k11so9678721iea.35
	for <poky@yoctoproject.org>; Sun, 07 Oct 2012 20:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=DGfu/Bej3WOMhRlvvPI+Qa8Ju6gBry1yexGAHCBYB3k=;
	b=hBY5Vi71kVu8JqcZ2q5xjLtc4Me26v4r5wfuC+maLfndUQKAnDDaFpRoDa7r+5IaLC
	BtI6ayOkDp55q2wEeX7Ga74Gz4UrtSDTBckPQk5335ZD5LZpmnnVAnJEWZZBHgZvrB93
	ox56GSn5ZzHnRowB/kllinr4jnIQcm/xynA2I0e5E892HDjV+NrRpscFyFAaFZIqbIcz
	Gw40634nIaj4YjSGd7gQf/2p+mIlS9WBs3w349Hvn5gM0BsD4ysYKXEoNFjK9bpsfH1G
	CgIIvGg31qpJz0yWt4zhDjijzTLZgbcxJliy95IIm8Q3FFyvqaOEiPEZFAsJEK7NER41
	ZfYQ==
Received: by 10.43.48.129 with SMTP id uw1mr11731349icb.10.1349667702537;
	Sun, 07 Oct 2012 20:41:42 -0700 (PDT)
Received: from localhost.localdomain ([96.44.93.233])
	by mx.google.com with ESMTPS id 10sm6143359ign.5.2012.10.07.20.41.40
	(version=SSLv3 cipher=OTHER); Sun, 07 Oct 2012 20:41:41 -0700 (PDT)
Sender: Bruce Ashfield <bruce.ashfield@gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: richard.purdie@linuxfoundation.org
Date: Sun,  7 Oct 2012 23:41:30 -0400
Message-Id: <cover.1349666145.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.5.4
Cc: mark.asselstine@windriver.com, poky@yoctoproject.org
Subject: [PATCH 0/1] linux-yocto-bsps: bump reference BSPs to v3.4.11
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
X-List-Received-Date: Mon, 08 Oct 2012 03:41:45 -0000

Richard/Saul,

I'm out of the office until Wednesday, but wanted to send this
change before then. I'm attempting to relay this via gmail smtp,
so I hope the patches come through properly.

We were looking at YOCTO 3186 (which is a segfault when running
rpm commands), and Mark Asselstine bisected it to a regression
introduced in v3.4.10 which was subsequently fixed in 3.4.11.

Luckily I had already bumped the qemu BSPs to 3.4.11, so updating
the hardware reference boards to the already in tree version fixes
the regression.

(random note: -stable is up to 3.4.13, but there are no firm plans
to send those changes at this point).

Send any questions about this to my gmail account, since I won't
have access to my work email until Wednesday.

Cheers,

Bruce

cc: Mark Asselstine <mark.asselstine@windriver.com>

The following changes since commit eb8ac50d58575be3e04c4decc5b0e2d80381be9b:

  documentation: dev-manual - mentioned SRC_URI in the kernel example (2012-10-07 13:15:37 +0100)

are available in the git repository at:
  git://git.pokylinux.org/poky-contrib zedd/yocto-bsps
  http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/yocto-bsps

Bruce Ashfield (1):
  linux-yocto-bsps: update hardware reference BSPs to v3.4.11

 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    9 ++++-----
 1 files changed, 4 insertions(+), 5 deletions(-)

-- 
1.7.5.4


