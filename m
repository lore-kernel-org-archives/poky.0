Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B7864C8109B
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 03:22:35 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0J9MYX0027580
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 01:22:34 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 01:22:34 -0800
Received: from localhost ([128.224.162.176]) by ala-mail06.corp.ad.wrs.com
	with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 19 Jan 2011 01:22:34 -0800
Message-Id: <9957b5272555197b16088bca2524fe217a0a7cde.1295428743.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1295428743.git.jingdong.lu@windriver.com>
References: <cover.1295428743.git.jingdong.lu@windriver.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
Old-Date: Wed, 19 Jan 2011 17:11:53 +0800
Date: Wed, 19 Jan 2011 17:20:57 +0800
To: poky@yoctoproject.org
CC: 
X-OriginalArrivalTime: 19 Jan 2011 09:22:34.0640 (UTC)
	FILETIME=[67F99100:01CBB7BA]
Subject: [PATCH 2/2] perl: Add GDBM module for perl
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
X-List-Received-Date: Wed, 19 Jan 2011 09:22:35 -0000

Add GDBM_File module and add it into perl extension in config.sh in order to fix failure of lsb-perl-test.

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-devtools/perl/perl-5.12.2/config.sh |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/perl/perl-5.12.2/config.sh b/meta/recipes-devtools/perl/perl-5.12.2/config.sh
index e33b4ba..12d44a8 100644
--- a/meta/recipes-devtools/perl/perl-5.12.2/config.sh
+++ b/meta/recipes-devtools/perl/perl-5.12.2/config.sh
@@ -575,7 +575,7 @@ doublesize='8'
 drand01='drand48()'
 drand48_r_proto='REENTRANT_PROTO_I_ST'
 dtrace=''
-dynamic_ext='B Compress/Raw/Bzip2 Compress/Raw/Zlib Cwd Data/Dumper Devel/DProf Devel/PPPort Devel/Peek Digest/MD5 Digest/SHA Encode Fcntl File/Glob Filter/Util/Call Hash/Util Hash/Util/FieldHash I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 Math/BigInt/FastCalc Opcode POSIX PerlIO/encoding PerlIO/scalar PerlIO/via SDBM_File Socket Storable Sys/Hostname Sys/Syslog Text/Soundex Time/HiRes Time/Piece Unicode/Normalize XS/APItest XS/APItest/KeywordRPN XS/Typemap attributes mro re threads threads/shared'
+dynamic_ext='B Compress/Raw/Bzip2 Compress/Raw/Zlib Cwd Data/Dumper Devel/DProf Devel/PPPort Devel/Peek Digest/MD5 Digest/SHA Encode Fcntl File/Glob Filter/Util/Call Hash/Util Hash/Util/FieldHash I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 Math/BigInt/FastCalc Opcode POSIX PerlIO/encoding PerlIO/scalar PerlIO/via GDBM_File SDBM_File Socket Storable Sys/Hostname Sys/Syslog Text/Soundex Time/HiRes Time/Piece Unicode/Normalize XS/APItest XS/APItest/KeywordRPN XS/Typemap attributes mro re threads threads/shared'
 eagain='EAGAIN'
 ebcdic='undef'
 echo='echo'
@@ -590,7 +590,7 @@ endservent_r_proto='0'
 eunicefix=':'
 exe_ext=''
 expr='expr'
