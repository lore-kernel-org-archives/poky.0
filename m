Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AE56E0158A
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:40:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Aug 2013 01:40:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="388942030"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 20 Aug 2013 01:40:06 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 228736A4007;
	Tue, 20 Aug 2013 01:40:03 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:44:50 +0200
Message-Id: <6305e6a0ad21c04b75bc4e4216ec55f44fe9f458.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 008/186] tzdata: upgrade to 2013d
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
X-List-Received-Date: Tue, 20 Aug 2013 08:40:07 -0000

From: Cristiana Voicu <cristiana.voicu@intel.com>

(From OE-Core rev: 1e055f184e7ac62118fe04dfa9860cd7819eaddb)

Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>

[sgw: Fix up tzdata to 2013d]
Signed-off-by: Saul Wold <sgw@linux.intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../recipes-extended/tzcode/tzcode-native_2013d.bb |    6 +++---
 .../tzdata/{tzdata_2013b.bb => tzdata_2013d.bb}    |    4 ++--
 2 files changed, 5 insertions(+), 5 deletions(-)
 rename meta/recipes-extended/tzdata/{tzdata_2013b.bb => tzdata_2013d.bb} (98%)

diff --git a/meta/recipes-extended/tzcode/tzcode-native_2013d.bb b/meta/recipes-extended/tzcode/tzcode-native_2013d.bb
index 52aa9c2..af21151 100644
--- a/meta/recipes-extended/tzcode/tzcode-native_2013d.bb
+++ b/meta/recipes-extended/tzcode/tzcode-native_2013d.bb
@@ -6,10 +6,10 @@ LIC_FILES_CHKSUM = "file://${WORKDIR}/README;md5=d7a19b8c6d8a28785c4cd04ff2e46d2
 # note that we allow for us to use data later than our code version
 #
 SRC_URI =" ftp://ftp.iana.org/tz/releases/tzcode${PV}.tar.gz;name=tzcode \
-           ftp://ftp.iana.org/tz/releases/tzdata2013b.tar.gz;name=tzdata"
+           ftp://ftp.iana.org/tz/releases/tzdata2013d.tar.gz;name=tzdata"
 
-SRC_URI[tzdata.md5sum] = "489dbca77d1f2e287a3987ca047bb246"
-SRC_URI[tzdata.sha256sum] = "70d589d0e76a3749403d2bb404e9214c2520dda4c13e4b07b1b945ed2c64edb2"
+SRC_URI[tzdata.md5sum] = "65b6818162230fc02f86f293376c73df"
+SRC_URI[tzdata.sha256sum] = "cd1c96f0676e0edceebc6a418a2222ffb05becb41180dd9f847b9c7cef303b04"
 
 SRC_URI[tzcode.md5sum] = "4616a9560270f180eeb9a08540636890"
 SRC_URI[tzcode.sha256sum] = "2d9eb90c94644cddb74a490d1184ef9f88efcaa7a2b1bf88be0ee9eeeab707b6"
diff --git a/meta/recipes-extended/tzdata/tzdata_2013b.bb b/meta/recipes-extended/tzdata/tzdata_2013d.bb
similarity index 98%
rename from meta/recipes-extended/tzdata/tzdata_2013b.bb
rename to meta/recipes-extended/tzdata/tzdata_2013d.bb
index 0b34e85..c0f1506 100644
--- a/meta/recipes-extended/tzdata/tzdata_2013b.bb
+++ b/meta/recipes-extended/tzdata/tzdata_2013d.bb
@@ -14,8 +14,8 @@ RCONFLICTS_${PN} = "timezones timezone-africa timezone-america timezone-antarcti
 
 SRC_URI = "ftp://ftp.iana.org/tz/releases/tzdata${PV}.tar.gz;name=tzdata"
 
-SRC_URI[tzdata.md5sum] = "489dbca77d1f2e287a3987ca047bb246"
-SRC_URI[tzdata.sha256sum] = "70d589d0e76a3749403d2bb404e9214c2520dda4c13e4b07b1b945ed2c64edb2"
+SRC_URI[tzdata.md5sum] = "65b6818162230fc02f86f293376c73df"
+SRC_URI[tzdata.sha256sum] = "cd1c96f0676e0edceebc6a418a2222ffb05becb41180dd9f847b9c7cef303b04"
 
 S = "${WORKDIR}"
 
-- 
1.7.9.5


