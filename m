Return-Path: <srifenbark@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 29F074C80A71
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 07:44:21 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-gx0-f176.google.com with SMTP id 7so1519613gxk.35
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 05:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=gaot/rMw46eegQPbE+t0v7C2sdI3YgYeG/V38mqYBdo=;
	b=Xo5a+YkhT8u1/YjJ6dAckGctm2/WHbacNYaMhtaQBwav36Zs1SCAHxNyZwhQ/t4woD
	FVU/DaqSo/S+Yd36BIEMUXJHsx/hxZmZ5Q3vJrx/YHtrIXs+LSZAIs+UHmW+RnD/00Nt
	f5qRTmeB6Hfj6+6WJk4Va41g6HJpGjDvY381U=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=ZuiSx8JZt2zqHURogaOEMJotyNrPYUydC5UlPvrmG4koyoVUVI0eD0aiDCXRE5cD+F
	6HLWPmdvLMzoKPxezUSuXUDHGJo3HU464s5grl1bRITmr5WQYFiXVj0oOI0UDy5qCLkw
	WRqqmdoYf9tk0KaOIeKjLb2o+FSqUX70wGT1Y=
Received: by 10.101.200.11 with SMTP id c11mr1142824anq.127.1302871460836;
	Fri, 15 Apr 2011 05:44:20 -0700 (PDT)
Received: from localhost (h227.63.117.75.dynamic.ip.windstream.net
	[75.117.63.227])
	by mx.google.com with ESMTPS id c4sm2597911ana.49.2011.04.15.05.44.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 15 Apr 2011 05:44:20 -0700 (PDT)
Message-Id: <f192e386be4369d4c5f63859da8625ee8532ee2b.1302871028.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302871028.git.scott.m.rifenbark@intel.com>
References: <cover.1302871028.git.scott.m.rifenbark@intel.com>
Old-Date: Fri, 15 Apr 2011 07:32:40 -0500
Date: Fri, 15 Apr 2011 05:44:20 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 4/5] documentation/adt-manual/adt-prepare.xml: Fixed URL for nightly builds
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
X-List-Received-Date: Fri, 15 Apr 2011 12:44:21 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

There was a stray "0.9" in an URL for the Yocto source downloads.
I changed it to 1.0.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/adt-prepare.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/adt-manual/adt-prepare.xml b/documentation/adt-manual/adt-prepare.xml
index 1733141..f27f603 100644
--- a/documentation/adt-manual/adt-prepare.xml
+++ b/documentation/adt-manual/adt-prepare.xml
@@ -232,7 +232,7 @@
             architectures (x86, x86-64, mips, powerpc, and arm) that can be used 
             unaltered in the QEMU emulator.  
             These kernels and filesystem images reside in the Yocto Project release 
-            area - <ulink url='http://autobuilder.yoctoproject.org/downloads/yocto-0.9/'></ulink>
+            area - <ulink url='http://autobuilder.yoctoproject.org/downloads/yocto-1.0/'></ulink>
             and are ideal for experimentation within Yocto Project.
         </note>
     </para>
-- 
1.7.0.4


