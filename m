Return-Path: <aalonso00@gmail.com>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8EB2E4C8120B
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:24:22 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gw0-f48.google.com with SMTP id 15so1914215gwj.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:24:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=b5siIFuq4/NvaEan2xjhvfOU/YAyctlotUHoE0EHZDE=;
	b=IWc9ye4gmNHHNvqSp/2qu4kf94RJqEbWaiE1V/p8AYOxN+WacqWa18tBtmKWWqOcwx
	+w//hOJ2iGzKGRzLBzZXh7odXrLLHs/VFRSR/H8ut7GodQsf7csPC43vWNVAerFOKov8
	B35g/Sb/FGzXlt/FK9bvInpRqk9zw4dGUr0QM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=Z0XAI0yu3lkfGHg3H7+wrRnj6mysnnMfBdZO8bzUbpfvHVMNa090xNjXXN2v9PYjiv
	a68xyQMy+B4sCBbDMaesOp4c4dleNl2Ir6xw7WADOulFmOJvn8KIypRAypEO47nyFIHk
	ZMprBRhZRCDIg++J9WQsbjCiKoX7GXMG+G4HI=
Received: by 10.90.248.28 with SMTP id v28mr4992938agh.168.1295295862460;
	Mon, 17 Jan 2011 12:24:22 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.24.20
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:24:21 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:34 -0600
Message-Id: <1295296178-18590-21-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 21/25] virtex4: update default serial console
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
X-List-Received-Date: Mon, 17 Jan 2011 20:24:22 -0000

* Update default serial console for Virtex4 target board
* From Xilinx Platform Studio (XPS) the default serial module
  included is uartlite that maps to ttyUL0 dev node

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 conf/machine/virtex4.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/conf/machine/virtex4.conf b/conf/machine/virtex4.conf
index e395d1f..f9643cb 100644
--- a/conf/machine/virtex4.conf
+++ b/conf/machine/virtex4.conf
@@ -29,7 +29,7 @@ UBOOT_LOADADDRESS ?= "0x00000000"
 
 # Don't use tty1
 USE_VT = "0"
-SERIAL_CONSOLE = "9600 ttyS0"
+SERIAL_CONSOLE ?= "9600 ttyUL0"
 
 # Device nodes add xsa for (system ace)
 IMAGE_DEVICE_TABLES = "files/device_table-minimal.txt \
-- 
1.7.3.4


