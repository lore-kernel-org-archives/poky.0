Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F251AE00BB7; Wed, 19 Dec 2018 13:37:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.170 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srinivasan.rns[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
	[209.85.167.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 464F5E00A1A;
	Wed, 19 Dec 2018 13:37:32 -0800 (PST)
Received: by mail-oi1-f170.google.com with SMTP id y1so2831493oie.12;
	Wed, 19 Dec 2018 13:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=/J7FASiCM1JqCmcu1P4+JtVo76QQl4unk2qjIlJkQa4=;
	b=MDwd0vAbMR93ueavy28eIjxNg3yGam9O7hQtMqIunIBzWnD3FPyAwPVhxgmfpE0PzK
	7wV+A//t+zljc1EkkoAKOZ6fUEcC+9EbDE2kMNvKc9kePXsZGcVcVNk8h1B+MKRD6VTd
	1BfRzKARRP5Sqv0SKHl15oROom69PzJECmXvYZOeN0ZpKWb3Llbx9hxb787kkilrMckY
	zX242m0LM54Je2Y+j7ZBHzuv8KB3A/VF7TiG1doj+z00CeoQoRqoPxQUlgYxQVTE5nLb
	9r1uMmftvGobjhTPYzKHN/UP/Z7U3+iREsE5XtABqw1iwUt5mCASYwSXg5sMvYqHOvvz
	NmZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=/J7FASiCM1JqCmcu1P4+JtVo76QQl4unk2qjIlJkQa4=;
	b=aDXwqffYRp8T2yxw7JECBXQFcobIiQ1hmc3ANAfBkxQFqYCuBMABA9p9QuW8SDsIwz
	0GvBtjsLnuWATHus/nNmX6Fvybsl2d4F8/csWHxDG/L3qjoYe4RTPJZfBS+XiuS1gu+w
	zeUhFqANrF3PyVwiD9XfegRGOWMqEdpH3oYHRWOOqwcxugVx//m8qU+r/snRAJP3GOFL
	ADxDZKUgI24NrgYtDbTQJtPDhX+lW7N2V08UV7eexkQdAu1IzaCUO/a0euwmCG+bepVy
	ks4F/w2qhqXYpxcqDLMKvZbItxzh4EO8oCfnAL6uACh4AL+OpStYvqThmOTWWW9X/u7D
	pRRQ==
X-Gm-Message-State: AA+aEWb9f98AsAB69bZenh1lTJEQz6G4AZURTKepLjgTMqaIEnKp3/P4
	nprvnmYSrFUUezpFp3wcMmCl+yTlHuMbyTWJNnbsayVICFQ=
X-Google-Smtp-Source: AFSGD/X28xZ72S6A4AvxEzVfEoeiyw892lhXTYopBIjnBOD0qNlUcP+vxQTl0RoKt5zbhtgPI0K90mRzJ9qDjwcLwzY=
X-Received: by 2002:aca:ad53:: with SMTP id w80mr348992oie.148.1545255450625; 
	Wed, 19 Dec 2018 13:37:30 -0800 (PST)
MIME-Version: 1.0
From: srinivasan <srinivasan.rns@gmail.com>
Date: Thu, 20 Dec 2018 03:07:21 +0530
Message-ID: <CAFsTbWeDujPhT2WM-MAquAZDd2177wWDmV3qb7kKcfkGyDBWEw@mail.gmail.com>
To: poky@yoctoproject.org, yocto-infrastructure@yoctoproject.org, 
	yocto-bsp@yoctoproject.org, yocto-builds@yoctoproject.org, 
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>, meta-freescale@yoctoproject.org,
	meta-freescale-request@yoctoproject.org
Subject: =?UTF-8?B?RXJyb3IgOiBmc2wtaW1hZ2UtcXQ1LXZhbGlkYXRpb24taW14LWlteDhtbWV2ay0yMDE4MTIxOTIxMDUwNi5yb290ZnMuZXh0NOKAmTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeSBpbiBpbXgtNC4xNC43OC0xLjAuMF9nYS54bWwgaW4gaW14LWxpbnV4LXN1bW8gYnJhbmNo?=
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
X-List-Received-Date: Wed, 19 Dec 2018 21:37:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear yocto project experts,

As all our yocto bsps for other hardware platforms support are
developed on yocto sumo version, (And I was able to do the build setup
for imx-linux-rocko ie., yocto rocko version), but now I need to do
for sumo version as this is followed and maintained unique for all our
hardware platfroms, In fact I see for imx-linux-sumo support also
exists, when I try to do this yocto sumo version of build setup using
the below command, I am seeing the below issue, Could you please do
the needful in resolving the below issue


And also, I see there is support for imx yocto bsps for sumo version
ie., in the below link:

imx-manifest - i.MX Release Manifest


$repo init -u https://source.codeaurora.org/external/imx/imx-manifest
-b imx-linux-sumo -m imx-4.14.78-1.0.0_ga.xml

$repo sync

$ DISTRO=3Dfsl-imx-wayland MACHINE=3Dimx8mmevk source fsl-setup-release.sh
-b build-wayland

Build directory is build-wayland

Welcome to Freescale Community BSP

The Yocto Project has extensive documentation about OE including a
reference manual which can be found at:
http://yoctoproject.org/documentation

For more information about OpenEmbedded see their website:
http://www.openembedded.org/

You can now run 'bitbake <target>'

Common targets are:
core-image-minimal
meta-toolchain
meta-toolchain-sdk
adt-installer
meta-ide-support

Your configuration files at build-wayland have not been touched.
BSPDIR=3D
BUILD_DIR=3D.
meta-freescale directory found
srinivasan@srinivasan-UX305UA:/media/srinivasan/appu/imx8_sumo/imx-yocto-bs=
p/build-wayland$
bitbake fsl-image-qt5-validation-imx
NOTE: Your conf/bblayers.conf has been automatically updated.
WARNING: You have included the meta-gnome layer, but 'x11' has not
been enabled in your DISTRO_FEATURES. Some bbappend files may not take
effect. See the meta-gnome README for details on enabling meta-gnome
support.
WARNING: Host distribution "ubuntu-14.04" has not been validated with
this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution.
Loading cache: 100%
|##########################################################################=
###########################################################################=
|
Time: 0:00:01
Loaded 3463 entries from dependency cache.
Parsing recipes: 100%
|##########################################################################=
#########################################################################|
Time: 0:00:01
Parsing of 2548 .bb files complete (2547 cached, 1 parsed). 3464
targets, 453 skipped, 7 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
NOTE: Multiple providers are available for runtime ptpd (ptpd, ptpd-qoriq)
Consider defining a PREFERRED_RPROVIDER entry to match ptpd
NOTE: Multiple providers are available for runtime ptpd-dev (ptpd, ptpd-qor=
iq)
Consider defining a PREFERRED_RPROVIDER entry to match ptpd-dev

Build Configuration:
BB_VERSION =3D "1.38.0"
BUILD_SYS =3D "x86_64-linux"
NATIVELSBSTRING =3D "ubuntu-14.04"
TARGET_SYS =3D "aarch64-poky-linux"
MACHINE =3D "imx8mmevk"
DISTRO =3D "fsl-imx-wayland"
DISTRO_VERSION =3D "4.14-sumo"
TUNE_FEATURES =3D "aarch64"
TARGET_FPU =3D ""
meta
meta-poky =3D "HEAD:64a257fa22126c4a40ff7e03424a404e360ebe1e"
meta-oe
meta-multimedia =3D "HEAD:2bb21ef27c4b0c9d52d30b3b2c5a0160fd02b966"
meta-freescale =3D "HEAD:407c6cf408969445031a492e2d25e0e2749582ea"
meta-freescale-3rdparty =3D "HEAD:88a29631809d1af0df618245430db29f2a7012b5"
meta-freescale-distro =3D "HEAD:f7e2216e93aff14ac32728a13637a48df436b7f4"
meta-bsp
meta-sdk =3D "HEAD:9867dae67c158e0820bf226bd18b792623e99b25"
meta-browser =3D "HEAD:75640e14e325479c076b6272b646be7a239c18aa"
meta-gnome
meta-networking
meta-python
meta-filesystems =3D "HEAD:2bb21ef27c4b0c9d52d30b3b2c5a0160fd02b966"
meta-qt5 =3D "HEAD:d4e7f73d04e8448d326b6f89908701e304e37d65"

Initialising tasks: 100%
|##########################################################################=
######################################################################|
Time: 0:00:07
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: fsl-image-qt5-validation-imx-1.0-r0 do_image_sdcard: Function
failed: do_image_sdcard (log file is located at
/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/build-wayland/tmp/work/imx8m=
mevk-poky-linux/fsl-image-qt5-validation-imx/1.0-r0/temp/log.do_image_sdcar=
d.20472)
ERROR: Logfile of failure stored in:
/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/build-wayland/tmp/work/imx8m=
mevk-poky-linux/fsl-image-qt5-validation-imx/1.0-r0/temp/log.do_image_sdcar=
d.20472
Log data follows:
| DEBUG: Executing python function set_image_size
| DEBUG: 1717331.200000 =3D 1321024 * 1.300000
| DEBUG: 1717331.200000 =3D max(1717331.200000, 65536)[1717331.200000] + 1
| DEBUG: 1717332.000000 =3D int(1717331.200000)
| DEBUG: 1720320 =3D aligned(1717332)
| DEBUG: returning 1720320
| DEBUG: Python function set_image_size finished
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are
['virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/pok=
y/meta/recipes-devtools/makedevs/makedevs_1.0.1.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta-fsl-bsp-releas=
e/imx/meta-bsp/recipes-kernel/linux/linux-imx_4.14.78.bb:do_populate_sysroo=
t',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta=
-fsl-bsp-release/imx/meta-bsp/recipes-devtools/python/python-pycrypto_2.6.1=
.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/libtool/libtool-native_2.4.6.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-connectivity/openssl/openssl_1.0.2p.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-k=
ernel/kmod/kmod-native_git.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/gcc/gcc-cross_7.3.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/mtools/mtools_4.0.18.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta-fsl-bsp-releas=
e/imx/meta-bsp/recipes-security/optee-imx/optee-os-imx_git.bb:do_populate_s=
ysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/libtool/libtool-cross_2.4.6.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/mklibs/mklibs-native_0.1.43.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta-fsl-bsp-releas=
e/imx/meta-bsp/recipes-bsp/u-boot/u-boot-imx_2018.03.bb:do_populate_sysroot=
',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-extended/pigz/pigz_2.4.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/dosfstools/dosfstools_4.1.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-c=
ore/glibc/ldconfig-native_2.12.1.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/pkgconfig/pkgconfig_git.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-support/lzop/lzop_1.03.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/python/python-native_2.7.15.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/swig/swig_3.0.12.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/opkg-utils/opkg-utils_0.3.6.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-extended/parted/parted_3.2.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-extended/pbzip2/pbzip2_1.1.13.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/gcc/gcc-runtime_7.3.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-c=
ore/glibc/glibc_2.27.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/binutils/binutils-cross_2.30.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta-fsl-bsp-releas=
e/imx/meta-bsp/recipes-bsp/firmware-imx/firmware-imx_8.0.bb:do_populate_sys=
root',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-core/update-rc.d/update-rc.d_0.7.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-core/zlib/zlib_1.2.11.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/prelink/prelink_git.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/bison/bison_3.0.4.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/dnf/dnf_2.7.5.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/autoconf/autoconf_2.69.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/quilt/quilt-native_0.65.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta-fsl-bsp-releas=
e/imx/meta-bsp/recipes-bsp/imx-atf/imx-atf_1.5.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/opkg/opkg_0.3.6.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-extended/bc/bc_1.06.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/createrepo-c/createrepo-c_git.bb:do_populate_sysroot=
',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/automake/automake_1.15.1.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-bsp/u-boot/u-boot-mkimage_2018.01.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/rpm/rpm_4.14.1.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/qemu/qemuwrapper-cross_1.0.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-k=
ernel/kmod/depmodwrapper-cross_1.0.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/python/python_2.7.15.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-kernel/dtc/dtc_1.4.5.bb:do_populate_sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['makedevs-native',
'linux-imx', 'python-pycrypto-native', 'libtool-native',
'openssl-native', 'kmod-native', 'gcc-cross-aarch64', 'mtools-native',
'optee-os-imx', 'libtool-cross', 'mklibs-native', 'u-boot-imx',
'pigz-native', 'dosfstools-native', 'ldconfig-native',
'pkgconfig-native', 'lzop-native', 'python-native', 'swig-native',
'opkg-utils-native', 'parted-native', 'pbzip2-native', 'gcc-runtime',
'glibc', 'binutils-cross-aarch64', 'gnu-config-native',
'firmware-imx', 'update-rc.d-native', 'zlib-native', 'prelink-native',
'bison-native', 'dnf-native', 'autoconf-native', 'quilt-native',
'imx-atf', 'opkg-native', 'bc-native', 'createrepo-c-native',
'automake-native', 'u-boot-mkimage-native', 'pseudo-native',
'rpm-native', 'qemuwrapper-cross', 'depmodwrapper-cross', 'python',
'e2fsprogs-native', 'dtc-native', 'gmp-native',
'texinfo-dummy-native', 'shadow-native', 'debianutils-native',
'systemd-systemctl-native', 'qemu-native', 'gtk-doc-native',
'python3-native', 'xz-native', 'linux-libc-headers', 'flex-native',
'libmpc-native', 'mpfr-native', 'gdk-pixbuf-native',
'gettext-minimal-native', 'lzo-native', 'sqlite3-native', 'db-native',
'readline-native', 'gdbm-native', 'expat-native', 'bzip2-native',
'libpcre-native', 'util-linux-native', 'ncurses-native', 'libgcc',
'elfutils-native', 'binutils-native', 'libcomps-native',
'librepo-native', 'python3-iniparse-native', 'cmake-native',
'ninja-native', 'libdnf-native', 'm4-native', 'libarchive-native',
'libsolv-native', 'libxml2-native', 'file-native', 'glib-2.0-native',
'curl-native', 'dbus-native', 'popt-native', 'nss-native', 'bzip2',
'gdbm', 'openssl', 'sqlite3', 'libffi', 'zlib', 'readline', 'db',
'attr-native', 'alsa-lib-native', 'pixman-native', 'libsdl-native',
'libpng-native', 'shared-mime-info-native', 'libjpeg-turbo-native',
'gobject-introspection-native', 'libcheck-native', 'gpgme-native',
'python3-six-native', 're2c-native', 'libffi-native',
'autoconf-archive-native', 'nspr-native', 'opkg-utils',
'cryptodev-linux', 'ncurses', 'util-macros-native',
'libxrender-native', 'libxext-native', 'libxrandr-native',
'libx11-native', 'intltool-native', 'libgpg-error-native',
'libassuan-native', 'python3-setuptools-native', 'xproto-native',
'renderproto-native', 'xextproto-native', 'randrproto-native',
'xtrans-native', 'inputproto-native', 'libxcb-native',
'kbproto-native', 'gettext-native', 'libxml-parser-perl-native',
'unzip-native', 'libxau-native', 'libpthread-stubs-native',
'libxdmcp-native', 'xcb-proto-native', 'perl-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_image_sdcard
| 0+0 records in
| 0+0 records out
| 0 bytes (0 B) copied, 0.000150234 s, 0.0 kB/s
| Model: (file)
| Disk /media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/build-wayland/tmp/wor=
k/imx8mmevk-poky-linux/fsl-image-qt5-validation-imx/1.0-r0/deploy-fsl-image=
-qt5-validation-imx-image-complete/fsl-image-qt5-validation-imx-imx8mmevk-2=
0181219205736.rootfs.sdcard:
1845MB
| Sector size (logical/physical): 512B/512B
| Partition Table: msdos
| Disk Flags:
|
| Number Start End Size Type File system Flags
| 1 8389kB 75.5MB 67.1MB primary lba
| 2 75.5MB 1837MB 1762MB primary
|
| 1368+1 records in
| 1368+1 records out
| 1401544 bytes (1.4 MB) copied, 0.251212 s, 5.6 MB/s
| mkfs.fat: warning - lowercase labels might not work properly with
DOS or Windows
| mkfs.fat 4.1 (2017-01-24)
| 8+0 records in
| 8+0 records out
| 67108864 bytes (67 MB) copied, 0.121636 s, 552 MB/s
| dd: failed to open
=E2=80=98/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/build-wayland/tmp/w=
ork/imx8mmevk-poky-linux/fsl-image-qt5-validation-imx/1.0-r0/deploy-fsl-ima=
ge-qt5-validation-imx-image-complete/fsl-image-qt5-validation-imx-imx8mmevk=
-20181219205736.rootfs.ext4=E2=80=99:
No such file or directory
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_image_sdcard (log file is located at
/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/build-wayland/tmp/work/imx8m=
mevk-poky-linux/fsl-image-qt5-validation-imx/1.0-r0/temp/log.do_image_sdcar=
d.20472)
ERROR: Task (/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta-fs=
l-bsp-release/imx/meta-sdk/dynamic-layers/qt5-layer/recipes-fsl/images/fsl-=
image-qt5-validation-imx.bb:do_image_sdcard)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 6130 tasks of which 6005 didn't need to
be rerun and 1 failed.

Summary: 1 task failed:
/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta-fsl-bsp-release=
/imx/meta-sdk/dynamic-layers/qt5-layer/recipes-fsl/images/fsl-image-qt5-val=
idation-imx.bb:do_image_sdcard
Summary: There were 2 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
srinivasan@srinivasan-UX305UA:/media/srinivasan/appu/imx8_sumo/imx-yocto-bs=
p/build-wayland$
bitbake fsl-image-qt5-validation-imx
WARNING: You have included the meta-gnome layer, but 'x11' has not
been enabled in your DISTRO_FEATURES. Some bbappend files may not take
effect. See the meta-gnome README for details on enabling meta-gnome
support.
WARNING: Host distribution "ubuntu-14.04" has not been validated with
this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution.
Loading cache: 100%
|##########################################################################=
###########################################################################=
|
Time: 0:00:01
Loaded 3463 entries from dependency cache.
Parsing recipes: 100%
|##########################################################################=
#########################################################################|
Time: 0:00:01
Parsing of 2548 .bb files complete (2547 cached, 1 parsed). 3464
targets, 453 skipped, 7 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
NOTE: Multiple providers are available for runtime ptpd (ptpd, ptpd-qoriq)
Consider defining a PREFERRED_RPROVIDER entry to match ptpd
NOTE: Multiple providers are available for runtime ptpd-dev (ptpd, ptpd-qor=
iq)
Consider defining a PREFERRED_RPROVIDER entry to match ptpd-dev

Build Configuration:
BB_VERSION =3D "1.38.0"
BUILD_SYS =3D "x86_64-linux"
NATIVELSBSTRING =3D "ubuntu-14.04"
TARGET_SYS =3D "aarch64-poky-linux"
MACHINE =3D "imx8mmevk"
DISTRO =3D "fsl-imx-wayland"
DISTRO_VERSION =3D "4.14-sumo"
TUNE_FEATURES =3D "aarch64"
TARGET_FPU =3D ""
meta
meta-poky =3D "HEAD:64a257fa22126c4a40ff7e03424a404e360ebe1e"
meta-oe
meta-multimedia =3D "HEAD:2bb21ef27c4b0c9d52d30b3b2c5a0160fd02b966"
meta-freescale =3D "HEAD:407c6cf408969445031a492e2d25e0e2749582ea"
meta-freescale-3rdparty =3D "HEAD:88a29631809d1af0df618245430db29f2a7012b5"
meta-freescale-distro =3D "HEAD:f7e2216e93aff14ac32728a13637a48df436b7f4"
meta-bsp
meta-sdk =3D "HEAD:9867dae67c158e0820bf226bd18b792623e99b25"
meta-browser =3D "HEAD:75640e14e325479c076b6272b646be7a239c18aa"
meta-gnome
meta-networking
meta-python
meta-filesystems =3D "HEAD:2bb21ef27c4b0c9d52d30b3b2c5a0160fd02b966"
meta-qt5 =3D "HEAD:d4e7f73d04e8448d326b6f89908701e304e37d65"

Initialising tasks: 100%
|##########################################################################=
######################################################################|
Time: 0:00:06
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: fsl-image-qt5-validation-imx-1.0-r0 do_image_sdcard: Function
failed: do_image_sdcard (log file is located at
/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/build-wayland/tmp/work/imx8m=
mevk-poky-linux/fsl-image-qt5-validation-imx/1.0-r0/temp/log.do_image_sdcar=
d.21742)
ERROR: Logfile of failure stored in:
/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/build-wayland/tmp/work/imx8m=
mevk-poky-linux/fsl-image-qt5-validation-imx/1.0-r0/temp/log.do_image_sdcar=
d.21742
Log data follows:
| DEBUG: Executing python function set_image_size
| DEBUG: 1717331.200000 =3D 1321024 * 1.300000
| DEBUG: 1717331.200000 =3D max(1717331.200000, 65536)[1717331.200000] + 1
| DEBUG: 1717332.000000 =3D int(1717331.200000)
| DEBUG: 1720320 =3D aligned(1717332)
| DEBUG: returning 1720320
| DEBUG: Python function set_image_size finished
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are
['virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/pok=
y/meta/recipes-core/zlib/zlib_1.2.11.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/createrepo-c/createrepo-c_git.bb:do_populate_sysroot=
',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/python/python_2.7.15.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-c=
ore/glibc/glibc_2.27.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta-fsl-bsp-releas=
e/imx/meta-bsp/recipes-security/optee-imx/optee-os-imx_git.bb:do_populate_s=
ysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-core/update-rc.d/update-rc.d_0.7.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta=
-fsl-bsp-release/imx/meta-bsp/recipes-devtools/python/python-pycrypto_2.6.1=
.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-k=
ernel/kmod/kmod-native_git.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/libtool/libtool-native_2.4.6.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/swig/swig_3.0.12.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/mtools/mtools_4.0.18.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/libtool/libtool-cross_2.4.6.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta-fsl-bsp-releas=
e/imx/meta-bsp/recipes-bsp/firmware-imx/firmware-imx_8.0.bb:do_populate_sys=
root',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/opkg-utils/opkg-utils_0.3.6.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-bsp/u-boot/u-boot-mkimage_2018.01.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/quilt/quilt-native_0.65.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/qemu/qemuwrapper-cross_1.0.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-extended/parted/parted_3.2.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-extended/bc/bc_1.06.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/opkg/opkg_0.3.6.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-kernel/dtc/dtc_1.4.5.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/gcc/gcc-cross_7.3.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/makedevs/makedevs_1.0.1.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/autoconf/autoconf_2.69.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-support/lzop/lzop_1.03.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/mklibs/mklibs-native_0.1.43.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-c=
ore/glibc/ldconfig-native_2.12.1.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/binutils/binutils-cross_2.30.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-extended/pbzip2/pbzip2_1.1.13.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/automake/automake_1.15.1.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-k=
ernel/kmod/depmodwrapper-cross_1.0.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/dosfstools/dosfstools_4.1.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta-fsl-bsp-releas=
e/imx/meta-bsp/recipes-kernel/linux/linux-imx_4.14.78.bb:do_populate_sysroo=
t',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/bison/bison_3.0.4.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-extended/pigz/pigz_2.4.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta-fsl-bsp-releas=
e/imx/meta-bsp/recipes-bsp/imx-atf/imx-atf_1.5.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/gcc/gcc-runtime_7.3.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/pkgconfig/pkgconfig_git.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-connectivity/openssl/openssl_1.0.2p.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/rpm/rpm_4.14.1.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/dnf/dnf_2.7.5.bb:do_populate_sysroot',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta-fsl-bsp-releas=
e/imx/meta-bsp/recipes-bsp/u-boot/u-boot-imx_2018.03.bb:do_populate_sysroot=
',
'virtual:native:/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky=
/meta/recipes-devtools/prelink/prelink_git.bb:do_populate_sysroot',
'/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/poky/meta/recipes-d=
evtools/python/python-native_2.7.15.bb:do_populate_sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['zlib-native',
'createrepo-c-native', 'python', 'glibc', 'optee-os-imx',
'update-rc.d-native', 'python-pycrypto-native', 'kmod-native',
'libtool-native', 'swig-native', 'mtools-native', 'libtool-cross',
'firmware-imx', 'opkg-utils-native', 'u-boot-mkimage-native',
'quilt-native', 'qemuwrapper-cross', 'parted-native', 'pseudo-native',
'bc-native', 'opkg-native', 'dtc-native', 'gcc-cross-aarch64',
'makedevs-native', 'autoconf-native', 'lzop-native', 'mklibs-native',
'ldconfig-native', 'binutils-cross-aarch64', 'pbzip2-native',
'automake-native', 'depmodwrapper-cross', 'dosfstools-native',
'linux-imx', 'bison-native', 'pigz-native', 'e2fsprogs-native',
'imx-atf', 'gcc-runtime', 'pkgconfig-native', 'openssl-native',
'rpm-native', 'dnf-native', 'gnu-config-native', 'u-boot-imx',
'prelink-native', 'python-native', 'systemd-systemctl-native',
'shadow-native', 'xz-native', 'qemu-native', 'gdk-pixbuf-native',
'sqlite3-native', 'expat-native', 'file-native', 'ninja-native',
'glib-2.0-native', 'cmake-native', 'libxml2-native', 'curl-native',
'python3-native', 'bzip2', 'openssl', 'libffi', 'readline', 'gdbm',
'db', 'zlib', 'sqlite3', 'linux-libc-headers', 'gmp-native',
'gtk-doc-native', 'texinfo-dummy-native', 'libpcre-native',
'debianutils-native', 'readline-native', 'ncurses-native',
'util-linux-native', 'gettext-minimal-native', 'flex-native',
'libsolv-native', 'libarchive-native', 'mpfr-native', 'libmpc-native',
'm4-native', 'lzo-native', 'bzip2-native', 'attr-native', 'libgcc',
'dbus-native', 'nss-native', 'elfutils-native', 'popt-native',
'db-native', 'python3-iniparse-native', 'libcomps-native',
'librepo-native', 'libdnf-native', 'binutils-native', 'gdbm-native',
'alsa-lib-native', 'libsdl-native', 'pixman-native', 'libpng-native',
'libjpeg-turbo-native', 'shared-mime-info-native',
'gobject-introspection-native', 're2c-native', 'libffi-native',
'opkg-utils', 'cryptodev-linux', 'ncurses', 'autoconf-archive-native',
'nspr-native', 'python3-six-native', 'libcheck-native',
'gpgme-native', 'libxrandr-native', 'libxrender-native',
'libxext-native', 'libx11-native', 'util-macros-native',
'intltool-native', 'python3-setuptools-native', 'libassuan-native',
'libgpg-error-native', 'randrproto-native', 'xproto-native',
'renderproto-native', 'xextproto-native', 'kbproto-native',
'inputproto-native', 'libxcb-native', 'xtrans-native',
'libxml-parser-perl-native', 'gettext-native', 'unzip-native',
'libpthread-stubs-native', 'xcb-proto-native', 'libxdmcp-native',
'libxau-native', 'perl-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_image_sdcard
| 0+0 records in
| 0+0 records out
| 0 bytes (0 B) copied, 0.000121152 s, 0.0 kB/s
| Model: (file)
| Disk /media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/build-wayland/tmp/wor=
k/imx8mmevk-poky-linux/fsl-image-qt5-validation-imx/1.0-r0/deploy-fsl-image=
-qt5-validation-imx-image-complete/fsl-image-qt5-validation-imx-imx8mmevk-2=
0181219210506.rootfs.sdcard:
1845MB
| Sector size (logical/physical): 512B/512B
| Partition Table: msdos
| Disk Flags:
|
| Number Start End Size Type File system Flags
| 1 8389kB 75.5MB 67.1MB primary lba
| 2 75.5MB 1837MB 1762MB primary
|
| 1368+1 records in
| 1368+1 records out
| 1401544 bytes (1.4 MB) copied, 0.00271036 s, 517 MB/s
| mkfs.fat: warning - lowercase labels might not work properly with
DOS or Windows
| mkfs.fat 4.1 (2017-01-24)
| 8+0 records in
| 8+0 records out
| 67108864 bytes (67 MB) copied, 0.05928 s, 1.1 GB/s
| dd: failed to open
=E2=80=98/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/build-wayland/tmp/w=
ork/imx8mmevk-poky-linux/fsl-image-qt5-validation-imx/1.0-r0/deploy-fsl-ima=
ge-qt5-validation-imx-image-complete/fsl-image-qt5-validation-imx-imx8mmevk=
-20181219210506.rootfs.ext4=E2=80=99:
No such file or directory
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_image_sdcard (log file is located at
/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/build-wayland/tmp/work/imx8m=
mevk-poky-linux/fsl-image-qt5-validation-imx/1.0-r0/temp/log.do_image_sdcar=
d.21742)
ERROR: Task (/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta-fs=
l-bsp-release/imx/meta-sdk/dynamic-layers/qt5-layer/recipes-fsl/images/fsl-=
image-qt5-validation-imx.bb:do_image_sdcard)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 6258 tasks of which 6185 didn't need to
be rerun and 1 failed.

Summary: 1 task failed:
/media/srinivasan/appu/imx8_sumo/imx-yocto-bsp/sources/meta-fsl-bsp-release=
/imx/meta-sdk/dynamic-layers/qt5-layer/recipes-fsl/images/fsl-image-qt5-val=
idation-imx.bb:do_image_sdcard
Summary: There were 2 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
srinivasan@srinivasan-UX305UA:/media/srinivasan/appu/imx8_sumo/imx-yocto-bs=
p/build-wayland$
ls
bitbake-cookerdaemon.log cache conf sstate-cache tmp
srinivasan@srinivasan-UX305UA:/media/srinivasan/appu/imx8_sumo/imx-yocto-bs=
p/build-wayland$
cd tmp/
srinivasan@srinivasan-UX305UA:/media/srinivasan/appu/imx8_sumo/imx-yocto-bs=
p/build-wayland/tmp$
ls
abi_version buildstats cache deploy hosttools log pkgdata saved_tmpdir
sstate-control stamps sysroots sysroots-components work work-shared
srinivasan@srinivasan-UX305UA:/media/srinivasan/appu/imx8_sumo/imx-yocto-bs=
p/build-wayland/tmp$
cd deploy/
srinivasan@srinivasan-UX305UA:/media/srinivasan/appu/imx8_sumo/imx-yocto-bs=
p/build-wayland/tmp/deploy$
ls
images licenses rpm
srinivasan@srinivasan-UX305UA:/media/srinivasan/appu/imx8_sumo/imx-yocto-bs=
p/build-wayland/tmp/deploy$
cd images/
srinivasan@srinivasan-UX305UA:/media/srinivasan/appu/imx8_sumo/imx-yocto-bs=
p/build-wayland/tmp/deploy/images$
ls
imx8mmevk
srinivasan@srinivasan-UX305UA:/media/srinivasan/appu/imx8_sumo/imx-yocto-bs=
p/build-wayland/tmp/deploy/images$
cd imx8mmevk/
srinivasan@srinivasan-UX305UA:/media/srinivasan/appu/imx8_sumo/imx-yocto-bs=
p/build-wayland/tmp/deploy/images/imx8mmevk$
ls
fsl-image-qt5-validation-imx-imx8mmevk-20181219183503.testdata.json
Image--4.14.78-r0-fsl-imx8mm-evk-revb-rm67191-20181219124152.dtb
imx-boot-tools
fsl-image-qt5-validation-imx-imx8mmevk.testdata.json
Image--4.14.78-r0-fsl-imx8mm-evk-rm67191-20181219124152.dtb
lpddr4_pmu_train_1d_dmem.bin
fsl-imx8mm-ddr4-evk.dtb
Image--4.14.78-r0-fsl-imx8mm-evk-root-20181219124152.dtb
lpddr4_pmu_train_1d_imem.bin
fsl-imx8mm-ddr4-evk-rm67191.dtb
Image--4.14.78-r0-imx8mmevk-20181219124152.bin
lpddr4_pmu_train_2d_dmem.bin
fsl-imx8mm-evk-ak4497.dtb Image-fsl-imx8mm-ddr4-evk.dtb
lpddr4_pmu_train_2d_imem.bin
fsl-imx8mm-evk-ak5558.dtb Image-fsl-imx8mm-ddr4-evk-rm67191.dtb
modules--4.14.78-r0-imx8mmevk-20181219124152.tgz
fsl-imx8mm-evk-audio-tdm.dtb Image-fsl-imx8mm-evk-ak4497.dtb
modules-imx8mmevk.tgz
fsl-imx8mm-evk.dtb Image-fsl-imx8mm-evk-ak5558.dtb signed_dp_imx8m.bin
fsl-imx8mm-evk-m4.dtb Image-fsl-imx8mm-evk-audio-tdm.dtb signed_hdmi_imx8m.=
bin
fsl-imx8mm-evk-revb.dtb Image-fsl-imx8mm-evk.dtb tee.bin
fsl-imx8mm-evk-revb-rm67191.dtb Image-fsl-imx8mm-evk-m4.dtb tee.mx8mmevk.bi=
n
fsl-imx8mm-evk-rm67191.dtb Image-fsl-imx8mm-evk-revb.dtb u-boot.bin
fsl-imx8mm-evk-root.dtb Image-fsl-imx8mm-evk-revb-rm67191.dtb u-boot.bin-sd
Image Image-fsl-imx8mm-evk-rm67191.dtb u-boot-imx8mmevk.bin
Image--4.14.78-r0-fsl-imx8mm-ddr4-evk-20181219124152.dtb
Image-fsl-imx8mm-evk-root.dtb u-boot-imx8mmevk.bin-sd
Image--4.14.78-r0-fsl-imx8mm-ddr4-evk-rm67191-20181219124152.dtb
Image-imx8mmevk.bin u-boot-sd-2018.03-r0.bin
Image--4.14.78-r0-fsl-imx8mm-evk-20181219124152.dtb
imx8mm_m4_TCM_hello_world.bin u-boot-spl.bin
Image--4.14.78-r0-fsl-imx8mm-evk-ak4497-20181219124152.dtb
imx8mm_m4_TCM_rpmsg_lite_pingpong_rtos_linux_remote.bin
u-boot-spl.bin-imx8mmevk
Image--4.14.78-r0-fsl-imx8mm-evk-ak5558-20181219124152.dtb
imx8mm_m4_TCM_rpmsg_lite_str_echo_rtos.bin
u-boot-spl.bin-imx8mmevk-2018.03-r0-sd-2018.03-r0
Image--4.14.78-r0-fsl-imx8mm-evk-audio-tdm-20181219124152.dtb
imx8mm_m4_TCM_sai_low_power_audio.bin u-boot-spl.bin-imx8mmevk-sd
Image--4.14.78-r0-fsl-imx8mm-evk-m4-20181219124152.dtb
imx-boot-imx8mmevk-sd.bin u-boot-spl.bin-sd
Image--4.14.78-r0-fsl-imx8mm-evk-revb-20181219124152.dtb
imx-boot-imx8mmevk-sd.bin-flash_evk
srinivasan@srinivasan-UX305UA:/media/srinivasan/appu/imx8_sumo/imx-yocto-bs=
p/build-wayland/tmp/deploy/images/imx8mmevk$



Kindly do the needful as early as possible
Many Thanks in advance

