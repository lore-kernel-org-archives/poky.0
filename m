Return-Path: <Alex.deVries@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7C0E44C80BD4
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 14:32:13 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBFKWCl8021641;
	Wed, 15 Dec 2010 12:32:12 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 15 Dec 2010 12:32:12 -0800
Received: from localhost ([128.224.146.68]) by ala-mail06.corp.ad.wrs.com with
	Microsoft SMTPSVC(6.0.3790.1830); Wed, 15 Dec 2010 12:32:12 -0800
From: Alex deVries <alex.devries@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed, 15 Dec 2010 15:34:59 -0500
Message-Id: <95ed172706034450b4db80612a1d1224b007eeff.1292444983.git.alex.devries@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1292444983.git.alex.devries@windriver.com>
References: <cover.1292444983.git.alex.devries@windriver.com>
In-Reply-To: <cover.1292444983.git.alex.devries@windriver.com>
References: <cover.1292444983.git.alex.devries@windriver.com>
X-OriginalArrivalTime: 15 Dec 2010 20:32:12.0765 (UTC)
	FILETIME=[278BA8D0:01CB9C97]
Cc: poky@yoctoproject.org
Subject: [PATCH 3/4] Calculate CCACHE_DIR by calling host's ccache config.
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
X-List-Received-Date: Wed, 15 Dec 2010 20:32:13 -0000

---
 meta/classes/image-swab.bbclass |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/meta/classes/image-swab.bbclass b/meta/classes/image-swab.bbclass
index 7cb1c1e..d0fb009 100644
--- a/meta/classes/image-swab.bbclass
+++ b/meta/classes/image-swab.bbclass
@@ -68,6 +68,10 @@ do_generate_swabber_report () {
 
   REPORTSTAMP=${SWAB_ORIG_TASK}-`date +%2m%2d%2H%2M%Y`
 
+  if [ `which ccache` ] ; then
+    CCACHE_DIR=`( ccache -s | grep "cache directory" | grep -o '[^ ]*$' 2> /dev/null )`
+  fi
+
   if [ "$(ls -A ${HOST_DATA})" ]; then
     echo "Generating swabber report"
     swabber -d ${HOST_DATA} -l ${SWABBER_LOGS} -o ${SWABBER_REPORT}/report-${REPORTSTAMP}.txt -r ${SWABBER_REPORT}/extra_report-${REPORTSTAMP}.txt -c all -p ${TOPDIR} -f ${OEROOT}/meta/conf/swabber ${TOPDIR} ${OEROOT} ${CCACHE_DIR}
-- 
1.7.0.4


