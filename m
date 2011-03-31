Return-Path: <srifenbark@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E74E44C804D9
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 16:17:26 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxd5 with SMTP id 5so1513599yxd.35
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 14:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=Re2KYCy7UC0T4Q9olIneKUG9D0j/vxNSyPTeQXiWxlo=;
	b=uk5wLUgyOdcQtjpaqRtSYkNIVpW3AHkafxOtKTE/OJjmWZEmjyMwlSuHA6bMe4hhtJ
	rz6qsb3u9chxnZwqhlSrVRKvdS05BmnaPfN7Yf7c7f1cYhBOvCN2a4xyBwI7FkPb5SCX
	/HWm1G2DnBzW3NvA0cg6PD5cB6eRkEWK4wupI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=vZ/OzTupdWK/tjJSZg2CimZzy8NGZFYEMck+8msS3wtpzHI75Vmy6l73QxOmerU0QJ
	QrPFdjQ3eCBBcLVxpM4PF9GQ/by3lxRRKy7lboMnzGWfzh3eeKg/Abv1nIxUD5O/kWiz
	MbkfSRhIr8LguKf2HBQbJjhvhKMRJcs9KJyhI=
Received: by 10.236.183.51 with SMTP id p39mr4855470yhm.20.1301606246660;
	Thu, 31 Mar 2011 14:17:26 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id u65sm763052yhn.92.2011.03.31.14.17.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 31 Mar 2011 14:17:26 -0700 (PDT)
Message-Id: <1365e9984334ba6733fcb3441eadf55b9b6f9dd3.1301606132.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1301606132.git.scott.m.rifenbark@intel.com>
References: <cover.1301606132.git.scott.m.rifenbark@intel.com>
Old-Date: Thu, 31 Mar 2011 16:13:57 -0500
Date: Thu, 31 Mar 2011 16:17:21 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/1] documentation/yocto-project-qs/yocto-project-qs.xml: removed a "YP" acronym
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
X-List-Received-Date: Thu, 31 Mar 2011 21:17:27 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

Removed an occurance of the "YP" acronym.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 .../yocto-project-qs/yocto-project-qs.xml          |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index fb06322..cf45824 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -15,7 +15,8 @@
         Welcome to the Yocto Project!  
         The Yocto Project is an open-source collaboration project focused on embedded Linux
         developers.
-        Amongst other things, YP uses the Poky build tool to construct complete Linux images.
+        Amongst other things, the Yocto Project uses the Poky build tool to construct complete 
+        Linux images.
     </para>
     <para>
         This short document will give you some basic information about the environment as well 
-- 
1.7.0.4


