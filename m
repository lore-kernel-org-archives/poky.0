Return-Path: <srifenbark@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id BE79B4C802F2
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:36:40 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gya6 with SMTP id 6so356475gya.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=X/rfhAlmwWJgC+2hahgzlLGQApUCDrzAsH/D7FImD3E=;
	b=ohEgI36fZBBK/fsQ+t4wx8GBi7GSUwHFXz+wQeeYix9XSL41b+ttw+GcTE7lfC79oh
	yI4F1tEVFxTXXqFwTZGRwLzppJxpo6wEczHIzTOdFwh7V5M56S71h2v0Vz83EFHqTIU1
	30KUWSnoyMfLnOGj1Dlbcj+bobYn9GKcUBmbU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=D4V2F9J/ixLmpqXJDuxu9xiBb0UoeNUC/7fdjXXivXJunHq6W+DbctLXXc9+g8bmSj
	nS18UvGr8dgGEdLXCo8qIH3kTKNpOTVirQSlePwluVttd2bR4tAZ/gmeQjQRMbFVnexG
	nQ0j2f+Tn0is+lNWKOJSXTVHdB3QQ+OmbFRaE=
Received: by 10.150.72.33 with SMTP id u33mr907907yba.17.1302028600083;
	Tue, 05 Apr 2011 11:36:40 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id a12sm2966324yhk.27.2011.04.05.11.36.38
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:36:39 -0700 (PDT)
Message-Id: <9e2d58841dbde012d9e207f704e61c5a59b6a20c.1302028487.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302028487.git.scott.m.rifenbark@intel.com>
References: <cover.1302028487.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 5 Apr 2011 13:33:32 -0500
Date: Tue, 05 Apr 2011 13:36:37 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/1] documentation/yocto-project-qs/Makefile: Updated Makefile to include PDF in tar
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
X-List-Received-Date: Tue, 05 Apr 2011 18:36:40 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/yocto-project-qs/Makefile |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/yocto-project-qs/Makefile b/documentation/yocto-project-qs/Makefile
index 9f45058..a267edc 100644
--- a/documentation/yocto-project-qs/Makefile
+++ b/documentation/yocto-project-qs/Makefile
@@ -17,12 +17,12 @@ html:
 	xsltproc $(XSLTOPTS) -o yocto-project-qs.html yocto-project-qs-customization.xsl yocto-project-qs.xml
 
 tarball: html
-	tar -cvzf yocto-project-qs.tgz yocto-project-qs.html style.css figures/yocto-environment.png figures/building-an-image.png figures/using-a-pre-built-image.png figures/yocto-project-transp.png
+	tar -cvzf yocto-project-qs.tgz yocto-project-qs.html ypqs.pdf style.css figures/yocto-environment.png figures/building-an-image.png figures/using-a-pre-built-image.png figures/yocto-project-transp.png
 
 validate:
 	xmllint --postvalid --xinclude --noout yocto-project-qs.xml
 
-OUTPUTS = yocto-project-qs.tgz yocto-project-qs.html
+OUTPUTS = yocto-project-qs.tgz yocto-project-qs.html ypqs.pdf
 SOURCES = *.png *.xml *.css
 
 publish:
-- 
1.7.0.4


