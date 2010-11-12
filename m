Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id AABE94C80815
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 15:33:49 -0600 (CST)
Received: from [192.168.0.7] (5ada2504.bb.sky.com [90.218.37.4])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id C25F212EC117
	for <poky@yoctoproject.org>; Fri, 12 Nov 2010 16:10:34 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
Date: Fri, 12 Nov 2010 21:31:44 +0000
Message-ID: <1289597504.27930.38.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
Subject: [PATCH 5/5] image-swab: update swabber command for latest version
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
X-List-Received-Date: Fri, 12 Nov 2010 21:33:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


Signed-off-by: Joshua Lock <josh@linux.intel.com>
---
 meta/classes/image-swab.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/image-swab.bbclass
b/meta/classes/image-swab.bbclass
index 7dd83f8..93918bf 100644
--- a/meta/classes/image-swab.bbclass
+++ b/meta/classes/image-swab.bbclass
@@ -74,7 +74,7 @@ do_generate_swabber_report () {
 
   if [ "$(ls -A ${HOST_DATA})" ]; then
     echo "Generating swabber report"
-    swabber -d ${HOST_DATA} -l ${SWABBER_LOGS} -o
${SWABBER_REPORT}/report-${REPORTSTAMP}.txt -r
${SWABBER_REPORT}/extra_report-${REPORTSTAMP}.txt
+    swabber -d ${HOST_DATA} -l ${SWABBER_LOGS} -o
${SWABBER_REPORT}/report-${REPORTSTAMP}.txt -r
${SWABBER_REPORT}/extra_report-${REPORTSTAMP}.txt -c all -p ${TOPDIR}
${OEROOT} /tmp /dev /proc /usr/lib/python2.6 /usr/local/lib/python2.6 /usr/lib/pymodules /etc/ld.so.cache
   else
     echo "No host data, cannot generate swabber report."
   fi
-- 
1.7.3.2



