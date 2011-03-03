Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id E2A564C800A3
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 21:35:55 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Mar 2011 19:35:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,256,1297065600"; d="scan'208";a="663288128"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2011 19:35:52 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 3 Mar 2011 11:35:02 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Thu, 3 Mar 2011
	11:34:59 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Thu, 3 Mar 2011 11:34:57 +0800
Thread-Topic: [PATCH 1/1] ADT: Add libtool-nativesdk for ADT installer
Thread-Index: AcvZU/gVS5YueM6ZTouvKBGeA2Tymg==
Message-ID: <789F9655DD1B8F43B48D77C5D306597332E8BF6E@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PATCH 1/1] ADT: Add libtool-nativesdk for ADT installer
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
X-List-Received-Date: Thu, 03 Mar 2011 03:35:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

From: Liping Ke <liping.ke@intel.com>

We need to add libtool native sdk support in ADT installer.
This patch fix #bug  791

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../adt-installer/scripts/adt_installer_internal   |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-devtools/installer/adt-installer/scripts/adt_inst=
aller_internal b/meta/recipes-devtools/installer/adt-installer/scripts/adt_=
installer_internal
index 9653284..b5e304d 100755
--- a/meta/recipes-devtools/installer/adt-installer/scripts/adt_installer_i=
nternal
+++ b/meta/recipes-devtools/installer/adt-installer/scripts/adt_installe
+++ r_internal
@@ -101,6 +101,9 @@ check_result
 echo_info "Installing pkgconfig nativesdk ...\n"
 $OPKG_INSTALL_NATIVE_CMD pkgconfig-nativesdk &>> $YOCTOADT_INSTALL_LOG_FIL=
E  check_result
+echo_info "Installing libtool nativesdk ...\n"
+$OPKG_INSTALL_NATIVE_CMD libtool-nativesdk &>>=20
+$YOCTOADT_INSTALL_LOG_FILE check_result
=20
 for native_target_type in $YOCTOADT_TARGETS; do
   native_target_type=3D`echo "$native_target_type" | sed -e 's/x86_64/x86-=
64/' -e 's/x86$/i586/'`
--
1.7.0.4

