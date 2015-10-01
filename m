Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D689CE00CAD; Thu,  1 Oct 2015 11:05:43 -0700 (PDT)
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
	*      [209.85.212.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC34FE00A73
	for <poky@yoctoproject.org>; Thu,  1 Oct 2015 11:05:36 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so870092wic.0
	for <poky@yoctoproject.org>; Thu, 01 Oct 2015 11:05:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=Cr74FfF7dZ2YI75UQSPQUJnjXOdvvuO7Am12u0KxHiA=;
	b=IXLH4HoQF0fKerk34RS9mrJJGw9rvxEMroLLB1xbYtufSvPyXH/Yyq8Y4ghhA0c/7X
	wuxYN8o1gCgWvZd1b7FMWYaafdTQZZRKFxGXbH0H//nE/zykCb/htOCL3fgjJvvafw4A
	3uiq0mqq07C83e5Adgyy+1Tv2l3+L6AZihK2VAO9IMlXTFC6GbiTGPlw2fqnGlqTCHPK
	btxaQqWS8cYf5jmJ3RMMVkLpsGraOo0Nx6xCevKEBwwU40vCxGYmQjvcYjtNDHj6t/Gm
	3deUevR60l/AMSEq/zAJrShuPX1BL1DYUeyuqxZIAq41sb6S51Oa01SNJgSH+Z0GuyQb
	rVdQ==
X-Received: by 10.194.250.40 with SMTP id yz8mr14053872wjc.37.1443722736156;
	Thu, 01 Oct 2015 11:05:36 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id jf3sm4352813wic.8.2015.10.01.11.05.35
	for <poky@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:05:35 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <A4354556-2ABD-4B3F-9746-1D17D4B0849A@gmail.com>
Date: Thu, 1 Oct 2015 20:05:35 +0200
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 6/9] fix cpan builds
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
X-List-Received-Date: Thu, 01 Oct 2015 18:05:43 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


* add support even for xs modules with more than 3 levels as
  B::Hooks::End::Of::Scope or Math::Random::ISAAC::XS
* correct handling of Module::Build (as far as stolen from pkgsrc
  and my humble knowledge)
* configure to install to vendor_libs as default, even when
  inherited do_install remains unused (overwritten do_install)

Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 meta/classes/cpan-base.bbclass  |  4 ++++
 meta/classes/cpan.bbclass       |  2 +-
 meta/classes/cpan_build.bbclass | 13 +++++++++++--
 3 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/meta/classes/cpan-base.bbclass =
b/meta/classes/cpan-base.bbclass
index d9817ba..7810a4d 100644
--- a/meta/classes/cpan-base.bbclass
+++ b/meta/classes/cpan-base.bbclass
@@ -49,7 +49,11 @@ PERLVERSION[vardepvalue] =3D ""
 FILES_${PN}-dbg +=3D "${PERLLIBDIRS}/auto/*/.debug \
                     ${PERLLIBDIRS}/auto/*/*/.debug \
                     ${PERLLIBDIRS}/auto/*/*/*/.debug \
+                    ${PERLLIBDIRS}/auto/*/*/*/*/.debug \
+                    ${PERLLIBDIRS}/auto/*/*/*/*/*/.debug \
                     =
${PERLLIBDIRS}/vendor_perl/${PERLVERSION}/auto/*/.debug \
                     =
${PERLLIBDIRS}/vendor_perl/${PERLVERSION}/auto/*/*/.debug \
                     =
${PERLLIBDIRS}/vendor_perl/${PERLVERSION}/auto/*/*/*/.debug \
+                    =
${PERLLIBDIRS}/vendor_perl/${PERLVERSION}/auto/*/*/*/*/.debug \
+                    =
${PERLLIBDIRS}/vendor_perl/${PERLVERSION}/auto/*/*/*/*/*/.debug \
                     "
diff --git a/meta/classes/cpan.bbclass b/meta/classes/cpan.bbclass
index e2bbd2f..8e079e0 100644
--- a/meta/classes/cpan.bbclass
+++ b/meta/classes/cpan.bbclass
@@ -17,7 +17,7 @@ export PERLHOSTLIB =3D =
"${STAGING_LIBDIR_NATIVE}/perl-native/perl/${@get_perl_vers
=20
 cpan_do_configure () {
 	export PERL5LIB=3D"${PERL_ARCHLIB}"
-	yes '' | perl ${EXTRA_PERLFLAGS} Makefile.PL ${EXTRA_CPANFLAGS}
+	yes '' | perl ${EXTRA_PERLFLAGS} Makefile.PL INSTALLDIRS=3Dvendor =
${EXTRA_CPANFLAGS}
=20
 	# Makefile.PLs can exit with success without generating a
 	# Makefile, e.g. in cases of missing configure time
diff --git a/meta/classes/cpan_build.bbclass =
b/meta/classes/cpan_build.bbclass
index 4f648a6..3653748 100644
--- a/meta/classes/cpan_build.bbclass
+++ b/meta/classes/cpan_build.bbclass
@@ -8,6 +8,7 @@ EXTRA_CPAN_BUILD_FLAGS ?=3D ""
 # Env var which tells perl if it should use host (no) or target (yes) =
settings
 export PERLCONFIGTARGET =3D "${@is_target(d)}"
 export PERL_ARCHLIB =3D =
"${STAGING_LIBDIR}${PERL_OWN_DIR}/perl/${@get_perl_version(d)}"
+export PERLHOSTLIB =3D =
"${STAGING_LIBDIR_NATIVE}/perl-native/perl/${@get_perl_version(d)}/"
 export LD =3D "${CCLD}"
=20
 cpan_build_do_configure () {
@@ -24,14 +25,22 @@ cpan_build_do_configure () {
 				--install_path bindoc=3D${mandir}/man1 \
 				--install_path libdoc=3D${mandir}/man3 \
                                 ${EXTRA_CPAN_BUILD_FLAGS}
+
+	# Build.PLs can exit with success without generating a
+	# Build, e.g. in cases of missing configure time
+	# dependencies. This is considered a best practice by
+	# cpantesters.org. See:
+	#  * http://wiki.cpantesters.org/wiki/CPANAuthorNotes
+	#  * =
http://www.nntp.perl.org/group/perl.qa/2008/08/msg11236.html
+	[ -e Build ] || bbfatal "No Build was generated by Build.PL"
 }
=20
 cpan_build_do_compile () {
-        perl Build
+        perl Build verbose=3D1
 }
=20
 cpan_build_do_install () {
-	perl Build install
+	perl Build install --destdir ${D}
 }
=20
 EXPORT_FUNCTIONS do_configure do_compile do_install
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


