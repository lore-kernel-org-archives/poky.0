Return-Path: <aalonso00@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 909764C811F8
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:23:45 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxm8 with SMTP id 8so2387231yxm.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=XHBFPyUxrdmjepzzMkW7lQaHERNZWpSgezZpma1fX9c=;
	b=PA1ANc2+vocLUUEacm1j9aX5/2y/78YsfUXb2LNU3CsA/XhJoblL/YkIvCrv6yuOrr
	PVtIQlW66+gDtawGa6RBGlV+tVQG6ikKcv5uwSBg6fTPWLOWAECYAIsM71q+7nrMFyJ2
	5ecw1ZFifcI6wTQiIZkD4MVW8QVTLHPNgeIJE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=p4d425NJjOQG5W3vwAhK4Fbzkp2feQip2CeUdk0lWO/0pUa0Eh44cjuZrXfhOIPWqM
	pNqBXUlbZfWYfrva4dqewU/teKg9D9qr+LSg1ofDHhl9osxipgvhy7LpueeMDKMrhTOq
	EOcPK4AjdadXLLrY5gpgPGNb4M/BcqKIUiPyU=
Received: by 10.101.151.31 with SMTP id d31mr2814214ano.88.1295295825237;
	Mon, 17 Jan 2011 12:23:45 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.23.42
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:23:44 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:20 -0600
Message-Id: <1295296178-18590-7-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 07/25] virtex5: fix machine name in u-boot preferred version
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
X-List-Received-Date: Mon, 17 Jan 2011 20:23:45 -0000

* Fix machine name in preferred version for u-boot,
  u-boot recipe was not been built for incorren machine name
  resolution

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 conf/machine/virtex5.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/conf/machine/virtex5.conf b/conf/machine/virtex5.conf
index 3b4930e..a778a77 100644
--- a/conf/machine/virtex5.conf
+++ b/conf/machine/virtex5.conf
@@ -12,7 +12,7 @@ require conf/machine/include/tune-ppc440.inc
 
 #ASSUME_PROVIDED += "virtual/kernel"
 PREFERRED_PROVIDER_virtual/kernel = "linux-xilinx"
-PREFERRED_VERSION_u-boot_xilinx-virtex5 = "u-boot-xilinx"
+PREFERRED_VERSION_u-boot_virtex5 = "u-boot-xilinx"
 
 KERNEL_IMAGETYPE = "uImage"
 
-- 
1.7.3.4


