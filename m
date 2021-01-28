Received: from mail.iot.bzh (mail.iot.bzh [51.75.236.24])
 by mx.groups.io with SMTP id smtpd.web10.24746.1611842132383693606
 for <poky@lists.yoctoproject.org>;
 Thu, 28 Jan 2021 05:55:33 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@iot.bzh header.s=20180822 header.b=srbEukLH;
 spf=pass (domain: iot.bzh, ip: 51.75.236.24, mailfrom: julien.massot@iot.bzh)
Received: from linux.home (lfbn-ren-1-2120-93.w92-167.abo.wanadoo.fr [92.167.199.93])
	by mail.iot.bzh (Postfix) with ESMTPSA id D3F34400A0;
	Thu, 28 Jan 2021 14:55:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iot.bzh; s=20180822;
	t=1611842127; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:references; bh=TQQCTFVzQ9ZJwQhxlPviG8Wf3h2e59b1JCRv4D1ebrA=;
	b=srbEukLHT8qTL9rkE2sFp55tcRgniAZu1pZ2YhYiVLHJh4FaxYrGZQbeUfIEebK54EZIwF
	qWE84Wdnv+3c+Bie17rVBjy6bvV0X+Sr1IUOTyr1Kdzswxh0EEpdCytIuvj9lgEALS1iID
	GJ1JeUxX1J48W7WP5k2Se/lkGSq+e4H2uJiTs+DX5pXRpvZywgo+y3yZHWE0j79IZmadI+
	mHEkjOpjb7LHhm0N3gJ51vk7L2ldvsX0KilCFYVp0y9x3aGQevQtbbfcqoh23IB4BUmFR9
	gxtwnRzTPOx+fDVx4AujFy5E6DZQi0Z8X39DH55nJNDuSKxoGP5c6YCAILzU5A==
From: julien.massot@iot.bzh
To: poky@lists.yoctoproject.org
Cc: Julien Massot <julien.massot@iot.bzh>
Subject: [PATCH dunfell] rng-tools: backport 6.11 from master
Date: Thu, 28 Jan 2021 14:55:21 +0100
Message-Id: <20210128135521.106224-1-julien.massot@iot.bzh>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

rng-tools < 6.11 may spam the console when only jitter source
is available.

"""
rngd[379]: [jitter]: Unable to obtain AES key, disabling AES in JITTER so=
urce
rngd[379]: Entropy Generation is slow, consider tuning/adding sources
...
rngd[379]: Entropy Generation is slow, consider tuning/adding sources
"""
Please also look at

https://github.com/nhorman/rng-tools/pull/99/commits

Backport the recipe from master so that we no longer have this
issue.
---
 .../rng-tools/rng-tools/rngd.service          | 21 ++++++++++++++++++-
 .../{rng-tools_6.9.bb =3D> rng-tools_6.11.bb}   | 16 ++++++++++----
 2 files changed, 32 insertions(+), 5 deletions(-)
 rename meta/recipes-support/rng-tools/{rng-tools_6.9.bb =3D> rng-tools_6=
.11.bb} (79%)

diff --git a/meta/recipes-support/rng-tools/rng-tools/rngd.service b/meta=
/recipes-support/rng-tools/rng-tools/rngd.service
index aaaaa29074..0559b97991 100644
--- a/meta/recipes-support/rng-tools/rng-tools/rngd.service
+++ b/meta/recipes-support/rng-tools/rng-tools/rngd.service
@@ -8,6 +8,25 @@ Conflicts=3Dshutdown.target
 [Service]
 EnvironmentFile=3D-@SYSCONFDIR@/default/rng-tools
 ExecStart=3D@SBINDIR@/rngd -f $EXTRA_ARGS
