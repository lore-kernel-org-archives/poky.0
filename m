Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id DFCF44C80ABD
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 08:33:10 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yi0-f48.google.com with SMTP id 28so149126yia.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 06:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=43EecfDGimN30UrnrmIljX3gtXY1KKPj4k3Od0EBRS8=;
	b=CRi7S+YuGZiInxekL+LWGiLr+g7FZBiKUjiR9+W9vt9S7hC88m2OV46WTBX1MB/dBv
	wBD4JZIaJ9sXfr2wrr2lb+tBc5zAalyx22D7N2k4Yn6poGsIPOwBzid5UUDg4DRrSE5v
	9kNBhpOKOF+5i6APJrX8l5hoyGZuo3JxiCO+k=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=J29tX44WGYRzOghEzMTVEzSkWT2YmDsSn/xziDad/vzL8FNkOP1lGzwGtqPzCPhZ6C
	jafEaCnnY0B/piSHn5+ML/n7utRGZLZ6tWXVoJLVUcHTxDx92BnhnDQ9g6v1nt/eUjuJ
	R1aMVMTzRExhnbV3C7SfxuAlb6BxKBFxqM+bU=
Received: by 10.150.239.4 with SMTP id m4mr556577ybh.402.1302010390779;
	Tue, 05 Apr 2011 06:33:10 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id v15sm2685695ybk.21.2011.04.05.06.33.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 06:33:10 -0700 (PDT)
Message-Id: <f1ea60696e361975b75e09a5cca6dfd80bc2cf4d.1302009987.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Old-Date: Mon, 4 Apr 2011 14:52:55 -0500
Date: Tue, 05 Apr 2011 06:33:10 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 08/16] documentation/poky-ref-manual/ref-bitbake.xml: type fixed
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
X-List-Received-Date: Tue, 05 Apr 2011 13:33:11 -0000

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


