Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA9544C80048
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 20:23:59 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBG2NxBk015636
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 18:23:59 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 15 Dec 2010 18:23:59 -0800
Received: from [128.224.162.176] ([128.224.162.176]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 15 Dec 2010 18:23:58 -0800
From: Lu Jingdong <jingdong.lu@windriver.com>
To: poky <poky@yoctoproject.org>
Date: Thu, 16 Dec 2010 10:25:16 +0800
Message-ID: <1292466316.1852.4.camel@eric-desktop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-OriginalArrivalTime: 16 Dec 2010 02:23:59.0392 (UTC)
	FILETIME=[4C135A00:01CB9CC8]
Subject: [PATCH 1/1] ed: Change bin path
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
X-List-Received-Date: Thu, 16 Dec 2010 02:24:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Subject: [PATCH 1/1] ed: Change bin path

LSB states that ed should be in /bin/ and change bin path of ed from
usr/bin into bin for LSB.

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-extended/ed/ed_1.5.bb |    6 +++++-
 1 files changed, 5 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/ed/ed_1.5.bb
b/meta/recipes-extended/ed/ed_1.5.bb
index 8ea0e3f..6c09cb9 100644
--- a/meta/recipes-extended/ed/ed_1.5.bb
+++ b/meta/recipes-extended/ed/ed_1.5.bb
@@ -8,7 +8,11 @@ LIC_FILES_CHKSUM =
"file://COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949 \

file://main.c;endline=24;md5=177fe82d0649e545591a13fdce5733e8"

 SECTION = "base"
-PR = "r0"
+PR = "r1"
+
+# LSB states that ed should be in /bin/
+bindir = "${base_bindir}"
+

 SRC_URI = "${GNU_MIRROR}/ed/ed-${PV}.tar.gz \
            file://ed-1.2-build.patch"
-- 
1.7.0.4

-- 
Lu Jingdong
jingdong.lu@windriver.com
China, Wind River


