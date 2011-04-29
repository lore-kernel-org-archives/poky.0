Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8BA104C80BD7
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 04:44:47 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3T9ilRI020481
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 02:44:47 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Fri, 29 Apr 2011 02:44:46 -0700
Message-ID: <e3128d4d9e417c7844587593d86225ddbe52744e.1304070105.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1304070105.git.xiaofeng.yan@windriver.com>
References: <cover.1304070105.git.xiaofeng.yan@windriver.com>
Old-Date: Fri, 29 Apr 2011 17:39:09 +0800
Date: Fri, 29 Apr 2011 17:44:16 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 2/2] LSB_Setup.sh: Add character set to lsb-image
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
X-List-Received-Date: Fri, 29 Apr 2011 09:44:47 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

Add character set to lsb-image to solve bugs from lsb test

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh b/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
index a8189e5..aa3d5ee 100644
--- a/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
+++ b/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
@@ -207,6 +207,7 @@ localedef -i en_US -f ISO-8859-15  en_US.ISO-8859-15
 localedef -i en_US -f UTF-8 en_US.UTF-8
 localedef -i se_NO -f UTF-8 se_NO.UTF-8
 localedef -i de_DE -f ISO-8859-1 de_DE
+localedef -i en_US -f ISO-8859-1 en_US.ISO8859-1
 
 #resolve localhost 
 LOCALHOST=`hostname`
-- 
1.7.0.4


