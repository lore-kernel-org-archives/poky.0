Return-Path: <srifenbark@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6F7624C80B73
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 13:21:29 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by mail-yx0-f176.google.com with SMTP id 5so346633yxd.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 11:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=y6HACsNHSRF9kAvqcR4FhofKijJh8D4QGTGPeyU6+iw=;
	b=AzfwuTxRLqMnAgpi2/uy3NqmweOdOZjeOkj3T4fzRvZX6ctcm/UZa6TrObbU4MdmjE
	DHh5nrPDwpJz9qvS4BsCPuAt9dLU0zsP3RgHlvE5qyWPUkUsKed/AV8HcUWFRZpZoFuK
	HsNrpKTN/SjoZxPmXcb4Rt5F5N39TvDtM1KW4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=fZ25wXwJSW9hl7kWmcPyhX5HRurkJE8EJp5qS0b0/4M4Wl6b+Fn/zyknpBFfBF1Q0s
	jBn6PebmB9o/JmLX5kMiG5+Lgki7pxoeuYYI7DBjCVb2NoGDLp4R40ANdVik9Mqt+TDY
	Bt6lfzGTeCfXiGMWH9IePlTKc7ZPhB/LqIGGk=
Received: by 10.236.183.5 with SMTP id p5mr9870yhm.16.1302027689288;
	Tue, 05 Apr 2011 11:21:29 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id h77sm2956906yhm.0.2011.04.05.11.21.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 05 Apr 2011 11:21:27 -0700 (PDT)
Message-Id: <d35f00f69cb054c792911808b30bdb6ddbabda7a.1302027384.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1302027384.git.scott.m.rifenbark@intel.com>
References: <cover.1302027384.git.scott.m.rifenbark@intel.com>
Old-Date: Tue, 5 Apr 2011 13:12:11 -0500
Date: Tue, 05 Apr 2011 13:21:25 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 15/15] documentation/kernel-manual/Makefile: Updated Makefile so PDF is in tarball
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
X-List-Received-Date: Tue, 05 Apr 2011 18:21:29 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/kernel-manual/Makefile |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/kernel-manual/Makefile b/documentation/kernel-manual/Makefile
index dcfcb92..a2eaced 100644
--- a/documentation/kernel-manual/Makefile
+++ b/documentation/kernel-manual/Makefile
@@ -27,7 +27,7 @@ html:
 	xsltproc $(XSLTOPTS) -o kernel-manual.html yocto-project-kernel-manual-customization.xsl kernel-manual.xml
 
 tarball: html
-	tar -cvzf kernel-manual.tgz kernel-manual.html style.css figures/kernel-title.png figures/kernel-big-picture.png figures/kernel-architecture-overview.png
+	tar -cvzf kernel-manual.tgz kernel-manual.html kernel-manual.pdf style.css figures/kernel-title.png figures/kernel-big-picture.png figures/kernel-architecture-overview.png
 
 validate:
 	xmllint --postvalid --xinclude --noout kernel-manual.xml
-- 
1.7.0.4


