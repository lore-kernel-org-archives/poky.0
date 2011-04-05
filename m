Return-Path: <srifenbark@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2514A4C80AB8
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:33:08 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gy0-f176.google.com with SMTP id 6so148820gya.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=5FOqA63KMDLHeTHPUaGe8IjEUdSVNVESaegsRQRAuwQ=;
	b=CFsIFuMAEMjMBj0EM6rpR/XaccfrprEIV0XENfV0xil4vIUNsigyUuk5u98Hwc9isp
	iPibObuZ5J6XXskFytfH9wZwMlPqIzcSWNrYy7UyQxk07kldKZxSdrU1LeWleLusbNSZ
	zN37UHL5XTv+zxCbZWsgqu7yGvbOfeqI3Vfu4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=F2Z1/1PNenYTbYeLcjJJ61qHy0enIBsz0uxtPs0f9T+w16C2bF78gNCe5Ci/PTBE/T
	mxRGN/6W6176ayviYLowkO1YjNE9Iqfz8dQ82lx1+PKHFyrofn1p0Je7YYda85zBto9p
	sMOYiC1fYJCA33aZCKpA27Tn2cIvTcT5vCNRw=
Received: by 10.150.47.6 with SMTP id u6mr608358ybu.31.1302010388009;
	Tue, 05 Apr 2011 06:33:08 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id g63sm2834795yhd.15.2011.04.05.06.33.05
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:33:06 -0700 (PDT)
Message-Id: <afdbd4f1af1182dcde8760e4c1fbcf5265115f98.1302009987.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 14:46:30 -0500
Date: Tue, 05 Apr 2011 06:33:06 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 07/16] documentation/poky-ref-manual/ref-bitbake.xml: Grammar fix
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
X-List-Received-Date: Tue, 05 Apr 2011 13:33:08 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Section B.2 (Preferences and Providers) had a grammar error.
It said "An common example is..."  I fixed it.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-bitbake.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-bitbake.xml b/documentation/poky-ref-manual/ref-bitbake.xml
index 8076066..8848190 100644
--- a/documentation/poky-ref-manual/ref-bitbake.xml
+++ b/documentation/poky-ref-manual/ref-bitbake.xml
@@ -125,7 +125,7 @@
 
         <para>
             Sometimes a target might have multiple providers.
-            An common example is "virtual/kernel", which is provided by each kernel package. 
+            A common example is "virtual/kernel", which is provided by each kernel package. 
             Each machine often elects the best kernel provider by using a line similar to the 
             following in the machine configuration file:
         </para>
-- 
1.7.0.4


