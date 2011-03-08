Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 184634C80A8A
	for <poky@yoctoproject.org>; Mon,  7 Mar 2011 19:13:06 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p281D5l0009056
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 7 Mar 2011 17:13:05 -0800 (PST)
Received: from localhost (128.224.162.205) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 7 Mar 2011 17:13:04 -0800
Message-ID: <6b9f4256d94446f64505a2b1f121745964f9f912.1299546487.git.jingdong.lu@windriver.com>
In-Reply-To: <cover.1299546487.git.jingdong.lu@windriver.com>
References: <cover.1299546487.git.jingdong.lu@windriver.com>
Old-Date: Tue, 8 Mar 2011 08:47:21 +0800
Date: Tue, 8 Mar 2011 09:13:01 +0800
To: <poky@yoctoproject.org>, <nitin.a.kamble@intel.com>
From: Jingdong Lu <jingdong.lu@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.205]
Subject: [PATCH 1/1] perl: Fix Perl test failure of LSB. [bug 794]
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
X-List-Received-Date: Tue, 08 Mar 2011 01:13:06 -0000
Content-Type: text/plain

From: Jingdong Lu <jingdong.lu@windriver.com>

When running perl test of LSB check, $Config(ccflags_nolargefiles) will find the argument and the value of
"ccflags_nolargefiles" in Config_heavy.pl. So we retain the "ccflags_uselargefiles".
[BUGID: 794]

Signed-off-by: Jingdong Lu <jingdong.lu@windriver.com>
---
 meta/recipes-devtools/perl/perl_5.12.2.bb |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/meta/recipes-devtools/perl/perl_5.12.2.bb b/meta/recipes-devtools/perl/perl_5.12.2.bb
index 18fad18..7621674 100644
--- a/meta/recipes-devtools/perl/perl_5.12.2.bb
+++ b/meta/recipes-devtools/perl/perl_5.12.2.bb
@@ -8,7 +8,7 @@ PRIORITY = "optional"
 # We need gnugrep (for -I)
 DEPENDS = "virtual/db perl-native-${PV} grep-native"
 DEPENDS += "gdbm zlib"
-PR = "r2"
+PR = "r3"
 
 # 5.10.1 has Module::Build built-in
 PROVIDES += "libmodule-build-perl"
@@ -93,7 +93,6 @@ do_nolargefile() {
 	sed -i -e "s,\(uselargefiles=\)'define',\1'undef',g" \
 		-e "s,\(d_readdir64_r=\)'define',\1'undef',g" \
 		-e "s,\(readdir64_r_proto=\)'\w+',\1'0',g" \
-		-e "/ccflags_uselargefiles/d" \
 		-e "s/-Duselargefiles//" \
 		-e "s/-D_FILE_OFFSET_BITS=64//" \
 		-e "s/-D_LARGEFILE_SOURCE//" \
-- 
1.7.0.4


