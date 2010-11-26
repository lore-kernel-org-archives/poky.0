Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 234D24C8109B
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 23:55:29 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Dec 2010 21:55:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,286,1288594800"; d="scan'208";a="863431182"
Received: from gw-vmm.sh.intel.com (HELO localhost) ([10.239.48.110])
	by fmsmga001.fm.intel.com with ESMTP; 01 Dec 2010 21:55:28 -0800
Message-Id: <8d392122060d4c936aaecc26b4eebfd4edf64e3c.1291269468.git.edwin.zhai@intel.com>
In-Reply-To: <cover.1291269468.git.edwin.zhai@intel.com>
References: <cover.1291269468.git.edwin.zhai@intel.com>
From: Zhai Edwin <edwin.zhai@intel.com>
Date: Fri, 26 Nov 2010 16:57:55 +0800
To: poky@yoctoproject.org
CC: 
Subject: [PATCH 03/14] beecrypt: Update to 4.2.1
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
X-List-Received-Date: Thu, 02 Dec 2010 05:55:29 -0000

Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
---
 .../beecrypt/beecrypt/disable-icu-check.patch      |   12 ++--
 .../beecrypt/beecrypt/fix-security.patch           |   51 ++++++++++----------
 .../{beecrypt_4.1.2.bb => beecrypt_4.2.1.bb}       |   10 ++--
 3 files changed, 38 insertions(+), 35 deletions(-)
 rename meta/recipes-support/beecrypt/{beecrypt_4.1.2.bb => beecrypt_4.2.1.bb} (63%)

diff --git a/meta/recipes-support/beecrypt/beecrypt/disable-icu-check.patch b/meta/recipes-support/beecrypt/beecrypt/disable-icu-check.patch
index 3e18a87..4a2f414 100644
--- a/meta/recipes-support/beecrypt/beecrypt/disable-icu-check.patch
+++ b/meta/recipes-support/beecrypt/beecrypt/disable-icu-check.patch
@@ -2,11 +2,11 @@ We are unable to run code at configure time in a cross environemnt, but as we
 control the build we can be fairly certain this dependency is met.
 
 JL 05/07/10
-Index: beecrypt-4.1.2/configure.ac
+Index: beecrypt-4.2.1/configure.ac
 ===================================================================
---- beecrypt-4.1.2.orig/configure.ac	2004-12-21 11:37:56.000000000 +0000
-+++ beecrypt-4.1.2/configure.ac	2010-07-05 16:09:50.390083494 +0100
-@@ -243,32 +243,6 @@
+--- beecrypt-4.2.1.orig/configure.ac	2010-11-26 17:12:25.000000000 +0800
++++ beecrypt-4.2.1/configure.ac	2010-11-26 17:12:30.000000000 +0800
+@@ -292,32 +292,6 @@
  # Predefines and checks for C++ API support
  AH_TEMPLATE([CPPGLUE],[Define to 1 if you want to include the C++ code])
  
@@ -36,6 +36,6 @@ Index: beecrypt-4.1.2/configure.ac
 -  AC_LANG_POP(C)
 -fi
 -
+ AM_CONDITIONAL([WITH_CPLUSPLUS],[test "$ac_with_cplusplus" = yes])
+ 
  if test "$ac_with_cplusplus" = yes ; then
-   AC_DEFINE([CPPGLUE],1)
- fi
diff --git a/meta/recipes-support/beecrypt/beecrypt/fix-security.patch b/meta/recipes-support/beecrypt/beecrypt/fix-security.patch
index 6103562..f28e393 100644
--- a/meta/recipes-support/beecrypt/beecrypt/fix-security.patch
+++ b/meta/recipes-support/beecrypt/beecrypt/fix-security.patch
@@ -3,20 +3,38 @@ project:
 http://www.mail-archive.com/fink-commits@lists.sourceforge.net/msg75742.html
 
 JL 05/07/10 
-Index: beecrypt-4.1.2/c++/security/Security.h
+Index: beecrypt-4.2.1/include/beecrypt/c++/beeyond/BeeCertificate.h
 ===================================================================
---- beecrypt-4.1.2.orig/c++/security/Security.h	2010-07-05 17:15:34.811273306 +0100
-+++ beecrypt-4.1.2/c++/security/Security.h	2010-07-05 17:15:38.696388531 +0100
-@@ -75,8 +75,6 @@
+--- beecrypt-4.2.1.orig/include/beecrypt/c++/beeyond/BeeCertificate.h	2010-11-26 17:22:57.000000000 +0800
++++ beecrypt-4.2.1/include/beecrypt/c++/beeyond/BeeCertificate.h	2010-11-26 17:23:01.000000000 +0800
+@@ -147,13 +147,13 @@
+ 			mutable bytearray* enc;
+ 
+ 			BeeCertificate();
+-			BeeCertificate(InputStream& in) throw (IOException);
+ 
+ 			void encodeTBS(DataOutputStream& out) const throw (IOException);
+ 
+ 			bytearray* encodeTBS() const throw (CertificateEncodingException);
+ 
  		public:
