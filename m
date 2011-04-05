Return-Path: <srifenbark@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C3F24C80AB1
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:21:04 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gya6 with SMTP id 6so347088gya.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=43EecfDGimN30UrnrmIljX3gtXY1KKPj4k3Od0EBRS8=;
	b=NIHqvMikDLfOiBz+TNxNW04V7i8pvUrqhC+qPoh6xjcZo0gdu45aRK0jN5mxVllHJ7
	tRxlDy8EFY+2pIR+27V4WMcckW52UIS+y8dxnwMatIBCkswPvVNBtU+fIH3alKJzauFK
	aXtlLZK/EzBAhuDu4TK53frGSu2Jm9itSM+Ws=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=LXk57rDL4mJCBpG+Xl0D3S45mKX/HKExNYhyGKpwsRZFmrZwobYJRHPoLFV0nIzFZe
	OkHb9zxgunKF5uK1Dn2UxqtCgsnJ/ExF8T7G00VxRNg99zoUImzkGEphSLy8eJA7oFiR
	ktOXQGS//K4Elwkr8wJYahlFUWj2gN5c1Btno=
Received: by 10.236.176.8 with SMTP id a8mr3918933yhm.309.1302027663596;
	Tue, 05 Apr 2011 11:21:03 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id 44sm2957359yhl.53.2011.04.05.11.21.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:21:02 -0700 (PDT)
Message-Id: <fe24b641af0af8cbf72fa329fcb0e876ade9cbec.1302027384.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302027384.git.scott.m.rifenbark@intel.com>
References: <cover.1302027384.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 14:52:55 -0500
Date: Tue, 05 Apr 2011 13:21:00 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 06/15] documentation/poky-ref-manual/ref-bitbake.xml: type fixed
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
X-List-Received-Date: Tue, 05 Apr 2011 18:21:04 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Section B.4 (The Task List) had the typo "taksks".  Changed to
"tasks."

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-bitbake.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-bitbake.xml b/documentation/poky-ref-manual/ref-bitbake.xml
index 8848190..4bea1e4 100644
--- a/documentation/poky-ref-manual/ref-bitbake.xml
+++ b/documentation/poky-ref-manual/ref-bitbake.xml
@@ -195,7 +195,7 @@ PREFERRED_PROVIDER_virtual/kernel = "linux-rp"
             The build now starts with BitBake forking off threads up to the limit set in the 
             <glossterm><link linkend='var-BB_NUMBER_THREADS'>BB_NUMBER_THREADS</link></glossterm> variable.
             BitBake continues to fork threads as long as there are tasks ready to run,
-            those taksks have all their dependencies met, and the thread threshold has not been 
+            those tasks have all their dependencies met, and the thread threshold has not been 
             exceeded.
         </para>
 
-- 
1.7.0.4


