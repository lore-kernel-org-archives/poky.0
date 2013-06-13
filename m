Return-Path: <diego.ml@zoho.com>
Received: from sender1.zohomail.com (sender1.zohomail.com [72.5.230.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53B04E01482
	for <poky@yoctoproject.org>; Thu, 13 Jun 2013 02:07:46 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=zapps768; d=zoho.com; 
	h=from:to:cc:subject:date:message-id; 
	b=STtv1riIyKIZU3qbv7W8iYJYWIz7tAHE5EC0NKfSoDwt6aT07igo+ghIyHzFnRGFd/SYfGDzYt6H
	TaWwWlhmnsDlM4Dd54TBM4quW5UK6rkJMCfciNMm+Sym39xCIKjd  
Received: from localhost.localdomain (static-217-133-170-65.clienti.tiscali.it
	[217.133.170.65]) by mx.zohomail.com
	with SMTPS id 1371114464712758.2127569034302;
	Thu, 13 Jun 2013 02:07:44 -0700 (PDT)
From: Diego Rondini <diego.ml@zoho.com>
To: poky@yoctoproject.org
Date: Thu, 13 Jun 2013 10:32:48 +0200
Message-Id: <1371112368-27181-1-git-send-email-diego.ml@zoho.com>
X-Mailer: git-send-email 1.7.9.5
X-ZohoMail: Ss  SS_10 UW UB UW UB  ZSF-HLOLL_2  SGR3_1_23053_771
X-ZohoMail-Owner: <1371112368-27181-1-git-send-email-diego.ml@zoho.com>+zmo_0_<diego.ml@zoho.com>
X-ZohoMail-Sender: 217.133.170.65
X-Zoho-Virus-Status: 2
X-ZohoMailClient: External
Cc: Diego Rondini <diego.ml@zoho.com>
Subject: [PATCH] licences: Add SGI license
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
X-List-Received-Date: Thu, 13 Jun 2013 09:07:47 -0000

Add SGI license used, for example, in glmark2

Signed-off-by: Diego Rondini <diego.ml@zoho.com>
---
 meta/conf/licenses.conf          |    5 ++++-
 meta/files/common-licenses/SGI-1 |   40 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 44 insertions(+), 1 deletion(-)
 create mode 100644 meta/files/common-licenses/SGI-1

diff --git a/meta/conf/licenses.conf b/meta/conf/licenses.conf
index 3cb143c..3ccc789 100644
--- a/meta/conf/licenses.conf
+++ b/meta/conf/licenses.conf
@@ -34,7 +34,7 @@ SRC_DISTRIBUTE_LICENSES += "NGPL Nokia NPOSL-3.0 NTP OASIS OCLC-2.0 ODbL-1.0"
 SRC_DISTRIBUTE_LICENSES += "OFL-1.1 OGTSL OLDAP-2.8 OpenSSL OSL-1.0 OSL-2.0"
 SRC_DISTRIBUTE_LICENSES += "OSL-3.0 PD PHP-3.0 PostgreSQL Proprietary"
 SRC_DISTRIBUTE_LICENSES += "Python-2.0 QPL-1.0 RHeCos-1 RHeCos-1.1 RPL-1.5"
-SRC_DISTRIBUTE_LICENSES += "RPSL-1.0 RSCPL Ruby SAX-PD Simple-2.0 Sleepycat"
+SRC_DISTRIBUTE_LICENSES += "RPSL-1.0 RSCPL Ruby SAX-PD SGI-1 Simple-2.0 Sleepycat"
 SRC_DISTRIBUTE_LICENSES += "SPL-1.0 SugarCRM-1 SugarCRM-1.1.3 UCB VSL-1.0 W3C"
 SRC_DISTRIBUTE_LICENSES += "Watcom-1.0 WXwindows XFree86-1.1 Xnet YPL-1.1"
 SRC_DISTRIBUTE_LICENSES += "Zimbra-1.3 Zlib ZPL-1.1 ZPL-2.0 ZPL-2.1"
@@ -104,6 +104,9 @@ SPDXLICENSEMAP[AFLv1] = "AFL-1.2"
 #Other variations
 SPDXLICENSEMAP[EPLv1.0] = "EPL-1.0"
 
+#Silicon Grafics variations
+SPDXLICENSEMAP[SGIv1] = "SGI-1"
+
 # Additional license directories. Add your custom licenses directories this path.
 # LICENSE_PATH += "${COREBASE}/custom-licenses"
 
diff --git a/meta/files/common-licenses/SGI-1 b/meta/files/common-licenses/SGI-1
new file mode 100644
index 0000000..94ab8db
--- /dev/null
+++ b/meta/files/common-licenses/SGI-1
@@ -0,0 +1,40 @@
+The data and some of the control logic for the "ideas" scene was adapted from
+the "Ideas in Motion" GLUT demo.  Per the rights granted by the source for that
+demo, the following notice is reproduced here:
+
+/*
+ * (c) Copyright 1993, Silicon Graphics, Inc.
+ * ALL RIGHTS RESERVED 
+ * Permission to use, copy, modify, and distribute this software for 
+ * any purpose and without fee is hereby granted, provided that the above
+ * copyright notice appear in all copies and that both the copyright notice
+ * and this permission notice appear in supporting documentation, and that 
+ * the name of Silicon Graphics, Inc. not be used in advertising
+ * or publicity pertaining to distribution of the software without specific,
+ * written prior permission. 
+ *
+ * THE MATERIAL EMBODIED ON THIS SOFTWARE IS PROVIDED TO YOU "AS-IS"
+ * AND WITHOUT WARRANTY OF ANY KIND, EXPRESS, IMPLIED OR OTHERWISE,
+ * INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY OR
+ * FITNESS FOR A PARTICULAR PURPOSE.  IN NO EVENT SHALL SILICON
+ * GRAPHICS, INC.  BE LIABLE TO YOU OR ANYONE ELSE FOR ANY DIRECT,
+ * SPECIAL, INCIDENTAL, INDIRECT OR CONSEQUENTIAL DAMAGES OF ANY
+ * KIND, OR ANY DAMAGES WHATSOEVER, INCLUDING WITHOUT LIMITATION,
+ * LOSS OF PROFIT, LOSS OF USE, SAVINGS OR REVENUE, OR THE CLAIMS OF
+ * THIRD PARTIES, WHETHER OR NOT SILICON GRAPHICS, INC.  HAS BEEN
+ * ADVISED OF THE POSSIBILITY OF SUCH LOSS, HOWEVER CAUSED AND ON
+ * ANY THEORY OF LIABILITY, ARISING OUT OF OR IN CONNECTION WITH THE
+ * POSSESSION, USE OR PERFORMANCE OF THIS SOFTWARE.
+ * 
+ * US Government Users Restricted Rights 
+ * Use, duplication, or disclosure by the Government is subject to
+ * restrictions set forth in FAR 52.227.19(c)(2) or subparagraph
+ * (c)(1)(ii) of the Rights in Technical Data and Computer Software
+ * clause at DFARS 252.227-7013 and/or in similar or successor
+ * clauses in the FAR or the DOD or NASA FAR Supplement.
+ * Unpublished-- rights reserved under the copyright laws of the
+ * United States.  Contractor/manufacturer is Silicon Graphics,
+ * Inc., 2011 N.  Shoreline Blvd., Mountain View, CA 94039-7311.
+ *
+ * OpenGL(TM) is a trademark of Silicon Graphics, Inc.
+ */
-- 
1.7.9.5



