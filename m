Return-Path: <ross.burton@intel.com>
Received: from mail-wg0-f50.google.com (mail-wg0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D421CE00747
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 02:33:00 -0700 (PDT)
Received: by mail-wg0-f50.google.com with SMTP id m15so172809wgh.5
	for <poky@yoctoproject.org>; Wed, 21 Aug 2013 02:33:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=4o1L5TPMxNJhby3u01NAaYy518W0keZp8Kx+mkN4E7c=;
	b=VgbOcVtrjwCSTUxMTpUNcFOQg37PtAQiAAIA1hql4KY1cYHHCrvWgIHCfDWeWR7aF3
	LMCDITWRGk9YYpjKv2/lgVag2y4VqON2JZ0eESkubaLvqW+ZgpC5vayyMHBhZWPY2/R5
	Y18pENxMhVjgFzbs2Q9EUKqdeRJq6cQd+LvGQPOuBb0VelywEiypxIIAXeirU/LweS7M
	vPn8v8hU2F+GnU/oEh9AT3lllvdG7aVNy6cA3xtbzGbX2PW8zYaI8co8/7T+kXqlq3iQ
	C8au58T9OtRcP8DIO5KIEZY5lct7mXAnNtg7KuDOtil4ZRfsTmHaknZC4OlnJGX6Q7+3
	Bb/Q==
X-Gm-Message-State: ALoCoQmz/Rlb0jygvPzDivoxsfex20BHiGcOATck+7yAWX9WwMpAOCjd9x6We+Q7mrEok9TN1kOY
X-Received: by 10.180.208.45 with SMTP id mb13mr4724610wic.27.1377077580032;
	Wed, 21 Aug 2013 02:33:00 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id gg10sm8391463wib.1.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 21 Aug 2013 02:32:59 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Wed, 21 Aug 2013 10:32:54 +0100
Message-Id: <1377077574-1401-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10.4
Subject: [PATCH] poky.conf: add Debian 7.1 to SANITY_TESTED_DISTROS
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Aug 2013 09:33:02 -0000

7.1 is a point release with security and bug fixes only, and I can confirm that
it works.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto/conf/distro/poky.conf |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 89abffd..233aa81 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -83,6 +83,7 @@ SANITY_TESTED_DISTROS ?= " \
             CentOS-6.4 \n \
             Debian-6.0 \n \
             Debian-7.0 \n \
+            Debian-7.1 \n \
             SUSE-LINUX-12.2 \n \
             openSUSE-project-12.3 \n \
 	    "
-- 
1.7.10.4


