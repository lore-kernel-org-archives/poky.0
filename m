Received: from mx.artzilla.ru (mx.artzilla.ru [45.12.4.101])
 by mx.groups.io with SMTP id smtpd.web08.27503.1655450008612227386
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Jun 2022 00:13:29 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@illumium.org header.s=mail header.b=IyTN/XwM;
 spf=pass (domain: illumium.org, ip: 45.12.4.101, mailfrom: kayo@illumium.org)
From: "K." <kayo@illumium.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=illumium.org; s=mail;
	t=1655450004; bh=ooy68Sw62196Ej84Gcm83J+1cloMHfboyCM8n8tzT2g=;
	h=From:To:Cc:Subject:Date;
	b=IyTN/XwMY4L0xi1EtLPseQ+Ofa5tN94FXNB91BZSBbHWmAYZsSsNdkHsoadsGsTmk
	 cjeOfRzFkv8cI9mZzTgrpYa4bB27iN2X1Fbt4Wn3O8ZiugcegyD57YsRchgOBWBUZa
	 79ZGNaQlbi8sCwlYrey92gRYtP5w29D/U61s141k=
To: poky@lists.yoctoproject.org
Cc: K <kayo@illumium.org>
Subject: [PATCH] perl: Fix perms to avoid patch fails
Date: Fri, 17 Jun 2022 12:13:14 +0500
Message-Id: <20220617071314.3362109-1-kayo@illumium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Fix missing write permissions to avoid problems with applying patches in =
particular on compressed filesystems:

ERROR: perl-5.34.1-r0 do_patch: Applying patch '0001-Somehow-this-module-=
breaks-through-the-perl-wrapper-.patch' on target directory '/home/kayo/d=
evel/elpitech/poc/openbmc/build/evb-ast2600/tmp/work/armv7ahf-vfpv4d16-op=
enbmc-linux-gnueabi/perl/5.34.1-r0/perl-5.34.1'
CmdError('quilt --quiltrc /home/kayo/devel/elpitech/poc/openbmc/build/evb=
-ast2600/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/perl/5.34.1-r0/=
recipe-sysroot-native/etc/quiltrc push', 0, 'stdout: Applying patch 0001-=
Somehow-this-module-breaks-through-the-perl-wrapper-.patch
File cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm is read-only; trying=
 to patch anyway
patching file cpan/ExtUtils-MakeMaker/lib/ExtUtils/MM_Unix.pm
Hunk #1 succeeded at 1147 (offset 37 lines).
Hunk #2 succeeded at 2086 (offset 77 lines).
patch: setting attribute btrfs.compression for btrfs.compression: Permiss=
ion denied
Patch 0001-Somehow-this-module-breaks-through-the-perl-wrapper-.patch doe=
s not apply (enforce with -f)

Signed-off-by: K <kayo@illumium.org>
---
 meta/recipes-devtools/perl/perl_5.36.0.bb | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/meta/recipes-devtools/perl/perl_5.36.0.bb b/meta/recipes-dev=
tools/perl/perl_5.36.0.bb
index 4456cdbcfb..6374717ab0 100644
--- a/meta/recipes-devtools/perl/perl_5.36.0.bb
+++ b/meta/recipes-devtools/perl/perl_5.36.0.bb
@@ -45,6 +45,13 @@ PACKAGECONFIG[gdbm] =3D ",-Ui_gdbm,gdbm"
 # Don't generate comments in enc2xs output files. They are not reproduci=
ble
 export ENC2XS_NO_COMMENTS =3D "1"
=20
+# Fix missing write permissions to avoid troubles
+# with applying patches on compressed filesystems
+do_fix_perms() {
+    find ${S} -type f ! -perm -u=3Dw -exec chmod u+w {} \;
+}
+addtask do_fix_perms after do_unpack before do_patch
+
 do_configure:prepend() {
     cp -rfp ${STAGING_DATADIR_NATIVE}/perl-cross/* ${S}
 }
--=20
2.36.0

