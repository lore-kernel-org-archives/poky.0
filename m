Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61990E006F6; Wed,  2 Jul 2014 23:43:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AE56E006EE
	for <poky@yoctoproject.org>; Wed,  2 Jul 2014 23:43:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s636hYhF026757
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 2 Jul 2014 23:43:34 -0700 (PDT)
Received: from pek-blade16.wrs.com (128.224.153.44) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 2 Jul 2014 23:43:34 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <poky@yoctoproject.org>
Date: Thu, 3 Jul 2014 14:58:16 +0800
Message-ID: <014f97e1b2a6eba15662fbad8291fd6477b0828d.1404370591.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <cover.1404370591.git.liezhi.yang@windriver.com>
References: <cover.1404370591.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/2] documentation: fix no newline at end of file
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
X-List-Received-Date: Thu, 03 Jul 2014 06:43:47 -0000
Content-Type: text/plain

Add a '\n' to the last line of the file to fix:

No newline at end of file

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 documentation/template/division.title.xsl        | 2 +-
 documentation/template/formal.object.heading.xsl | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/template/division.title.xsl b/documentation/template/division.title.xsl
index 8cd70a5..6c26597 100644
--- a/documentation/template/division.title.xsl
+++ b/documentation/template/division.title.xsl
@@ -21,4 +21,4 @@
       </xsl:call-template>
     </h1>
   </xsl:template>
-</xsl:stylesheet>
\ No newline at end of file
+</xsl:stylesheet>
diff --git a/documentation/template/formal.object.heading.xsl b/documentation/template/formal.object.heading.xsl
index 4f3900d..1a5e697 100644
--- a/documentation/template/formal.object.heading.xsl
+++ b/documentation/template/formal.object.heading.xsl
@@ -18,4 +18,4 @@
       </xsl:call-template>
     </p>
   </xsl:template>
-</xsl:stylesheet>
\ No newline at end of file
+</xsl:stylesheet>
-- 
1.8.3.1


