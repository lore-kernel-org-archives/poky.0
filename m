Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EF12E00546; Tue,  8 Nov 2016 09:39:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3634E00546
	for <poky@yoctoproject.org>; Tue,  8 Nov 2016 09:39:39 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id p190so261064056wmp.1
	for <poky@yoctoproject.org>; Tue, 08 Nov 2016 09:39:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Y+a32q1nTd7aYBdGFmXLLe8F/fCOWsCl6URpkB5Moeo=;
	b=nfL0Ubw9yH3Qf1zvUu/ct4uEBzvTp/XB5acEfdjh3x98IH+fKo3AUWgx+4bpVEG7u4
	vLkGTwvHJfmKuI3RHEDfcrLpxk0XeFQ0MNwQpxR+Vnj7E0F+nrtNRWwAIKWvgxJKQt+1
	IJ8Jvti9Pjq92vobiwQ10akgcw2QXbFXlJv2m+eZkKgv/t29WYfgj5Ysm4Eq7TrqUq6J
	FJ+cV5Nk/B5McS/b7ahBCyePbhGOvrE8RViOFoDxa3wxOVnCTkEqHAew+3IqUc80Ahpk
	L8jHNLtEQljIYVKmk0rKDsIA4GQG4luWK962gawH0lQ7u7tJ4IAa4F5UkBBHF0C2O8hh
	uMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=Y+a32q1nTd7aYBdGFmXLLe8F/fCOWsCl6URpkB5Moeo=;
	b=fZbT6uSUPMotA1l3d6okVn+SYUHgHE4i4Kxj2JBZ9l1OxdKZ8sAEAT39PRkeVy4lFq
	FDiYOzdlltlC2Fj7Kz4JUUpwiRtS6I/gM+8HGaSziNde8YW9nJ35G4Cxnh3AOw7gSA+A
	aata+OSr/B6yUcHrEo6IakX4/J1VAt5y+e5AMVnetub89Rk8yNYOmS4Ox3NMZg7dbmwz
	hbLo0ew6LpHy8JqDQP2WobSJtd1q1SW6d4MhZzE92wFvmG1x77WnHTGya3WemYcaAVPS
	J6ZAqJkQ0eyslg42Na/x5UiFVkJzaZ4y6kIuT166J6oG7In53BSgV0ROfZ3P2uKSkAqc
	vm0g==
X-Gm-Message-State: ABUngvePc8y8CIhhUp6s9XeXPHG5PAgpeG2F+HNYwKrNb/qUOYEKOkJx2uK/zZuDpFg0j3Ln
X-Received: by 10.28.154.140 with SMTP id c134mr14276304wme.25.1478626778497; 
	Tue, 08 Nov 2016 09:39:38 -0800 (PST)
Received: from flashheart.burtonini.com (home.burtonini.com. [81.2.106.35])
	by smtp.gmail.com with ESMTPSA id
	i132sm2183089wmf.14.2016.11.08.09.39.37 for <poky@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 08 Nov 2016 09:39:38 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: poky@yoctoproject.org
Date: Tue,  8 Nov 2016 17:39:31 +0000
Message-Id: <1478626771-17590-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [PATCH] conf/distro/include/maintainers: move toolchain to Khem Raj
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
X-List-Received-Date: Tue, 08 Nov 2016 17:39:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Khem Raj of Comcast has offered to formally own the toolchain and C libraries,
so reassign the maintainership to him.

Thanks, Khem!

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-poky/conf/distro/include/maintainers.inc | 58 +++++++++++++--------------
 1 file changed, 28 insertions(+), 30 deletions(-)

diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-poky/conf/distro/include/maintainers.inc
index 6956bc8..54410aa 100644
--- a/meta-poky/conf/distro/include/maintainers.inc
+++ b/meta-poky/conf/distro/include/maintainers.inc
@@ -64,10 +64,10 @@ RECIPE_MAINTAINER_pn-bdwgc = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-beecrypt = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-bigreqsproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-bind = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-binutils = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-binutils-cross = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-binutils-cross-canadian = "Robert Yang <liezhi.yang@windriver.com>"
-RECIPE_MAINTAINER_pn-binutils-crosssdk = "Robert Yang <liezhi.yang@windriver.com>"
+RECIPE_MAINTAINER_pn-binutils = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-binutils-cross = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-binutils-cross-canadian = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-binutils-crosssdk = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-bison = "Chen Qi <Qi.Chen@windriver.com>"
 RECIPE_MAINTAINER_pn-bjam-native = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-blktool = "Dengke Du <dengke.du@windriver.com>"