- 			typedef vector<const Provider*> provider_vector;
- 			typedef provider_vector::iterator provider_vector_iterator;
--
++			BeeCertificate(InputStream& in) throw (IOException);
+ 			BeeCertificate(const BeeCertificate&) throw (CloneNotSupportedException);
+ 			virtual ~BeeCertificate();
+ 
+Index: beecrypt-4.2.1/include/beecrypt/c++/security/Security.h
+===================================================================
+--- beecrypt-4.2.1.orig/include/beecrypt/c++/security/Security.h	2010-11-26 17:20:55.000000000 +0800
++++ beecrypt-4.2.1/include/beecrypt/c++/security/Security.h	2010-11-26 17:21:36.000000000 +0800
+@@ -61,7 +61,6 @@
+ 			friend class SecureRandom;
+ 			friend class Signature;
+ 
 -		private:
  			struct spi
  			{
  				Object* cspi;
-@@ -91,6 +89,7 @@
+@@ -76,6 +75,7 @@
  			static spi* getSpi(const String& algo, const String& type, const Provider&) throw (NoSuchAlgorithmException);
  			static spi* getFirstSpi(const String& type);
  
@@ -24,20 +42,3 @@ Index: beecrypt-4.1.2/c++/security/Security.h
  			static const String& getKeyStoreDefault();
  
  			static bool _init;
-Index: beecrypt-4.1.2/c++/beeyond/BeeCertificate.h
-===================================================================
---- beecrypt-4.1.2.orig/c++/beeyond/BeeCertificate.h	2004-11-03 09:37:27.000000000 +0000
-+++ beecrypt-4.1.2/c++/beeyond/BeeCertificate.h	2010-07-05 17:16:25.216332324 +0100
-@@ -150,11 +150,11 @@
- 			mutable String* str;
- 
- 			BeeCertificate();
--			BeeCertificate(InputStream& in) throw (IOException);
- 
- 			bytearray* encodeTBS() const;
- 
- 		public:
-+			BeeCertificate(InputStream& in) throw (IOException);
- 			BeeCertificate(const BeeCertificate&);
- 			virtual ~BeeCertificate();
- 
diff --git a/meta/recipes-support/beecrypt/beecrypt_4.1.2.bb b/meta/recipes-support/beecrypt/beecrypt_4.2.1.bb
similarity index 63%
rename from meta/recipes-support/beecrypt/beecrypt_4.1.2.bb
rename to meta/recipes-support/beecrypt/beecrypt_4.2.1.bb
index 0da36d9..8194f7e 100644
--- a/meta/recipes-support/beecrypt/beecrypt_4.1.2.bb
+++ b/meta/recipes-support/beecrypt/beecrypt_4.2.1.bb
@@ -5,12 +5,14 @@
 DESCRIPTION="Beecrypt is a general-purpose cryptography library."
 HOMEPAGE="http://sourceforge.net/projects/beecrypt"
 SRC_URI="${SOURCEFORGE_MIRROR}/beecrypt/beecrypt-${PV}.tar.gz \
-	 file://x64fix.patch \
+#	 file://x64fix.patch \
 	 file://disable-icu-check.patch \
 	 file://fix-security.patch"
-LICENSE = "GPLv2&LGPLv2.1"
+LICENSE = "GPLv2 & LGPLv2.1"
 LIC_FILES_CHKSUM = "file://COPYING;md5=9894370afd5dfe7d02b8d14319e729a1 \
-	            file://COPYING.LIB;md5=dcf3c825659e82539645da41a7908589"
+                    file://COPYING.LIB;md5=dcf3c825659e82539645da41a7908589 \
+                    file://include/beecrypt/beecrypt.h;endline=20;md5=47a93eef539aac237eef86297a4d71c1"
+
 DEPENDS = "icu"
 
 PR = "r0"
@@ -18,6 +20,6 @@ PR = "r0"
 inherit autotools
 acpaths=""
 
-EXTRA_OECONF="--with-arch=${TARGET_ARCH} --without-python --enable-shared --enable-static"
+EXTRA_OECONF="--without-python --enable-shared --enable-static --disable-openmp"
 
 BBCLASSEXTEND = "native"
-- 
1.7.0.4


