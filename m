Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C25E7E00DA2; Thu,  1 Oct 2015 11:06:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3168E00A73
	for <poky@yoctoproject.org>; Thu,  1 Oct 2015 11:06:10 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so885692wic.0
	for <poky@yoctoproject.org>; Thu, 01 Oct 2015 11:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=5rHRTd7oI7pW889ssXEg2tPVRylkt5gm10eeltTSOrg=;
	b=JeHkdV7uhJlSL6Emve0lBvf60euCywFN18j0tW2MFbnOVZxkoj8SepMvjwxwcavUrV
	+U/ug45Sl1Re8iWfPDX/79FJtyCURXd/FG3G81ZEJOD9M3KRDGLL3ycaSlM+LWXDgdfU
	enymaZi+sJw55VMdGzbcdL8btI2rA17M9wpnHoYlpQp8scNsNzkS7pUT44OQs/1Lp8w9
	LLEt+bNxHh08/cg3ITrPGdJv05CGwmLBt2EVQBZl4UOpDIfeY0w90zWJOXAQydPYBbXG
	TdkMnSCm8MD5JyBnDmCgofHsIPy9d7r6XJAeNLL7u8kD8smenncxswfmEj/XV6AhmhQK
	3Nsg==
X-Received: by 10.180.106.4 with SMTP id gq4mr125897wib.53.1443722770010;
	Thu, 01 Oct 2015 11:06:10 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id jf3sm4352813wic.8.2015.10.01.11.06.09
	for <poky@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:06:09 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <F6794A92-A7A2-4519-B5BA-4F5172886C2F@gmail.com>
Date: Thu, 1 Oct 2015 20:06:09 +0200
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 7/9] Correct path for vendorlib, vendorarch, sitelib and sitearch
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
X-List-Received-Date: Thu, 01 Oct 2015 18:06:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


to allow newer dual-life module being installed on host to satisfy
configure and build requirements of some CPAN distributions.

Additionally, fix search path order in perl wrappers.

Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 meta/recipes-devtools/perl/perl-native_5.22.0.bb | 16 +++++++++-------
 meta/recipes-devtools/perl/perl_5.22.0.bb        |  2 +-
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/meta/recipes-devtools/perl/perl-native_5.22.0.bb =
b/meta/recipes-devtools/perl/perl-native_5.22.0.bb
index a9a1cab..b4dda31 100644
--- a/meta/recipes-devtools/perl/perl-native_5.22.0.bb
+++ b/meta/recipes-devtools/perl/perl-native_5.22.0.bb
@@ -28,16 +28,15 @@ do_configure () {
 		-Dcf_by=3D"Open Embedded" \
 		-Dprefix=3D${prefix} \
 		-Dvendorprefix=3D${prefix} \
-		-Dvendorprefix=3D${prefix} \
 		-Dsiteprefix=3D${prefix} \
 		\
 		-Dbin=3D${STAGING_BINDIR}/${PN} \
 		-Dprivlib=3D${STAGING_LIBDIR}/perl/${PV} \
 		-Darchlib=3D${STAGING_LIBDIR}/perl/${PV} \
-		-Dvendorlib=3D${STAGING_LIBDIR}/perl/${PV} \
-		-Dvendorarch=3D${STAGING_LIBDIR}/perl/${PV} \
-		-Dsitelib=3D${STAGING_LIBDIR}/perl/${PV} \
-		-Dsitearch=3D${STAGING_LIBDIR}/perl/${PV} \
+		-Dvendorlib=3D${STAGING_LIBDIR}/perl/vendor_perl/${PV} \
+		-Dvendorarch=3D${STAGING_LIBDIR}/perl/vendor_perl/${PV} =
\
+		-Dsitelib=3D${STAGING_LIBDIR}/perl/site_perl/${PV} \
+		-Dsitearch=3D${STAGING_LIBDIR}/perl/site_perl/${PV} \
 		\
 		-Duseshrplib \
 		-Dusethreads \
@@ -95,8 +94,11 @@ do_install () {
 		install $i ${D}${libdir}/perl/${PV}/CORE
 	done
=20
-	create_wrapper ${D}${bindir}/perl =
PERL5LIB=3D'$PERL5LIB:${STAGING_LIBDIR}/perl/${PV}:${STAGING_LIBDIR}/perl:=
${STAGING_LIBDIR}/perl/site_perl/${PV}:${STAGING_LIBDIR}/perl/vendor_perl/=
${PV}'
-	create_wrapper ${D}${bindir}/perl${PV} =
PERL5LIB=3D'$PERL5LIB:${STAGING_LIBDIR}/perl/${PV}:${STAGING_LIBDIR}/perl$=
{STAGING_LIBDIR}/perl:${STAGING_LIBDIR}/perl/site_perl/${PV}:${STAGING_LIB=
DIR}/perl/vendor_perl/${PV}'
+	# Those wrappers mean that perl installed from sstate (which may =
change
+	# path location) works and that in the nativesdk case, the SDK =
can be
+	# installed to a different location from the one it was built =
for.
+	create_wrapper ${D}${bindir}/perl =
PERL5LIB=3D'$PERL5LIB:${STAGING_LIBDIR}/perl/site_perl/${PV}:${STAGING_LIB=
DIR}/perl/vendor_perl/${PV}:${STAGING_LIBDIR}/perl/${PV}'
+	create_wrapper ${D}${bindir}/perl${PV} =
PERL5LIB=3D'$PERL5LIB:${STAGING_LIBDIR}/perl/site_perl/${PV}:${STAGING_LIB=
DIR}/perl/vendor_perl/${PV}:${STAGING_LIBDIR}/perl/${PV}'
=20
 	# Use /usr/bin/env nativeperl for the perl script.
 	for f in `grep -Il '#! *${bindir}/perl' ${D}/${bindir}/*`; do
diff --git a/meta/recipes-devtools/perl/perl_5.22.0.bb =
b/meta/recipes-devtools/perl/perl_5.22.0.bb
index 3ce7849..f128aca 100644
--- a/meta/recipes-devtools/perl/perl_5.22.0.bb
+++ b/meta/recipes-devtools/perl/perl_5.22.0.bb
@@ -245,7 +245,7 @@ do_install() {
=20
 do_install_append_class-nativesdk () {
         create_wrapper ${D}${bindir}/perl \
-            =
PERL5LIB=3D'$PERL5LIB:$OECORE_NATIVE_SYSROOT/${libdir_nativesdk}/perl:$OEC=
ORE_NATIVE_SYSROOT/${libdir_nativesdk}/perl/${PV}:$OECORE_NATIVE_SYSROOT/$=
{libdir_nativesdk}/perl/site_perl/${PV}:$OECORE_NATIVE_SYSROOT/${libdir_na=
tivesdk}/perl/vendor_perl/${PV}'
+            =
PERL5LIB=3D'$PERL5LIB:$OECORE_NATIVE_SYSROOT/${libdir_nativesdk}/perl/site=
_perl/${PV}:$OECORE_NATIVE_SYSROOT/${libdir_nativesdk}/perl/vendor_perl/${=
PV}:$OECORE_NATIVE_SYSROOT/${libdir_nativesdk}/perl/${PV}'
 }
=20
 PACKAGE_PREPROCESS_FUNCS +=3D "perl_package_preprocess"
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


