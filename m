Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.69.1622564527020203218
 for <poky@lists.yoctoproject.org>;
 Tue, 01 Jun 2021 09:22:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8798C101E
	for <poky@lists.yoctoproject.org>; Tue,  1 Jun 2021 09:22:06 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 320AC3F719
	for <poky@lists.yoctoproject.org>; Tue,  1 Jun 2021 09:22:06 -0700 (PDT)
From: "Ross Burton" <ross@burtonini.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH] meta-poky: remove clutter references
Date: Tue,  1 Jun 2021 17:22:03 +0100
Message-Id: <20210601162203.2379713-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-poky/conf/distro/include/poky-floating-revisions.inc | 2 --
 meta-poky/conf/distro/poky-tiny.conf                      | 1 -
 2 files changed, 3 deletions(-)

diff --git a/meta-poky/conf/distro/include/poky-floating-revisions.inc b/=
meta-poky/conf/distro/include/poky-floating-revisions.inc
index 1fc5045920..4812959fb7 100644
--- a/meta-poky/conf/distro/include/poky-floating-revisions.inc
+++ b/meta-poky/conf/distro/include/poky-floating-revisions.inc
@@ -26,8 +26,6 @@ SRCREV_pn-sato-icon-theme ?=3D "${AUTOREV}"
 SRCREV_pn-matchbox-desktop-sato ?=3D "${AUTOREV}"
 SRCREV_pn-oh-puzzles ?=3D "${AUTOREV}"
 SRCREV_pn-libowl ?=3D "${AUTOREV}"
-SRCREV_pn-clutter ?=3D "${AUTOREV}"
-SRCREV_pn-clutter-gst ?=3D "${AUTOREV}"
 SRCREV_pn-libmatchbox ?=3D "${AUTOREV}"
 SRCREV_pn-ofono ?=3D "${AUTOREV}"
=20
diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro=
/poky-tiny.conf
index e4ff9752e9..8545341d84 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -115,7 +115,6 @@ RDEPENDS_${PN}-mtrace_pn-eglibc =3D ""
=20
 PNBLACKLIST[build-appliance-image] =3D "not buildable with poky-tiny"
 PNBLACKLIST[core-image-base] =3D "not buildable with poky-tiny"
-PNBLACKLIST[core-image-clutter] =3D "not buildable with poky-tiny"
 PNBLACKLIST[core-image-full-cmdline] =3D "not buildable with poky-tiny"
 PNBLACKLIST[core-image-rt] =3D "not buildable with poky-tiny"
 PNBLACKLIST[core-image-rt-sdk] =3D "not buildable with poky-tiny"
--=20
2.25.1

