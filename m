Return-Path: <srifenbark@gmail.com>
Received: from mail-yi0-f48.google.com (mail-yi0-f48.google.com
	[209.85.218.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 446844C80A71
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 07:44:18 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yia28 with SMTP id 28so1520766yia.35
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 05:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=MjuCzWbGhttUiQ9f3f0H0inbm+VB+f1gZZcOSwm+LZ4=;
	b=w4bj8UbnBdvtSM1bWHoKdWVjVINO0hcKbVPqqZ72aoHK6O8DFgfQIiN2Jeg2mQuFGI
	4GB8LjTMIO30+cDxYelzJa+Nqu5R36OM4xnkRYQ3kWY+dB1WMxBOAp7CkWrzOvaBmOh1
	upass2lwwIrjVvevUNUErU5iUbzhipYdNhQzc=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=q77aDXTqJ+syDkCriCuI5mjhA37ODDEsxJMTZfubl1MIBcjwZiwo42MR/Favetrlr3
	gGFQW+hVSyNsvPqS8wxgpuV8KYoZFxW0yPwjO8Yb8XA412jDGZZ86ZbvfJJyy3hRV73m
	sNDfLxzHhFoEO4UOs0yKXjxRU1gHChcw5yhj0=
Received: by 10.236.137.131 with SMTP id y3mr691524yhi.503.1302871457926;
	Fri, 15 Apr 2011 05:44:17 -0700 (PDT)
Received: from localhost (h227.63.117.75.dynamic.ip.windstream.net
	[75.117.63.227])
	by mx.google.com with ESMTPS id 22sm1202499yhl.37.2011.04.15.05.44.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 15 Apr 2011 05:44:17 -0700 (PDT)
Message-Id: <6f62913ba8d8e2e2df7156eaf070b5e533336089.1302871028.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302871028.git.scott.m.rifenbark@intel.com>
References: <cover.1302871028.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 5 Apr 2011 12:52:32 -0500
Date: Fri, 15 Apr 2011 05:44:17 -0700 (PDT)
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 2/5] documentation/adt-manual/Makefile: Added PDF file to the tarball
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
X-List-Received-Date: Fri, 15 Apr 2011 12:44:18 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/adt-manual/Makefile |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/adt-manual/Makefile b/documentation/adt-manual/Makefile
index ec19bce..74e35bc 100644
--- a/documentation/adt-manual/Makefile
+++ b/documentation/adt-manual/Makefile
@@ -27,7 +27,7 @@ html:
 	xsltproc $(XSLTOPTS) -o adt-manual.html adt-manual-customization.xsl adt-manual.xml
 
 tarball: html
-	tar -cvzf adt-manual.tgz adt-manual.html style.css figures/adt-title.png figures/yocto-project-transp.png
+	tar -cvzf adt-manual.tgz adt-manual.html adt-manual.pdf style.css figures/adt-title.png figures/yocto-project-transp.png
 
 validate:
 	xmllint --postvalid --xinclude --noout adt-manual.xml
-- 
1.7.0.4


