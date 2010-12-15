Return-Path: <Alex.deVries@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F1CE4C811DB
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 15:14:39 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBFLEWLH028813;
	Wed, 15 Dec 2010 13:14:32 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 15 Dec 2010 13:14:32 -0800
Received: from localhost ([128.224.146.68]) by ala-mail06.corp.ad.wrs.com with
	Microsoft SMTPSVC(6.0.3790.1830); Wed, 15 Dec 2010 13:14:32 -0800
From: Alex deVries <alex.devries@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed, 15 Dec 2010 16:17:19 -0500
Message-Id: <20345be11fd1983ca77e3e2b43eed88af7219eb9.1292447662.git.alex.devries@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1292447662.git.alex.devries@windriver.com>
References: <cover.1292447662.git.alex.devries@windriver.com>
In-Reply-To: <cover.1292447662.git.alex.devries@windriver.com>
References: <cover.1292447662.git.alex.devries@windriver.com>
X-OriginalArrivalTime: 15 Dec 2010 21:14:32.0829 (UTC)
	FILETIME=[118AAAD0:01CB9C9D]
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
X-List-Received-Date: Wed, 15 Dec 2010 21:14:39 -0000

Signed-off-by: Alex deVries <alex.devries@windriver.com>
---
 meta/classes/image-swab.bbclass |    6 +-----
 1 files changed, 1 insertions(+), 5 deletions(-)

diff --git a/meta/classes/image-swab.bbclass b/meta/classes/image-swab.bbclass
index 9ddd1c9..28918d0 100644
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


