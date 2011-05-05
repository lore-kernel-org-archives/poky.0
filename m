Return-Path: <aalonso@secretlab.ca>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F7DB4C800AF
	for <poky@yoctoproject.org>; Thu,  5 May 2011 14:11:05 -0500 (CDT)
Received: by mail-yw0-f48.google.com with SMTP id 9so1262902ywk.35
	for <poky@yoctoproject.org>; Thu, 05 May 2011 12:11:05 -0700 (PDT)
Received: by 10.236.161.131 with SMTP id w3mr3474690yhk.482.1304622664274;
	Thu, 05 May 2011 12:11:04 -0700 (PDT)
Received: from localhost.localdomain ([99.66.253.228])
	by mx.google.com with ESMTPS id g2sm1127226yhc.76.2011.05.05.12.11.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 May 2011 12:11:03 -0700 (PDT)
From: Adrian Alonso <aalonso@secretlab.ca>
To: poky@yoctoproject.org
Date: Thu,  5 May 2011 14:11:01 -0500
Message-Id: <65ed03e309da42c0dd73a9ddafb96b9025350104.1304621382.git.aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.4.4
In-Reply-To: <cover.1304621382.git.aalonso@secretlab.ca>
References: <cover.1304621382.git.aalonso@secretlab.ca>
Subject: [PATCH 4/7] linux-libc-headers: add microblaze ARCH definition
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
X-List-Received-Date: Thu, 05 May 2011 19:11:05 -0000

* Add Microblaze ARCH definition
* Bump PR

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 .../linux-libc-headers_2.6.37.2.bb                 |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.37.2.bb b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.37.2.bb
index 888d9e4..51c4926 100644
--- a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.37.2.bb
+++ b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.37.2.bb
@@ -2,7 +2,7 @@ require linux-libc-headers.inc
 
 INHIBIT_DEFAULT_DEPS = "1"
 DEPENDS += "unifdef-native"
-PR = "r0"
+PR = "r1"
 
 SRC_URI += " file://connector-msg-size-fix.patch"
 
@@ -26,6 +26,7 @@ set_arch() {
 		x86_64*)  ARCH=x86_64 ;;
 		avr32*)   ARCH=avr32 ;;
 		bfin*)    ARCH=blackfin ;;
+		microblaze*) ARCH=microblaze ;;
 	esac
 }
 
-- 
1.7.4.4