@@ -197,21 +197,21 @@ RECIPE_MAINTAINER_pn-freetype = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-fstests = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-fts = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-gawk = "Chen Qi <Qi.Chen@windriver.com>"
-RECIPE_MAINTAINER_pn-gcc = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-gcc-cross = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-gcc-cross-canadian = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-gcc-cross-initial = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-gcc-crosssdk = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-gcc-crosssdk-initial = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-gcc-runtime = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-gcc-sanitizers = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-gcc-source = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-gccmakedep = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-gcc = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-gcc-cross = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-gcc-cross-canadian = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-gcc-cross-initial = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-gcc-crosssdk = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-gcc-crosssdk-initial = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-gcc-runtime = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-gcc-sanitizers = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-gcc-source = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-gccmakedep = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-gconf = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gcr = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-gdb = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-gdb-cross = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-gdb-cross-canadian = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-gdb = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-gdb-cross = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-gdb-cross-canadian = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-gdbm = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-gdk-pixbuf = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gettext = "Robert Yang <liezhi.yang@windriver.com>"
@@ -221,13 +221,13 @@ RECIPE_MAINTAINER_pn-git = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-glew = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-glib-2.0 = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-glib-networking = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-glibc = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-glibc-initial = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-glibc-locale = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-glibc-mtrace = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-glibc-scripts = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-glibc = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-glibc-initial = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-glibc-locale = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-glibc-mtrace = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-glibc-scripts = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-glproto = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-gmp = "Robert Yang <liezhi.yang@windriver.com>"
+RECIPE_MAINTAINER_pn-gmp = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-gnome-common = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gnome-desktop-testing = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-gnome-desktop3 = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -346,10 +346,10 @@ RECIPE_MAINTAINER_pn-libfile-checktree-perl = "Aníbal Limón <anibal.limon@linu
 RECIPE_MAINTAINER_pn-libfm = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libfm-extra = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libfontenc = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-libgcc = "Richard Purdie <richard.purdie@linuxfoundation.org>"
-RECIPE_MAINTAINER_pn-libgcc-initial = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-libgcc = "Khem Raj <raj.khem@gmail.com>"
+RECIPE_MAINTAINER_pn-libgcc-initial = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-libgcrypt = "Hongxu Jia <hongxu.jia@windriver.com>"
-RECIPE_MAINTAINER_pn-libgfortran = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-libgfortran = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-libglade = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libglu = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libgpg-error = "Hongxu Jia <hongxu.jia@windriver.com>"
@@ -364,7 +364,7 @@ RECIPE_MAINTAINER_pn-libinput = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
 RECIPE_MAINTAINER_pn-libjson = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libksba = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-libmatchbox = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
-RECIPE_MAINTAINER_pn-libmpc = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-libmpc = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-libnewt = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-libnewt-python = "Hongxu Jia <hongxu.jia@windriver.com>"
 RECIPE_MAINTAINER_pn-libnfsidmap = "Maxin B. John <maxin.john@intel.com>"
@@ -513,7 +513,7 @@ RECIPE_MAINTAINER_pn-mmc-utils = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-mobile-broadband-provider-info = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-modutils-initscripts = "Robert Yang <liezhi.yang@windriver.com>"
 RECIPE_MAINTAINER_pn-mpeg2dec = "Alexander Kanavin <alexander.kanavin@intel.com>"
-RECIPE_MAINTAINER_pn-mpfr = "Richard Purdie <richard.purdie@linuxfoundation.org>"
+RECIPE_MAINTAINER_pn-mpfr = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-mpg123 = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-msmtp = "Alexander Kanavin <alexander.kanavin@intel.com>"
 RECIPE_MAINTAINER_pn-mtd-utils = "Alexander Kanavin <alexander.kanavin@intel.com>"
@@ -743,8 +743,6 @@ RECIPE_MAINTAINER_pn-u-boot = "Denys Dmytriyenko <denis@denix.org>"
 RECIPE_MAINTAINER_pn-u-boot-fw-utils = "Denys Dmytriyenko <denis@denix.org>"
 RECIPE_MAINTAINER_pn-u-boot-mkimage = "Denys Dmytriyenko <denis@denix.org>"
 RECIPE_MAINTAINER_pn-ubootchart = "Ross Burton <ross.burton@intel.com>"
-RECIPE_MAINTAINER_pn-uclibc = "Khem Raj <raj.khem@gmail.com>"
-RECIPE_MAINTAINER_pn-uclibc-initial = "Khem Raj <raj.khem@gmail.com>"
 RECIPE_MAINTAINER_pn-udev-extraconf = "Maxin B. John <maxin.john@intel.com>"
 RECIPE_MAINTAINER_pn-unfs3 = "Randy Witt <randy.e.witt@linux.intel.com>"
 RECIPE_MAINTAINER_pn-unifdef = "Ross Burton <ross.burton@intel.com>"
-- 
2.8.1


