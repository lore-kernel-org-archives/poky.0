Return-Path: <aalonso00@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2EB344C8121B
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:24:25 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gx0-f176.google.com with SMTP id 4so2387299gxk.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=fJZhAvwZNOzMIBCmamne+VCp04iOkJl2DjwaXiQGkFY=;
	b=lkpzky5RjcPX2fznI9YYa+i3GTg7qUJcZ6oSP+Q6mM42uky/BLRniJBnSn7kDG3YlH
	RNX06sfS+PlOQ/Cq6cH5/XHzM4cemh80slgjj40Bn9yq+5UJ+3h8MKf3sLCm3OEmngt0
	FBXGLtmEeYlNd0SAF7QDlG9esSZUr+7uHnjGY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=l9mBTerr51vVs203FL6s5vaEiitelvqCxIEoRWTaajqfUhjLP4QrW5WP1NiWrjJIox
	hr2gT7VwoqJ+cgSg01EZ2iNqzwMWJiU5h2mXbL6rU5Ni2o3IEo7JB1ypCD5tDI0AnDlF
	m7Ogz805szZHJP7Nzl5ClC/nQjTLCPRW8AJ0k=
Received: by 10.91.51.22 with SMTP id d22mr4992928agk.175.1295295865066;
	Mon, 17 Jan 2011 12:24:25 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.24.22
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:24:24 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:35 -0600
Message-Id: <1295296178-18590-22-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 22/25] virtex5: update default serial console
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
X-List-Received-Date: Mon, 17 Jan 2011 20:24:25 -0000

* Update default serial console for Virtex5 target board
* From Xilinx Platform Studio (XPS) the default serial module
  included is uartlite that maps to ttyUL0 dev node

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 conf/machine/virtex5.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/conf/machine/virtex5.conf b/conf/machine/virtex5.conf
index a778a77..232ab6a 100644
--- a/conf/machine/virtex5.conf
+++ b/conf/machine/virtex5.conf
@@ -29,7 +29,7 @@ UBOOT_LOADADDRESS ?= "0x00000000"
 
 # Don't use tty1
 # USE_VT = "0"
-SERIAL_CONSOLE = "9600 ttyS0"
+SERIAL_CONSOLE ?= "9600 ttyUL0"
 
 # Device nodes add xsa for (system ace)
 IMAGE_DEVICE_TABLES = "files/device_table-minimal.txt \
-- 
1.7.3.4


