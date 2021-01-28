Received: from mail.iot.bzh (mail.iot.bzh [51.75.236.24])
 by mx.groups.io with SMTP id smtpd.web10.24781.1611842285881199689
 for <poky@lists.yoctoproject.org>;
 Thu, 28 Jan 2021 05:58:06 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@iot.bzh header.s=20180822 header.b=d2UN3dhE;
 spf=pass (domain: iot.bzh, ip: 51.75.236.24, mailfrom: julien.massot@iot.bzh)
Received: from linux.home (lfbn-ren-1-2120-93.w92-167.abo.wanadoo.fr [92.167.199.93])
	by mail.iot.bzh (Postfix) with ESMTPSA id 2F432400A0;
	Thu, 28 Jan 2021 14:58:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iot.bzh; s=20180822;
	t=1611842284; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:references; bh=GvMhpYOEI2piulaXoH5/Qtwk0sJ357+2RBO5Urv73sg=;
	b=d2UN3dhEas/vCQKYsmd2NT6XAdJmT9HYwgi09SPH2galMWi2wJkVu/Uw77UQw4Sb/fiOZY
	X7l7sWLCmz8FS/1ZiDzd+aGMJhqgmNb8hGJAscFYZ0yta5eSOBb67ljx1Uek/+a4mvzl4g
	2nGYhYa6eUdwb9g3lKUxyKa+zKy5sSflNflnACeKV+O6ctOlPogaT8Fi9/a/jgKisd4z/x
	ITf1yYM5XX0mH9Zfs6VTm6uXx01ZAZSXupo4iR5K75TFdC5u71g9jYhvkdjUtQE0bl3Tgu
	//Dq4IjpmYcqIRZSA7+sxWBqud+76uwddDcQInfskK61Dl7NOdbICUc+2RE7gQ==
From: "Julien Massot" <julien.massot@iot.bzh>
To: poky@lists.yoctoproject.org
Cc: Julien Massot <julien.massot@iot.bzh>
Subject: [PATCH v2 dunfell] rng-tools: backport 6.11 from master
Date: Thu, 28 Jan 2021 14:57:58 +0100
Message-Id: <20210128135758.106532-1-julien.massot@iot.bzh>
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

Signed-off-by: Julien Massot <julien.massot@iot.bzh>
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

