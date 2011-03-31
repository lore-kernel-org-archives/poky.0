Return-Path: <srifenbark@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id D2E004C80889
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 13:45:24 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo32 with SMTP id 32so1428518ywo.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 11:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=um5z1u41/3JctuyU6tcK+gQaOxkslo1o7zO2zvBMvSc=;
	b=i64Sdx5arHxSICsWBzbEVyMqklYToKg8ONJ8kloW57Ypyf+z9T7sph/wKF35BrTTo0
	iofIJ/oNxqbv9NEcMuqZEJynF6FporS9kYM3EtyGBa13d6Jd8ptvMjdg/yWmFMs5C1uc
	foWzV+5cTkCFJKEAYJ2HSzmimd3VyepmK6sRk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=SocQMN9/33m34qwDMweXvSdYF4LPB1z84DT9zzJ6tjkvsb0XlMJ9+nUuzkt6RjcIMb
	r7VuiyNIB2sgNzaDjUnOp05L4gNaCBsMqw0qSLmDximAV3WYpjs9wCBWwOF0Z+hMiKQ/
	2qq2t5ID7Pu6SIc+r1aVPhAOuwKrhWF1DIpSU=
Received: by 10.101.20.1 with SMTP id x1mr2337908ani.69.1301597124586;
	Thu, 31 Mar 2011 11:45:24 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id c24sm1447269ana.21.2011.03.31.11.45.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 11:45:24 -0700 (PDT)
Message-Id: <1614c11f189b3f0c2de73291bd1fadde430dfb42.1301597020.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301597020.git.scott.m.rifenbark@intel.com>
References: <cover.1301597020.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 13:41:51 -0500
Date: Thu, 31 Mar 2011 13:45:20 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/1] documentation/bsp-guide/Makefile: Updated to include PDF in tarball
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
X-List-Received-Date: Thu, 31 Mar 2011 18:45:25 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

For some reason the PDF version of this manual was not being included
in the tarball created by the Makefile.  I fixed this.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/bsp-guide/Makefile |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/bsp-guide/Makefile b/documentation/bsp-guide/Makefile
index 93f2aab..fdb45ec 100644
--- a/documentation/bsp-guide/Makefile
+++ b/documentation/bsp-guide/Makefile
@@ -20,7 +20,7 @@ html:
 	xsltproc $(XSLTOPTS) -o bsp-guide.html bsp-guide-customization.xsl bsp-guide.xml
 
 tarball: html
-	tar -cvzf bsp-guide.tgz style.css bsp-guide.html figures/bsp-title.png
+	tar -cvzf bsp-guide.tgz style.css bsp-guide.html bsp-guide.pdf figures/bsp-title.png
 
 validate:
 	xmllint --postvalid --xinclude --noout bsp-guide.xml
-- 
1.7.0.4


