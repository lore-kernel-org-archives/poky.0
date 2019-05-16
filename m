Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 810CCE00D59; Thu, 16 May 2019 00:57:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 364 seconds by postgrey-1.32 at yocto-www;
	Thu, 16 May 2019 00:57:12 PDT
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C83B0E00754
	for <poky@yoctoproject.org>; Thu, 16 May 2019 00:57:12 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 454Ns73tXxz8m
	for <poky@yoctoproject.org>; Thu, 16 May 2019 09:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1557993067;
	bh=92TeaoTcD7/IHuHVjNB7SSDDnUqBBY0ss735sqcUt6o=;
	h=From:To:Subject:Date:From;
	b=AJCzHjsQPKeiHOAvsCeyKkodnzJsyjntGyyLdT/BKgLw7uzpK0A5/mzuQfLM4w116
	dM2uWrYfNNpkpRvf9Cb2hUpchs1svFQoatiiHGnIXgMri5IbZAbyykz+L0sX5CSABS
	t6rJPrmML6+2LvMNlhknzXpmOk3HhdmmL5UiUOKaumwiRItui74YZoTquq7Vp9OcrE
	6P3m01fqmw0OGZrm3nJhRFAzjXdJMfEkeOO7GoyBajyu8F1HrEc37IGuupnooPp3TW
	BiiMUas8RSr+0A507HbIivdoth0JRuw6qHXFZiBiI5M3EZbgxIxk+DL1RdHdmuQxaY
	CAwoqNbwPbWFZVjP0TKZWsj1ExJt5N/JgfHDjJAfSH3TKI7m7I1oXZUAN8Rtbr6hbw
	oA48XyZF3JOBJznGFy6TInVc0APw7HhnLfVSNT8QKtxbNnKcRRTs0lANIraCwQvY2E
	kc8AYkHaaFFqzfaQ0mAJiz/i3m5+eeNewUIwY9m4GQ/CnngjgLP4l4EgT4ce/QI7VE
	u0MPpEFw45L3HCKzQvcoOuiT5K5i/SimI20JKnHWnsY42tZ+3ilE9HjoqTVq7VEaRl
	fUSwAzg1RBYcsTtBbezIErxrjXCeF4Jc1UX5ii+dQPcJ2YSSPU+nXm6qg5T5tgWKPd
	sPw1ai1lPfSaUNi1sz7xHIHQ=
From: Adrian Bunk <bunk@stusta.de>
To: poky@yoctoproject.org
Date: Thu, 16 May 2019 10:51:06 +0300
Message-Id: <20190516075106.3436-1-bunk@stusta.de>
X-Mailer: git-send-email 2.17.1
Subject: [meta-poky][PATCH] poky-tiny.conf: Remove the removed irda feature from a comment
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
X-List-Received-Date: Thu, 16 May 2019 07:57:13 -0000

Signed-off-by: Adrian Bunk <bunk@stusta.de>
---
 meta-poky/conf/distro/poky-tiny.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index a82d043e48..1f8b6e8ff3 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -60,7 +60,7 @@ USE_NLS="no"
 
 # Comment out any of the lines below to disable them in the build
 # DISTRO_FEATURES options:
-# alsa bluetooth ext2 irda pcmcia usbgadget usbhost wifi nfs zeroconf pci
+# alsa bluetooth ext2 pcmcia usbgadget usbhost wifi nfs zeroconf pci
 DISTRO_FEATURES_TINY = "pci"
 DISTRO_FEATURES_NET = "ipv4 ipv6"
 DISTRO_FEATURES_USB = "usbhost"
-- 
2.17.1


