Return-Path: <srifenbark@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 821F74C80AB0
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:32:56 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gya6 with SMTP id 6so148768gya.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=koSF+Y+sAWkY5m/WeVnYTOzKRSrxJ3ZbahFVfsZrHF4=;
	b=u6eD1GppTRGjJlMsibXPC9WfEhOfRiF02lkzOi9lWizItXyGgSFohpv21aOT70cDq1
	hUeqyGJzgbDCWK+DgpBzVsYw0iuCiVpkyz5rYZ2bf1rgnxGoIX0pAi0m+pCm9lt8yFU1
	8ihB8MQ53nkZ4wsiBznLD/6yDbeV4ygAMzdYM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=kkDKTf0WK/P1eYNRgCIXreeYP0vM4/qCC33izUo9M80bnz8CmqPJ3nz46yOTgKMM40
	uQLcUEkr0kiSD9hprJm/bg1eX75E64iXdOO7odBRhQs2NVvxAYxzRsIhYaDCrF0MReoL
	k8N4KA2wYBDv4oSuPhsACG4UBdP3P4CqbTyXk=
Received: by 10.150.206.17 with SMTP id d17mr525981ybg.213.1302010371256;
	Tue, 05 Apr 2011 06:32:51 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id w6sm6521403anf.32.2011.04.05.06.32.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:32:50 -0700 (PDT)
Message-Id: <b8752c6b1cc467832f5da52b2546f4ccf977e2d7.1302009987.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 10:47:40 -0500
Date: Tue, 05 Apr 2011 06:32:50 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 03/16] documentation/poky-ref-manual/development.xml: Corrected command syntax
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
X-List-Received-Date: Tue, 05 Apr 2011 13:33:01 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

In section 5.2.2. (Building the Cross-GDB Package) there was a resulting
directory listed where you could find the binary.  The directory had
a couple of variables for 'host-arch' and 'target-abi'.  There was
a mis-guided angle bracket wrapping the 'host-arch' variable.  This
was fixed.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/development.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/development.xml b/documentation/poky-ref-manual/development.xml
index e63511b..5479854 100644
--- a/documentation/poky-ref-manual/development.xml
+++ b/documentation/poky-ref-manual/development.xml
@@ -719,7 +719,7 @@
                 </literallayout>
                 Once the binary is built you can find it here: 
                 <programlisting>
-tmp/sysroots/&lt;host-arch&lt;/usr/bin/&lt;target-abi&gt;-gdb 
+tmp/sysroots/&lt;host-arch&gt;/usr/bin/&lt;target-abi&gt;-gdb 
                 </programlisting>
             </para>
 
-- 
1.7.0.4


