Return-Path: <srifenbark@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 576FA4C800B6
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 21:03:23 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk7 with SMTP id 7so452125gxk.35
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 19:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=PGRofA4V3DF9UyI9ZVJhLKLrWADVv/nF/Arct6uVZxA=;
	b=N45Vg4+s7kDBT7oLY2IVJVjJ0UWtErTPizKFdNOemFv7vfvVGrLk8aFhSiHxdUEyw1
	utha2qmtuI2jScs2x0PbVnlGN/kWURI5i8Rx9m3OXM9kaU6JDUrUyvgMCVh9vC6bV6+6
	XtEghdLJreMgTyZPXDQT0ZJ2ZzsUJsOdBT2aM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=T/Q0OccIM+beVCk9UfiollEDdEmLPEqHoIsl1U9to0h9imgm77yR5zpPD8xZv7M3mK
	cxCI7lc86F1xQ5nCavsYeaOb4fYl5qSxqThBcJz1Bo9kyzAAaNBk1Ur69PCbNk1KYnEC
	arVDP1rMzOfDqQIBfxVLEyQQE3+sjCrdVmb4U=
Received: by 10.236.79.74 with SMTP id h50mr830876yhe.82.1301450597962;
	Tue, 29 Mar 2011 19:03:17 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id m25sm2791958yhm.31.2011.03.29.19.03.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 29 Mar 2011 19:03:17 -0700 (PDT)
Message-Id: <6992d21fdac5ff10747a4a34856809742a7bd434.1301450505.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301450505.git.scott.m.rifenbark@intel.com>
References: <cover.1301450505.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 29 Mar 2011 20:59:55 -0500
Date: Tue, 29 Mar 2011 21:03:16 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/1] documentation/yocto-project-qs/yocto-project-qs.xml: cleaned out another "YP"
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
X-List-Received-Date: Wed, 30 Mar 2011 02:03:23 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Removed "YP" from another spot in the manual.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index fb06322..2936fde 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -15,7 +15,8 @@
         Welcome to the Yocto Project!  
         The Yocto Project is an open-source collaboration project focused on embedded Linux
         developers.
-        Amongst other things, YP uses the Poky build tool to construct complete Linux images.
+        Amongst other things, the Yocto Project uses the Poky build tool to 
+        construct complete Linux images.
     </para>
     <para>
         This short document will give you some basic information about the environment as well 
-- 
1.7.0.4


