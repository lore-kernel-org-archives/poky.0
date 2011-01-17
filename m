Return-Path: <aalonso00@gmail.com>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C3D14C811FE
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 14:23:48 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gwj15 with SMTP id 15so1914215gwj.35
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 12:23:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:sender:from:to:cc:subject:date:message-id
	:x-mailer:in-reply-to:references;
	bh=r/58Wnh8E3l6lL56LYZaI/dwLUmefkBkvKotbq2JpsU=;
	b=rJs0HNNrD3poBrDBSRoBY66JPA2tLux97D0zVHvL1o7aH8SsGa4C1ZGCYwUj+Hv1/S
	lISrk07zUG7pBKR8LxaaUZRcyc2fcxdHHUBHCT3kpwnOMydXyB/VByWOwQHlpmT/uLpT
	vhQZxBE1kaxcqiAmpe3RFRMu4fhHey8LCmen8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references;
	b=rzeaHyF3ED6UCDD+WSp+XIUtNy7Qa/sxSutJMGaLDBhKR/BlxkUlBj3Ya9kfcq9mC3
	i4UW44y4IcoITY23k7JtyyXeyjoDc4z0UCLmbav2oPUYtpsuEUK0iTS0KrJCKLT1yrMY
	14biDE9t0/ecVoVqvVRpT4P7nk3mZV4CNzk1Q=
Received: by 10.100.209.15 with SMTP id h15mr2842350ang.2.1295295827845;
	Mon, 17 Jan 2011 12:23:47 -0800 (PST)
Received: from localhost.localdomain ([201.153.229.4])
	by mx.google.com with ESMTPS id c30sm5898586anc.0.2011.01.17.12.23.45
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 12:23:47 -0800 (PST)
Sender: Adrian Alonso <aalonso00@gmail.com>
From: Adrian Alonso <aalonso@secretlab.ca>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 17 Jan 2011 14:29:21 -0600
Message-Id: <1295296178-18590-8-git-send-email-aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
References: <1295296178-18590-1-git-send-email-aalonso@secretlab.ca>
Cc: Adrian Alonso <aalonso@secretlab.ca>
Subject: [PATCH 08/25] xilinx-boot: add ml405 in default target configuration
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
X-List-Received-Date: Mon, 17 Jan 2011 20:23:48 -0000

* Add ml405 target board configuration support
* Only tested in ml405, ml507 target boards

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 classes/xilinx-boot.bbclass |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/classes/xilinx-boot.bbclass b/classes/xilinx-boot.bbclass
index 03b4512..524ae01 100644
--- a/classes/xilinx-boot.bbclass
+++ b/classes/xilinx-boot.bbclass
@@ -24,10 +24,12 @@ def uboot_machine(a, d):
     if re.match('powerpc', a):
         if board == 'ml507':
             return 'ml507_config'
+        elif board == 'ml405':
+            return 'ml405_config'
         else:
             return 'xilinx-ppc' + target + '-generic_config'
     else:
-        return 'microblaze-generic_config'
+        return target + '-generic_config'
 
 def uboot_target(a, d):
     import re
@@ -37,6 +39,8 @@ def uboot_target(a, d):
     if re.match('powerpc', a):
         if board == 'ml507':
             return 'ml507'
+        elif board == 'ml405':
+            return 'ml405'
         else:
             return 'ppc' + target
     else:
-- 
1.7.3.4


