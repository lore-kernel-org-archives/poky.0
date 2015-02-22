Return-Path: <tang@jtang.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB331E005A9; Sat, 21 Feb 2015 18:03:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 325 seconds by postgrey-1.32 at yocto-www;
	Sat, 21 Feb 2015 18:03:52 PST
Received: from highcastle.jtang.org (mail.jtang.org [173.10.136.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CD57E00288
	for <poky@yoctoproject.org>; Sat, 21 Feb 2015 18:03:52 -0800 (PST)
Received: from krondor.isles (krondor.isles [192.168.1.2])
	(Authenticated sender: tang)
	by highcastle.jtang.org (Postfix) with ESMTPSA id 07880BEEBA
	for <poky@yoctoproject.org>; Sat, 21 Feb 2015 20:58:26 -0500 (EST)
From: "J. Tang" <tang@jtang.org>
Message-Id: <CF59A3B2-C7DB-46CA-BC6C-C552A43296FD@jtang.org>
Date: Sat, 21 Feb 2015 20:58:26 -0500
To: poky@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Subject: [PATCH] base-files: Let user set hostname
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
X-List-Received-Date: Sun, 22 Feb 2015 02:03:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

By default, poky always sets the hostname to machine type. This adds
the environment variable $MACHINE_HOSTNAME that holds the intended
hostname. If set, it overrides any default hostnames. The user can set
$MACHINE_HOSTNAME within his/her local.conf.

Signed-off-by: Jason Tang <tang@jtang.org>
---
 meta/conf/documentation.conf                      |    1 +
 meta/recipes-core/base-files/base-files_3.0.14.bb |    3 +++
 2 files changed, 4 insertions(+)

diff --git a/meta/conf/documentation.conf b/meta/conf/documentation.conf
index 3a918e8..28d5a61 100644
--- a/meta/conf/documentation.conf
+++ b/meta/conf/documentation.conf
@@ -276,6 +276,7 @@ MACHINE_EXTRA_RRECOMMENDS[doc] =3D "A list of =
machine-specific packages to install
 MACHINE_FEATURES[doc] =3D "Specifies the list of hardware features the =
MACHINE supports."
 MACHINE_FEATURES_BACKFILL[doc] =3D "Features to be added to =
MACHINE_FEATURES if not also present in =
MACHINE_FEATURES_BACKFILL_CONSIDERED. This variable is set in the =
meta/conf/bitbake.conf file and is not intended to be =
user-configurable."
 MACHINE_FEATURES_BACKFILL_CONSIDERED[doc] =3D "Features from =
MACHINE_FEATURES_BACKFILL that should not be backfilled (i.e. added to =
MACHINE_FEATURES) during the build."
+MACHINE_HOSTNAME[doc] =3D "Hostname for the target system"
 MACHINEOVERRIDES[doc] =3D "Lists overrides specific to the current =
machine. By default, this list includes the value of MACHINE."
 MAINTAINER[doc] =3D "The email address of the distribution maintainer."
 MIRRORS[doc] =3D "Specifies additional paths from which the =
OpenEmbedded build system gets source code."
diff --git a/meta/recipes-core/base-files/base-files_3.0.14.bb =
b/meta/recipes-core/base-files/base-files_3.0.14.bb
index 6157ff3..a494853 100644
--- a/meta/recipes-core/base-files/base-files_3.0.14.bb
+++ b/meta/recipes-core/base-files/base-files_3.0.14.bb
@@ -118,6 +118,9 @@ do_install_basefilesissue () {
 			echo ${hostname} > ${D}${sysconfdir}/hostname
 		fi
 	fi
+	if [ -n "${MACHINE_HOSTNAME}" ]; then
+		echo "${MACHINE_HOSTNAME}" > ${D}${sysconfdir}/hostname
+	fi
=20
 	install -m 644 ${WORKDIR}/issue*  ${D}${sysconfdir} =20
         if [ -n "${DISTRO_NAME}" ]; then
--=20
1.7.10.4



