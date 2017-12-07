Return-Path: <gael.portay@savoirfairelinux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C80D7E00D75; Thu,  7 Dec 2017 14:28:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.88.110.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
	[208.88.110.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 177EFE00D73
	for <poky@yoctoproject.org>; Thu,  7 Dec 2017 14:28:49 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 4BB4C9C30BC
	for <poky@yoctoproject.org>; Thu,  7 Dec 2017 17:28:49 -0500 (EST)
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id ueOiZGXuU0QZ; Thu,  7 Dec 2017 17:28:48 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id D17FE9C308A;
	Thu,  7 Dec 2017 17:28:48 -0500 (EST)
X-Quarantine-ID: <USubQK3TMXhh>
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
X-Amavis-Alert: BAD HEADER SECTION, Duplicate header field: "References"
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id USubQK3TMXhh; Thu,  7 Dec 2017 17:28:48 -0500 (EST)
Received: from archlinux.mtl.sfl (unknown [192.168.50.172])
	by mail.savoirfairelinux.com (Postfix) with ESMTPSA id A75E19C2F43;
	Thu,  7 Dec 2017 17:28:48 -0500 (EST)
From: =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@savoirfairelinux.com>
To: poky@yoctoproject.org
Date: Thu,  7 Dec 2017 17:29:18 -0500
Message-Id: <50cb4e0efe8ea9c4d1dbaea8f6d8cef418ea6564.1512685340.git.gael.portay@savoirfairelinux.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1512685340.git.gael.portay@savoirfairelinux.com>
References: <cover.1512685340.git.gael.portay@savoirfairelinux.com>
In-Reply-To: <cover.1512685340.git.gael.portay@savoirfairelinux.com>
References: <cover.1512685340.git.gael.portay@savoirfairelinux.com>
MIME-Version: 1.0
Subject: [PATCH 1/1] util-linux: create nativesdk lib packages
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
X-List-Received-Date: Thu, 07 Dec 2017 22:28:50 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

The nativesdk class does not create lib<x> packages as its cross
counterpart does.

	libblkid
	libuuid
	libsmartcols
	libfdisk
	libmount...

Instead theses libraries are shipped into the nativesdk-util-linux
package.

This causes nativesdk images to fail at do_rootfs when a package depends
on util-linux-lib<x> because the nativesdk-util-linux-lib<x> is not
created.

The example below shows what the error looks like with the not created
package nativesdk-util-linux-libuuid.

    	Collected errors:
    	 * calculate_dependencies_for: Cannot satisfy the following dependen=
cies for nativesdk-packagegroup-sdk-host:
    	 *     nativesdk-util-linux-libuuid *
    	 * opkg_solver_install: Cannot install package nativesdk-packagegrou=
p-sdk-host.

The reason comes from the place where the libraries are installed.

Libraries are installed under ${base_libdir} (ie. /lib) for the cross
the package; but they are installed under ${libdir} (ie. /usr/lib) for
nativesdk (and native).

	EXTRA_OECONF =3D "${SHARED_EXTRA_OECONF} --libdir=3D${base_libdir}"

	EXTRA_OECONF_class-native =3D "${SHARED_EXTRA_OECONF} \
	                             --disable-fallocate \
				     --disable-use-tty-group \
	"

The populate_packages_prepend function dynamically creates lib<x>
packages that are installed under ${base_libdir} directory.

The new function populate_packages_prepend_class-nativesdk for nativesdk
mimics the behavior of the cross function.

It creates dynamically nativesdk-lib<x> packages for libraries that are
installed under the ${libdir} directory.

Improves:

	91c0f9e35d util-linux: move libraries to base_libdir
	4cff0bd254 util-linux: Fix QA warnings about ALTERNATIVES
	4571c9e963 util-linux: collect libs for related libxx-dev package
	a7572d7000 util-linux: split libraries dynamically

Signed-off-by: Ga=C3=ABl PORTAY <gael.portay@savoirfairelinux.com>
---
 meta/recipes-core/util-linux/util-linux.inc | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/meta/recipes-core/util-linux/util-linux.inc b/meta/recipes-c=
ore/util-linux/util-linux.inc
index 248e8bee957..4bae86433b1 100644
--- a/meta/recipes-core/util-linux/util-linux.inc
+++ b/meta/recipes-core/util-linux/util-linux.inc
@@ -299,6 +299,13 @@ python populate_packages_prepend() {
                       extra_depends=3D'', prepend=3DTrue, allow_links=3D=
True)
 }
=20
+python populate_packages_prepend_class-nativesdk() {
+    do_split_packages(d, '${libdir}', '^lib(.*)\.so\..*$',
+                      output_pattern=3D'nativesdk-util-linux-lib%s',
+                      description=3D'nativesdk-util-linux lib%s',
+                      extra_depends=3D'', prepend=3DTrue, allow_links=3D=
True)
+}
+
 RDEPENDS_${PN}-bash-completion +=3D "util-linux-lsblk"
 RDEPENDS_${PN}-ptest =3D "bash grep coreutils which util-linux-blkid uti=
l-linux-fsck btrfs-tools"
=20
--=20
2.15.0


