Return-Path: <srifenbark@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 73FA24C80B7B
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:23:28 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yw0-f48.google.com with SMTP id 32so350153ywo.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=MjuCzWbGhttUiQ9f3f0H0inbm+VB+f1gZZcOSwm+LZ4=;
	b=Yl/slU0dVideqerdhaBHWVZOfHaQ4MLuVOj0AKsyXG6TroN4W0Tk+tGUdW/kYoG4BH
	IGkKlJxhU9rFwoGgqIwdyhHD3j/1B2qfzMwOEBV1FhPtavZVCo6Wq8B9MvsyL00Y8fHO
	L+UV4PqoRbeKA/F306bleVVWWA02OxSDsO7wk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=Z8te4n+wohi/EvX6jm9A61srCfDl9nKqxstH4gbPkWSzEEgLbJBO8nw++rCpuL0bEW
	qsb5aN1sgJ+bLxwcXO98Re04vBwYFxO2VsgbnUxgb5aG5I8UFN4vAXZHIG6qlTURhJjq
	PQtOoqd69mFLO/uFcfK/OpjMqyMGW3w+XMLRc=
Received: by 10.146.229.4 with SMTP id b4mr27429yah.1.1302027807908;
	Tue, 05 Apr 2011 11:23:27 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id b28sm6768985anb.22.2011.04.05.11.23.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:23:27 -0700 (PDT)
Message-Id: <6f62913ba8d8e2e2df7156eaf070b5e533336089.1302026025.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302026025.git.scott.m.rifenbark@intel.com>
References: <cover.1302026025.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 5 Apr 2011 12:52:32 -0500
Date: Tue, 05 Apr 2011 13:23:25 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 2/2] documentation/adt-manual/Makefile: Added PDF file to the tarball
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
X-List-Received-Date: Tue, 05 Apr 2011 18:23:28 -0000

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


