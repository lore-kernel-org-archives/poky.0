Return-Path: <srifenbark@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 998864C8088E
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 13:31:30 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gya6 with SMTP id 6so1426948gya.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 11:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=PGRofA4V3DF9UyI9ZVJhLKLrWADVv/nF/Arct6uVZxA=;
	b=eQPrWeMWyNNfWPNgtujUhSwD1MTvSokq14eYK09dl9vjsLlPbSKXGZHb97RiGRGO6b
	TKBOyjqt9eOLe8Gj4odJ2ZHNaXnkjnWT6Dk4QFRjR11Iqp7hp9CmCbqWYKj0H+IbRiDu
	dD0ZIVIDGwKPmAQejkpFY2No2vXwUa1k+o5D8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=HSsYnlENEjlDjI6p9Q40V7Wd87eV3fSGpT/7n0HqfjgRtAG86Kbkq5hsuSjsVPj9wd
	327PxwZiSzIo2qXZQE4fWbksYPE8qHYLf6wbWF/HvCF5ICZhPbJKRfRbsfetyGErWHzx
	2Q/aBIUSfLzdeeE0m+zabMpqyr5YvUFWhpQSk=
Received: by 10.236.63.231 with SMTP id a67mr1751709yhd.98.1301596290128;
	Thu, 31 Mar 2011 11:31:30 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id x41sm692862yhc.95.2011.03.31.11.31.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 11:31:29 -0700 (PDT)
Message-Id: <b20d99ad387496002df71d89d3ec28a8b6afe9e7.1301596085.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301596085.git.scott.m.rifenbark@intel.com>
References: <cover.1301596085.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 29 Mar 2011 20:59:55 -0500
Date: Thu, 31 Mar 2011 13:31:25 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/8] documentation/yocto-project-qs/yocto-project-qs.xml: cleaned out another "YP"
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
X-List-Received-Date: Thu, 31 Mar 2011 18:31:30 -0000

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


