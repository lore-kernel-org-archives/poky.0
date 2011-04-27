Return-Path: <srifenbark@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7D3104C80570
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 11:57:36 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywk9 with SMTP id 9so960706ywk.35
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 09:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:in-reply-to:references:old-date
	:subject:date:to:cc:from;
	bh=TJXGxTgd32DKri0iA0i6r0eWWiNZxcCRKqeWcbUH0dM=;
	b=dSd8ZGFjJw2vtxF8dwAK5ou/FgV9wAv2z3H+nrll+/spJJIQtWgaOFEcDGtvSoBSWP
	QOQgcXuU5VPFGObYnFnoJaKIOtIa/K6bI1Dk9xVCm5hccoN5I9FuYaNSvMxG1RddJ7Pt
	w54WfvkYMWaBQL8wWlo+A+F4R4vSXwXdrkXxI=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:in-reply-to:references:old-date:subject:date:to:cc:from;
	b=QUeXRdFnhBwmPJFemzTLwlARYeH8z86GXy+hFRGaGsPD6pCVHz/cqMs2C3IPEn6Fb5
	Yf6r86I5Ceb/NVrU1tIAixEPLjmCiGM5Or8uzAlRjLUv5+Zv+dOVgNEq1zAkm9RjMpbk
	tklfXWb6W8oGaz5sul2xOLd3IPUepHi8hzGz8=
Received: by 10.236.18.225 with SMTP id l61mr2770047yhl.519.1303923456106;
	Wed, 27 Apr 2011 09:57:36 -0700 (PDT)
Received: from localhost ([190.197.29.62])
	by mx.google.com with ESMTPS id h77sm473156yhm.0.2011.04.27.09.57.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Apr 2011 09:57:35 -0700 (PDT)
Message-Id: <e1db92e7cb123088741d346a8106c4c261cb32d2.1303923286.git.scott.m.rifenbark@intel.com>
In-Reply-To: <cover.1303923286.git.scott.m.rifenbark@intel.com>
References: <cover.1303923286.git.scott.m.rifenbark@intel.com>
Old-Date: Wed, 27 Apr 2011 11:49:47 -0500
Date: Wed, 27 Apr 2011 11:57:34 -0500
To: poky@yoctoproject.org
CC: 
From: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH 1/1] documentation/poky-ref-manual/ref-images.xml: [BUGID#_1004] - EXTRA_IMAGE_FEATURE
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
X-List-Received-Date: Wed, 27 Apr 2011 16:57:36 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

[BUGID#_1004] - The statement indicating to comment out EXTRA_IMAGE_FEATURE was
incorrectly shown as IMAGE_EXTRA_FEATURE.  I corrected this.

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
---
 documentation/poky-ref-manual/ref-images.xml |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/documentation/poky-ref-manual/ref-images.xml b/documentation/poky-ref-manual/ref-images.xml
index 955fae5..7bfca2a 100644
--- a/documentation/poky-ref-manual/ref-images.xml
+++ b/documentation/poky-ref-manual/ref-images.xml
@@ -20,7 +20,7 @@
         you must make the following changes in the <filename>local.conf</filename> file
         before using the BitBake command to build the minimal or base image:
         <literallayout class='monospaced'>
-     1. Comment out the IMAGE_EXTRA_FEATURES line
+     1. Comment out the EXTRA_IMAGE_FEATURES line
      2. Set INCOMPATIBLE_LICENSE = "GPLv3"
         </literallayout>
     </note>
-- 
1.7.0.4


