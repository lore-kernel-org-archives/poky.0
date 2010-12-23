Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E94594C8120D
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 17:47:53 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,268,1291622400"; d="scan'208";a="589553093"
Received: from jzhang-desktop.jf.intel.com (HELO localhost) ([10.7.201.52])
	by orsmga002.jf.intel.com with ESMTP; 03 Jan 2011 15:47:48 -0800
Message-Id: <abeeb2925a36ae0cb2f598885b5b9b2ce616c2b8.1294099430.git.jessica.zhang@intel.com>
In-Reply-To: <cover.1294099429.git.jessica.zhang@intel.com>
References: <cover.1294099429.git.jessica.zhang@intel.com>
From: Liping Ke <liping.ke@intel.com>
Date: Thu, 23 Dec 2010 08:57:30 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 44/59] Add new folder under installer for conforming bb file path conventions
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
X-List-Received-Date: Mon, 03 Jan 2011 23:47:54 -0000

Signed-off-by: Liping Ke <liping.ke@intel.com>
---
 .../adt-installer/opkg/conf/opkg-sdk-i586.conf     |    0
 .../adt-installer/opkg/conf/opkg-sdk-x86_64.conf   |    0
 .../adt-installer/scripts/data_define              |    0
 .../adt-installer/scripts/extract_rootfs           |    0
 .../{ => installer}/adt-installer/scripts/util     |    0
 .../adt-installer/scripts/yocto_installer_internal |    0
 .../{ => installer}/adt-installer/yocto_installer  |    0
 .../adt-installer/yocto_installer.conf             |    0
 8 files changed, 0 insertions(+), 0 deletions(-)
 rename meta/recipes-devtools/{ => installer}/adt-installer/opkg/conf/opkg-sdk-i586.conf (100%)
 rename meta/recipes-devtools/{ => installer}/adt-installer/opkg/conf/opkg-sdk-x86_64.conf (100%)
 rename meta/recipes-devtools/{ => installer}/adt-installer/scripts/data_define (100%)
 rename meta/recipes-devtools/{ => installer}/adt-installer/scripts/extract_rootfs (100%)
 rename meta/recipes-devtools/{ => installer}/adt-installer/scripts/util (100%)
 rename meta/recipes-devtools/{ => installer}/adt-installer/scripts/yocto_installer_internal (100%)
 rename meta/recipes-devtools/{ => installer}/adt-installer/yocto_installer (100%)
 rename meta/recipes-devtools/{ => installer}/adt-installer/yocto_installer.conf (100%)

diff --git a/meta/recipes-devtools/adt-installer/opkg/conf/opkg-sdk-i586.conf b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
similarity index 100%
rename from meta/recipes-devtools/adt-installer/opkg/conf/opkg-sdk-i586.conf
rename to meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-i586.conf
diff --git a/meta/recipes-devtools/adt-installer/opkg/conf/opkg-sdk-x86_64.conf b/meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
similarity index 100%
rename from meta/recipes-devtools/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
rename to meta/recipes-devtools/installer/adt-installer/opkg/conf/opkg-sdk-x86_64.conf
diff --git a/meta/recipes-devtools/adt-installer/scripts/data_define b/meta/recipes-devtools/installer/adt-installer/scripts/data_define
similarity index 100%
rename from meta/recipes-devtools/adt-installer/scripts/data_define
rename to meta/recipes-devtools/installer/adt-installer/scripts/data_define
diff --git a/meta/recipes-devtools/adt-installer/scripts/extract_rootfs b/meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
similarity index 100%
rename from meta/recipes-devtools/adt-installer/scripts/extract_rootfs
rename to meta/recipes-devtools/installer/adt-installer/scripts/extract_rootfs
diff --git a/meta/recipes-devtools/adt-installer/scripts/util b/meta/recipes-devtools/installer/adt-installer/scripts/util
similarity index 100%
rename from meta/recipes-devtools/adt-installer/scripts/util
rename to meta/recipes-devtools/installer/adt-installer/scripts/util
diff --git a/meta/recipes-devtools/adt-installer/scripts/yocto_installer_internal b/meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
similarity index 100%
rename from meta/recipes-devtools/adt-installer/scripts/yocto_installer_internal
rename to meta/recipes-devtools/installer/adt-installer/scripts/yocto_installer_internal
diff --git a/meta/recipes-devtools/adt-installer/yocto_installer b/meta/recipes-devtools/installer/adt-installer/yocto_installer
similarity index 100%
rename from meta/recipes-devtools/adt-installer/yocto_installer
rename to meta/recipes-devtools/installer/adt-installer/yocto_installer
diff --git a/meta/recipes-devtools/adt-installer/yocto_installer.conf b/meta/recipes-devtools/installer/adt-installer/yocto_installer.conf
similarity index 100%
rename from meta/recipes-devtools/adt-installer/yocto_installer.conf
rename to meta/recipes-devtools/installer/adt-installer/yocto_installer.conf
-- 
1.7.0.4


