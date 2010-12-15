Return-Path: <Alex.deVries@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4067B4C80BCF
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 14:32:12 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBFKWBph021632;
	Wed, 15 Dec 2010 12:32:11 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 15 Dec 2010 12:32:10 -0800
Received: from localhost ([128.224.146.68]) by ala-mail06.corp.ad.wrs.com with
	Microsoft SMTPSVC(6.0.3790.1830); Wed, 15 Dec 2010 12:32:10 -0800
From: Alex deVries <alex.devries@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed, 15 Dec 2010 15:34:58 -0500
Message-Id: <5e80366ead7285c32affe801cfdbe11ccc0ccb9f.1292444983.git.alex.devries@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1292444983.git.alex.devries@windriver.com>
References: <cover.1292444983.git.alex.devries@windriver.com>
In-Reply-To: <cover.1292444983.git.alex.devries@windriver.com>
References: <cover.1292444983.git.alex.devries@windriver.com>
X-OriginalArrivalTime: 15 Dec 2010 20:32:11.0358 (UTC)
	FILETIME=[26B4F7E0:01CB9C97]
Cc: poky@yoctoproject.org
Subject: [PATCH 2/4] Swabber's update_distro automatically updates the blob now.
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
X-List-Received-Date: Wed, 15 Dec 2010 20:32:12 -0000

---
 meta/classes/image-swab.bbclass |    6 +-----
 1 files changed, 1 insertions(+), 5 deletions(-)

diff --git a/meta/classes/image-swab.bbclass b/meta/classes/image-swab.bbclass
index c9b321c..7cb1c1e 100644
--- a/meta/classes/image-swab.bbclass
+++ b/meta/classes/image-swab.bbclass
@@ -60,12 +60,8 @@ python() {
 }
 
 do_generate_swabber_report () {
-  echo "Updating host data"
 
-  # Ensure we have the very latest host information
-  if [ "${NOSWABBERUPDATE}" != "1" ]; then
-     update_distro ${HOST_DATA}
-  fi
+  update_distro ${HOST_DATA}
 
   # Swabber can't create the directory for us
   mkdir -p ${SWABBER_REPORT}
-- 
1.7.0.4


