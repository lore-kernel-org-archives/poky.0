Return-Path: <aalonso@secretlab.ca>
Received: from mail-gw0-f48.google.com (mail-gw0-f48.google.com [74.125.83.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id B23B34C800AF
	for <poky@yoctoproject.org>; Thu,  5 May 2011 14:10:59 -0500 (CDT)
Received: by mail-gw0-f48.google.com with SMTP id 22so1257951gwj.35
	for <poky@yoctoproject.org>; Thu, 05 May 2011 12:10:59 -0700 (PDT)
Received: by 10.236.190.230 with SMTP id e66mr3407944yhn.233.1304622659358;
	Thu, 05 May 2011 12:10:59 -0700 (PDT)
Received: from localhost.localdomain
	(adsl-99-66-253-228.dsl.emhril.sbcglobal.net [99.66.253.228])
	by mx.google.com with ESMTPS id f73sm1131187yhc.41.2011.05.05.12.10.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 May 2011 12:10:58 -0700 (PDT)
From: Adrian Alonso <aalonso@secretlab.ca>
To: poky@yoctoproject.org
Date: Thu,  5 May 2011 14:10:57 -0500
Message-Id: <3d3d70707ea735decc773bbf43a779f4b5fe83b6.1304621382.git.aalonso@secretlab.ca>
X-Mailer: git-send-email 1.7.4.4
In-Reply-To: <cover.1304621382.git.aalonso@secretlab.ca>
References: <cover.1304621382.git.aalonso@secretlab.ca>
Subject: [PATCH 3/7] siteinfo: add microblaze target info
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
X-List-Received-Date: Thu, 05 May 2011 19:10:59 -0000

* Add microblaze target info
* Microblaze soft CPU can be configured as big-endian/little-endian
* Currently target info support for microblaze big endian, using prebuilt
  toolchains.

Signed-off-by: Adrian Alonso <aalonso@secretlab.ca>
---
 meta/classes/siteinfo.bbclass |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta/classes/siteinfo.bbclass b/meta/classes/siteinfo.bbclass
index 892abc1..436bc39 100644
--- a/meta/classes/siteinfo.bbclass
+++ b/meta/classes/siteinfo.bbclass
@@ -40,6 +40,7 @@ def get_siteinfo_list(d):
                "i486-linux-uclibc":       "endian-little bit-32 common-uclibc ix86-common",\
                "i586-linux-uclibc":       "endian-little bit-32 common-uclibc ix86-common",\
                "i686-linux-uclibc":       "endian-little bit-32 common-uclibc ix86-common",\
+               "microblaze-linux-gnu":    "endian-big bit-32 common-glibc microblaze-common",\
                "mipsel-linux":            "endian-little bit-32 common-glibc mips-common",\
                "mipsel-linux-uclibc":     "endian-little bit-32 common-uclibc mips-common",\
                "mips-linux":              "endian-big bit-32 common-glibc mips-common",\
-- 
1.7.4.4


