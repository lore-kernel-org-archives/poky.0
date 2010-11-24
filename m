Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E1A844C80B71
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 22:42:23 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAO4gNFH006306
	for <poky@yoctoproject.org>; Tue, 23 Nov 2010 20:42:23 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 23 Nov 2010 20:42:22 -0800
Received: from [128.224.162.176] ([128.224.162.176]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 23 Nov 2010 20:42:22 -0800
From: Lu Jingdong <jingdong.lu@windriver.com>
To: poky <poky@yoctoproject.org>
Date: Wed, 24 Nov 2010 12:43:54 +0800
Message-ID: <1290573834.1858.80.camel@eric-desktop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-OriginalArrivalTime: 24 Nov 2010 04:42:23.0133 (UTC)
	FILETIME=[FC672CD0:01CB8B91]
Subject: [PATCH 1/3] Fix bug of empty package of libxml-parser-perl.
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
X-List-Received-Date: Wed, 24 Nov 2010 04:42:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Becaues of the error library path definition in cpan-base.bbclass,
libxml-parser-perl package is empty.

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/classes/cpan-base.bbclass |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/classes/cpan-base.bbclass
b/meta/classes/cpan-base.bbclass
index 3175248..1d13ff3 100644
--- a/meta/classes/cpan-base.bbclass
+++ b/meta/classes/cpan-base.bbclass
@@ -27,7 +27,7 @@ def get_perl_version(d):
 # Determine where the library directories are
 def perl_get_libdirs(d):
        libdir = bb.data.getVar('libdir', d, 1)
-       libdirs = libdir + '/*/*/perl5'
+       libdirs = libdir + '/perl5'
        return libdirs

 def is_target(d):
-- 
1.7.0.4


Pull URL:
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro

-- 
Lu Jingdong
jingdong.lu@windriver.com
China, Wind River


