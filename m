Return-Path: <srifenbark@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 461574C804D9
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 13:31:35 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk7 with SMTP id 7so1420796gxk.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 11:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=G+icUWfwWcoi/e5HxV537bNL7Skn/5/CegqTnDJfGEg=;
	b=cpycNTWSWR1oZ8+unEPALQPmiPS9+XSS29BczvsYk4bYvLxXENArkQXD9UHgBxc4VS
	Keq5cnFew9iAj/KWNnUKhCjAwQW9ucHCprF3HsuK5j3hLzIdPby+Iue8nY0srQVcBJlI
	WJhKGQXuIJYSrGRIp29kjJ/oewGsWrX1NYzd4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=p7rYZ9hN6J5t3u/0HU8VVeYjq0kA65j48lo9azmYCPOGBbxhUOYWFs8x+etuYRINDG
	QH8oseCqwKgQRQHN02n6re1wm2uNwuXZbhvH7c7pJkxKRslfcTt3FFbliJMOmGnlvCqF
	5QgTqs/nf8lO+2c/H7FfIMCpFprIa0dWQI3oI=
Received: by 10.100.19.8 with SMTP id 8mr2209196ans.88.1301596294872;
	Thu, 31 Mar 2011 11:31:34 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id c17sm1436635anc.15.2011.03.31.11.31.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 11:31:34 -0700 (PDT)
Message-Id: <28912317ee45c2664004b8e1ffc6f4bc97d146f4.1301596085.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301596085.git.scott.m.rifenbark@intel.com>
References: <cover.1301596085.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 13:15:11 -0500
Date: Thu, 31 Mar 2011 13:31:30 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 3/8] documentation/yocto-project-qs/Makefile: Updated to create a PDF
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
X-List-Received-Date: Thu, 31 Mar 2011 18:31:35 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Release 1.0 all of a sudden saw the need for a PDF version of the
Quick Start.  Prior to this I was just generating an HTML version of
this manual to keep the front matter minimal and clean.  Now, however,
the QS has joined the ranks of the other Yocto Project docs.

Several changes were made inside this makefile to accomplish the
goal:  introduction of a title PNG file, a high-level file to contain
the title page information (ypqs.xml), and some changes to the
tarball line and output line.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/yocto-project-qs/Makefile |   25 ++++++++++++++-----------
 1 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/documentation/yocto-project-qs/Makefile b/documentation/yocto-project-qs/Makefile
index 9f45058..1dff91c 100644
--- a/documentation/yocto-project-qs/Makefile
+++ b/documentation/yocto-project-qs/Makefile
@@ -1,28 +1,31 @@
 XSLTOPTS = --stringparam html.stylesheet style.css \
-         --xinclude
+           --stringparam  chapter.autolabel 1 \
+           --stringparam  section.autolabel 1 \
+           --stringparam  section.label.includes.component.label 1 \
+	   --xinclude
 
+##
+# These URI should be rewritten by your distribution's xml catalog to
+# match your localy installed XSL stylesheets.
 XSL_BASE_URI  = http://docbook.sourceforge.net/release/xsl/current
 XSL_XHTML_URI = $(XSL_BASE_URI)/xhtml/docbook.xsl
 
-all: html tarball
+all: html pdf tarball
 
-##
-# These URI should be rewritten by your distribution's xml catalog to
-# match your localy installed XSL stylesheets.
+pdf:
+	../tools/poky-docbook-to-pdf ypqs.xml ../template
 
 html:
 #       See http://www.sagehill.net/docbookxsl/HtmlOutput.html 
-
-#	xsltproc $(XSLTOPTS) -o yocto-project-qs.html $(XSL_XHTML_URI) yocto-project-qs.xml
-	xsltproc $(XSLTOPTS) -o yocto-project-qs.html yocto-project-qs-customization.xsl yocto-project-qs.xml
+	xsltproc $(XSLTOPTS) -o yocto-project-qs.html yocto-project-qs-customization.xsl ypqs.xml
 
 tarball: html
-	tar -cvzf yocto-project-qs.tgz yocto-project-qs.html style.css figures/yocto-environment.png figures/building-an-image.png figures/using-a-pre-built-image.png figures/yocto-project-transp.png
+	tar -cvzf yocto-project-qs.tgz yocto-project-qs.html ypqs.pdf style.css figures/yocto-environment.png figures/building-an-image.png figures/using-a-pre-built-image.png figures/ypqs-title.png
 
 validate:
-	xmllint --postvalid --xinclude --noout yocto-project-qs.xml
+	xmllint --postvalid --xinclude --noout ypqs.xml
 
-OUTPUTS = yocto-project-qs.tgz yocto-project-qs.html
+OUTPUTS = yocto-project-qs.tgz yocto-project-qs.html ypqs.pdf
 SOURCES = *.png *.xml *.css
 
 publish:
-- 
1.7.0.4


