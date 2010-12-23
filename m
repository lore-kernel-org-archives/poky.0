Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 35C334C81067
	for <poky@yoctoproject.org>; Thu, 23 Dec 2010 01:34:16 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBN7YFT9010393
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 23:34:15 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 22 Dec 2010 23:34:15 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 22 Dec 2010 23:34:15 -0800
Message-Id: <8e704bc11ebdcac0f38da3d75372b87e5fd896f0.1293089352.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1293089352.git.jingdong.lu@windriver.com>
References: <cover.1293089352.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Thu, 16 Dec 2010 15:14:06 +0800
Date: Thu, 23 Dec 2010 15:35:52 +0800
To: poky@yoctoproject.org
X-OriginalArrivalTime: 23 Dec 2010 07:34:15.0535 (UTC)
	FILETIME=[CD0D97F0:01CBA273]
Subject: [PATCH 1/3] perl: Add GDBM_File into perl extension
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
X-List-Received-Date: Thu, 23 Dec 2010 07:34:16 -0000

Add GDBM_File into perl extension in config.sh in order to fix failure of lsb-perl-test.

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-devtools/perl/perl-5.8.8/config.sh |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-devtools/perl/perl-5.8.8/config.sh b/meta/recipes-devtools/perl/perl-5.8.8/config.sh
index 3d4c193..49d5ab7 100644
--- a/meta/recipes-devtools/perl/perl-5.8.8/config.sh
+++ b/meta/recipes-devtools/perl/perl-5.8.8/config.sh
@@ -522,7 +522,7 @@ endservent_r_proto='0'
 eunicefix=':'
 exe_ext=''
 expr='expr'
-extensions='attrs B ByteLoader Cwd Data/Dumper Devel/DProf Devel/Peek Devel/PPPort Digest/MD5 Encode Fcntl File/Glob Filter/Util/Call I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 Opcode PerlIO/encoding PerlIO/scalar PerlIO/via POSIX re SDBM_File Socket Storable Sys/Hostname Sys/Syslog threads Time/HiRes Unicode/Normalize XS/APItest XS/Typemap threads/shared Errno'
+extensions='attrs B ByteLoader Cwd Data/Dumper Devel/DProf Devel/Peek Devel/PPPort Digest/MD5 Encode Fcntl File/Glob Filter/Util/Call I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 Opcode PerlIO/encoding PerlIO/scalar PerlIO/via POSIX re GDBM_File SDBM_File Socket Storable Sys/Hostname Sys/Syslog threads Time/HiRes Unicode/Normalize XS/APItest XS/Typemap threads/shared Errno'
 extras=''
 fflushNULL='define'
 fflushall='undef'
-- 
1.7.0.4