-extensions='B Compress/Raw/Bzip2 Compress/Raw/Zlib Cwd Data/Dumper Devel/DProf Devel/PPPort Devel/Peek Digest/MD5 Digest/SHA Encode Fcntl File/Glob Filter/Util/Call Hash/Util Hash/Util/FieldHash I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 Math/BigInt/FastCalc Opcode POSIX PerlIO/encoding PerlIO/scalar PerlIO/via SDBM_File Socket Storable Sys/Hostname Sys/Syslog Text/Soundex Time/HiRes Time/Piece Unicode/Normalize XS/APItest XS/APItest/KeywordRPN XS/Typemap attributes mro re threads threads/shared Archive/Extract Archive/Tar Attribute/Handlers AutoLoader B/Debug B/Deparse B/Lint CGI CPAN CPANPLUS CPANPLUS/Dist/Build Class/ISA Devel/SelfStubber Digest Errno ExtUtils/CBuilder ExtUtils/Command ExtUtils/Constant ExtUtils/Install ExtUtils/MakeMaker ExtUtils/Manifest ExtUtils/ParseXS File/Fetch File/Path File/Temp FileCache Filter/Simple Getopt/Long I18N/LangTags IO/Compress IO/Zlib IPC/Cmd IPC/Open2 IPC/Open3 Locale/Codes Locale/Maketext Locale/Maketext/Simple Log/Message Log!
 /Message/Simple Math/BigInt Math/BigRat Math/Complex Memoize Module/Build Module/CoreList Module/Load Module/Load/Conditional Module/Loaded Module/Pluggable NEXT Net/Ping Object/Accessor Package/Constants Params/Check Parse/CPAN/Meta PerlIO/via/QuotedPrint Pod/Escapes Pod/LaTeX Pod/Parser Pod/Perldoc Pod/Plainer Pod/Simple Safe SelfLoader Shell Switch Term/ANSIColor Term/Cap Term/UI Test Test/Harness Test/Simple Text/Balanced Text/ParseWords Text/Tabs Thread/Queue Thread/Semaphore Tie/File Tie/Memoize Tie/RefHash Time/Local Unicode/Collate XSLoader autodie autouse base bignum constant encoding/warnings if lib libnet parent podlators'
+extensions='B Compress/Raw/Bzip2 Compress/Raw/Zlib Cwd Data/Dumper Devel/DProf Devel/PPPort Devel/Peek Digest/MD5 Digest/SHA Encode Fcntl File/Glob Filter/Util/Call Hash/Util Hash/Util/FieldHash I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 Math/BigInt/FastCalc Opcode POSIX PerlIO/encoding PerlIO/scalar PerlIO/via GDBM_File SDBM_File Socket Storable Sys/Hostname Sys/Syslog Text/Soundex Time/HiRes Time/Piece Unicode/Normalize XS/APItest XS/APItest/KeywordRPN XS/Typemap attributes mro re threads threads/shared Archive/Extract Archive/Tar Attribute/Handlers AutoLoader B/Debug B/Deparse B/Lint CGI CPAN CPANPLUS CPANPLUS/Dist/Build Class/ISA Devel/SelfStubber Digest Errno ExtUtils/CBuilder ExtUtils/Command ExtUtils/Constant ExtUtils/Install ExtUtils/MakeMaker ExtUtils/Manifest ExtUtils/ParseXS File/Fetch File/Path File/Temp FileCache Filter/Simple Getopt/Long I18N/LangTags IO/Compress IO/Zlib IPC/Cmd IPC/Open2 IPC/Open3 Locale/Codes Locale/Maketext Locale/Maketext/Simple Log/M!
 essage Log/Message/Simple Math/BigInt Math/BigRat Math/Complex Memoize Module/Build Module/CoreList Module/Load Module/Load/Conditional Module/Loaded Module/Pluggable NEXT Net/Ping Object/Accessor Package/Constants Params/Check Parse/CPAN/Meta PerlIO/via/QuotedPrint Pod/Escapes Pod/LaTeX Pod/Parser Pod/Perldoc Pod/Plainer Pod/Simple Safe SelfLoader Shell Switch Term/ANSIColor Term/Cap Term/UI Test Test/Harness Test/Simple Text/Balanced Text/ParseWords Text/Tabs Thread/Queue Thread/Semaphore Tie/File Tie/Memoize Tie/RefHash Time/Local Unicode/Collate XSLoader autodie autouse base bignum constant encoding/warnings if lib libnet parent podlators'
 extern_C='extern'
 extras=''
 fflushNULL='define'
-- 
1.7.0.4