+CapabilityBoundingSet=3DCAP_SYS_ADMIN
+IPAddressDeny=3Dany
+LockPersonality=3Dyes
+MemoryDenyWriteExecute=3Dyes
+NoNewPrivileges=3Dyes
+PrivateTmp=3Dyes
+ProtectControlGroups=3Dyes
+ProtectHome=3Dyes
+ProtectHostname=3Dyes
+ProtectKernelModules=3Dyes
+ProtectKernelLogs=3Dyes
+ProtectSystem=3Dstrict
+RestrictAddressFamilies=3DAF_UNIX
+RestrictNamespaces=3Dyes
+RestrictRealtime=3Dyes
+RestrictSUIDSGID=3Dyes
+SystemCallArchitectures=3Dnative
+SystemCallErrorNumber=3DEPERM
+SystemCallFilter=3D@system-service
=20
 [Install]
-WantedBy=3Dmulti-user.target
+WantedBy=3Dsysinit.target
diff --git a/meta/recipes-support/rng-tools/rng-tools_6.9.bb b/meta/recip=
es-support/rng-tools/rng-tools_6.11.bb
similarity index 79%
rename from meta/recipes-support/rng-tools/rng-tools_6.9.bb
rename to meta/recipes-support/rng-tools/rng-tools_6.11.bb
index 913342c315..61a0cef2e0 100644
--- a/meta/recipes-support/rng-tools/rng-tools_6.9.bb
+++ b/meta/recipes-support/rng-tools/rng-tools_6.11.bb
@@ -6,7 +6,7 @@ HOMEPAGE =3D "https://github.com/nhorman/rng-tools"
 BUGTRACKER =3D "https://github.com/nhorman/rng-tools/issues"
 LICENSE =3D "GPLv2"
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Db234ee4d69f5fce4486a80fdaf4a4=
263"
-DEPENDS =3D "sysfsutils"
+DEPENDS =3D "sysfsutils openssl"
=20
 SRC_URI =3D "\
     git://github.com/nhorman/rng-tools.git \
@@ -14,17 +14,18 @@ SRC_URI =3D "\
     file://default \
     file://rngd.service \
 "
-SRCREV =3D "4a865797a69dd38c64a86aa32884ecc9ba7b4d08"
+SRCREV =3D "2ea13473fd5bfea3c861dc0e23bd65e2afe8007b"
=20
 S =3D "${WORKDIR}/git"
=20
 inherit autotools update-rc.d systemd pkgconfig
=20
-PACKAGECONFIG ??=3D "libgcrypt libjitterentropy"
+EXTRA_OECONF =3D "--without-rtlsdr"
+
+PACKAGECONFIG ??=3D "libjitterentropy"
 PACKAGECONFIG_libc-musl =3D "libargp libjitterentropy"
=20
 PACKAGECONFIG[libargp] =3D "--with-libargp,--without-libargp,argp-standa=
lone,"
-PACKAGECONFIG[libgcrypt] =3D "--with-libgcrypt,--without-libgcrypt,libgc=
rypt,"
 PACKAGECONFIG[libjitterentropy] =3D "--enable-jitterentropy,--disable-ji=
tterentropy,libjitterentropy"
 PACKAGECONFIG[libp11] =3D "--with-pkcs11,--without-pkcs11,libp11 openssl=
"
 PACKAGECONFIG[nistbeacon] =3D "--with-nistbeacon,--without-nistbeacon,cu=
rl libxml2 openssl"
@@ -49,4 +50,11 @@ do_install_append() {
         -e 's,@SBINDIR@,${sbindir},g' \
         ${D}${sysconfdir}/init.d/rng-tools \
         ${D}${systemd_system_unitdir}/rngd.service
+
+    if [ "${@bb.utils.contains('PACKAGECONFIG', 'nistbeacon', 'yes', 'no=
', d)}" =3D "yes" ]; then
+        sed -i \
+            -e '/^IPAddressDeny=3Dany/d' \
+            -e '/^RestrictAddressFamilies=3D/ s/$/ AF_INET AF_INET6/' \
+            ${D}${systemd_system_unitdir}/rngd.service
+    fi
 }
--=20
2.29.2

