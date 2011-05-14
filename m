Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 512D14C81220
	for <poky@yoctoproject.org>; Sat, 14 May 2011 04:54:39 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4E9sbm0027304
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 14 May 2011 02:54:38 -0700 (PDT)
Received: from localhost (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sat, 14 May 2011 02:54:37 -0700
Message-ID: <5003f74ef67af3d9b8bdf936b7d69a52c70df2be.1305366509.git.kai.kang@windriver.com>
In-Reply-To: <cover.1305366509.git.kai.kang@windriver.com>
References: <cover.1305366509.git.kai.kang@windriver.com>
Old-Date: Fri, 13 May 2011 11:18:40 +0800
Date: Sat, 14 May 2011 17:53:45 +0800
To: <saul.wold@intel.com>, <sgw@linux.intel.com>
From: Kang Kai <kai.kang@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: [PATCH 4/4] lsbsetup: recreate locale fr_FR
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
X-List-Received-Date: Sat, 14 May 2011 09:54:39 -0000
Content-Type: text/plain

From: Kang Kai <kai.kang@windriver.com>

Update LSB_Setup.sh to recreate locale fr_FR, which helps to pass
LSB libstdc++ test.
Bump PR to r3.

Signed-off-by: Kang Kai <kai.kang@windriver.com>
---
 meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh |    1 +
 meta/recipes-extended/lsb/lsbsetup_0.9.bb       |    2 +-
 2 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh b/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
index aa3d5ee..10d8fb8 100644
--- a/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
+++ b/meta/recipes-extended/lsb/lsbsetup/LSB_Setup.sh
@@ -208,6 +208,7 @@ localedef -i en_US -f UTF-8 en_US.UTF-8
 localedef -i se_NO -f UTF-8 se_NO.UTF-8
 localedef -i de_DE -f ISO-8859-1 de_DE
 localedef -i en_US -f ISO-8859-1 en_US.ISO8859-1
+localedef -i fr_FR -f ISO-8859-1 fr_FR
 
 #resolve localhost 
 LOCALHOST=`hostname`
diff --git a/meta/recipes-extended/lsb/lsbsetup_0.9.bb b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
index b0d0a3f..21bd26e 100644
--- a/meta/recipes-extended/lsb/lsbsetup_0.9.bb
+++ b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "auto-setup environment for lsb test"
 SECTION = "console/utils"
 PRIORITY = "required"
 LICENSE = "GPLv2"
-PR = "r2"
+PR = "r3"
 
 LIC_FILES_CHKSUM = "file://LSB_Setup.sh;beginline=3;endline=16;md5=97451c7c0786ce5bbe9ac58042945583"
 
-- 
1.7.1


