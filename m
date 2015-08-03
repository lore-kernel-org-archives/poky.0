Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD728E009BC; Mon,  3 Aug 2015 09:29:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1222E0034B
	for <poky@yoctoproject.org>; Mon,  3 Aug 2015 09:29:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Aug 2015 09:29:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,602,1432623600"; d="scan'208";a="775809019"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.143])
	by fmsmga002.fm.intel.com with ESMTP; 03 Aug 2015 09:29:11 -0700
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: poky@yoctoproject.org
Date: Mon,  3 Aug 2015 19:30:17 +0300
Message-Id: <df96a0988d4664a3569e78ca40bef7886de8d39e.1438619357.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <cover.1438619357.git.alexander.kanavin@linux.intel.com>
References: <cover.1438619357.git.alexander.kanavin@linux.intel.com>
Subject: [PATCH 1/1] package_regex.inc: fix upstream version check for -native and -initial packages
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
X-List-Received-Date: Mon, 03 Aug 2015 16:29:16 -0000

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 meta-yocto/conf/distro/include/package_regex.inc | 34 ++++++++++++++----------
 1 file changed, 20 insertions(+), 14 deletions(-)

diff --git a/meta-yocto/conf/distro/include/package_regex.inc b/meta-yocto/conf/distro/include/package_regex.inc
index 037fdaa..4bebd22 100644
--- a/meta-yocto/conf/distro/include/package_regex.inc
+++ b/meta-yocto/conf/distro/include/package_regex.inc
@@ -45,13 +45,15 @@ REGEX_pn-nettle = "nettle-(?P<pver>\d+(\.\d+)+)\.tar"
 # Exclude NC versions which lack AES encryption
 REGEX_pn-db = "db-(?P<pver>\d+\.\d+(\.\d+)?).tar"
 
-REGEX_URI_pn-autogen = "http://ftp.gnu.org/gnu/autogen/"
-REGEX_pn-autogen = "rel(?P<pver>\d+(\.\d+)+)/"
+REGEX_URI_pn-autogen-native = "http://ftp.gnu.org/gnu/autogen/"
+REGEX_pn-autogen-native = "rel(?P<pver>\d+(\.\d+)+)/"
 
 # python recipe is actually python 2.x
 # also, exclude pre-releases for both python 2.x and 3.x
 REGEX_pn-python = "[Pp]ython-(?P<pver>2(\.\d+)+).tar"
+REGEX_pn-python-native = "[Pp]ython-(?P<pver>2(\.\d+)+).tar"
 REGEX_pn-python3 = "[Pp]ython-(?P<pver>\d+(\.\d+)+).tar"
+REGEX_pn-python3-native = "[Pp]ython-(?P<pver>\d+(\.\d+)+).tar"
 
 # exclude betas
 REGEX_pn-tiff = "tiff-(?P<pver>\d+(\.\d+)+).tar"
@@ -100,10 +102,10 @@ REGEX_URI_pn-mpfr = "http://www.mpfr.org/mpfr-current/"
 REGEX_URI_pn-nss = "https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS/NSS_Releases"
 REGEX_pn-nss = "NSS_(?P<pver>.+)_release_notes"
 
-REGEX_URI_pn-docbook-sgml-dtd-3.1 = "http://www.docbook.org/sgml/"
-REGEX_pn-docbook-sgml-dtd-3.1 = "(?P<pver>3\..+)/"
-REGEX_URI_pn-docbook-sgml-dtd-4.1 = "http://www.docbook.org/sgml/"
-REGEX_pn-docbook-sgml-dtd-4.1 = "(?P<pver>4\.1(\.\d+)*)/"
+REGEX_URI_pn-docbook-sgml-dtd-3.1-native = "http://www.docbook.org/sgml/"
+REGEX_pn-docbook-sgml-dtd-3.1-native = "(?P<pver>3\..+)/"
+REGEX_URI_pn-docbook-sgml-dtd-4.1-native = "http://www.docbook.org/sgml/"
+REGEX_pn-docbook-sgml-dtd-4.1-native = "(?P<pver>4\.1(\.\d+)*)/"
 
 # Qt recipes should be kept at 4.x
 REGEX_URI_pn-qt4-embedded = "http://download.qt.io/official_releases/qt/4.8/"
@@ -166,17 +168,17 @@ REGEX_URI_pn-gptfdisk = "http://sourceforge.net/projects/gptfdisk/files/gptfdisk
 REGEX_pn-gptfdisk = "/gptfdisk/${COMMON_REGEX}/"
 REGEX_URI_pn-libpng12 = "http://sourceforge.net/projects/libpng/files/libpng12/"
 REGEX_pn-libpng12 = "/libpng12/${COMMON_REGEX}/"
-REGEX_URI_pn-docbook-dsssl-stylesheets = "http://sourceforge.net/projects/docbook/files/docbook-dsssl/"
-REGEX_pn-docbook-dsssl-stylesheets = "/docbook-dsssl/${COMMON_REGEX}/"
-REGEX_URI_pn-openjade = "http://sourceforge.net/projects/openjade/files/openjade/"
-REGEX_pn-openjade = "/openjade/${COMMON_REGEX}/"
+REGEX_URI_pn-docbook-dsssl-stylesheets-native = "http://sourceforge.net/projects/docbook/files/docbook-dsssl/"
+REGEX_pn-docbook-dsssl-stylesheets-native = "/docbook-dsssl/${COMMON_REGEX}/"
+REGEX_URI_pn-openjade-native = "http://sourceforge.net/projects/openjade/files/openjade/"
+REGEX_pn-openjade-native = "/openjade/${COMMON_REGEX}/"
 
 REGEX_URI_pn-libpfm4 = "http://sourceforge.net/projects/perfmon2/files/libpfm4/"
 REGEX_URI_pn-liba52 = "http://liba52.sourceforge.net/downloads.html"
 REGEX_URI_pn-mpeg2dec = "http://libmpeg2.sourceforge.net/downloads.html"
 REGEX_URI_pn-pcmanfm = "http://sourceforge.net/projects/pcmanfm/files/PCManFM%20%2B%20Libfm%20%28tarball%20release%29/PCManFM/"
 REGEX_URI_pn-libcgroup = "http://sourceforge.net/projects/libcg/files/libcgroup/"
-REGEX_URI_pn-cdrtools = "http://sourceforge.net/projects/cdrtools/files/alpha/"
+REGEX_URI_pn-cdrtools-native = "http://sourceforge.net/projects/cdrtools/files/alpha/"
 
 # GIT
 GITTAGREGEX_COMMON = "(?P<pver>\d+\.\d+(\.\d+)*)"
@@ -185,14 +187,16 @@ GITTAGREGEX_pn-linux-yocto = "${GITTAGREGEX_COMMON}"
 GITTAGREGEX_pn-linux-yocto-tiny = "${GITTAGREGEX_COMMON}"
 GITTAGREGEX_pn-linux-yocto-dev = "${GITTAGREGEX_COMMON}"
 GITTAGREGEX_pn-uclibc = "${GITTAGREGEX_COMMON}"
+GITTAGREGEX_pn-uclibc-initial = "${GITTAGREGEX_COMMON}"
 GITTAGREGEX_pn-glibc = "${GITTAGREGEX_COMMON}"
-GITTAGREGEX_pn-cross-localedef = "${GITTAGREGEX_COMMON}"
+GITTAGREGEX_pn-glibc-initial = "${GITTAGREGEX_COMMON}"
+GITTAGREGEX_pn-cross-localedef-native = "${GITTAGREGEX_COMMON}"
 GITTAGREGEX_pn-binutils = "binutils-(?P<pver>\d+_(\d_?)*)"
 GITTAGREGEX_pn-bootchart2 = "${GITTAGREGEX_COMMON}"
 GITTAGREGEX_pn-remake = "(?P<pver>(\d+(\.\d+)+)\+dbg.+)"
 GITTAGREGEX_pn-tcf-agent = "(?P<pver>(\d+(\.\d+)+))"
-GITTAGREGEX_pn-chkconfig-alternatives = "chkconfig-(?P<pver>(\d+(\.\d+)+))"
-GITTAGREGEX_pn-sgmlspl = "(?P<pver>(\d+(\.\d+)+))"
+GITTAGREGEX_pn-chkconfig-alternatives-native = "chkconfig-(?P<pver>(\d+(\.\d+)+))"
+GITTAGREGEX_pn-sgmlspl-native = "(?P<pver>(\d+(\.\d+)+))"
 
 # Exclude x.99.x versions
 GITTAGREGEX_pn-mx-1.0 = "(?P<pver>^\d+(\.(?!99)\d+)+)"
@@ -240,6 +244,7 @@ REGEX_pn-gstreamer1.0-rtsp-server = "${GNOME_STABLE}"
 
 # and perl
 REGEX_pn-perl = "${GNOME_STABLE}"
+REGEX_pn-perl-native = "${GNOME_STABLE}"
 
 # Keep old gcc versions at their major versions
 REGEX_pn-gcc-source-4.9.2 = "gcc-(?P<pver>4\.9\.\d+).tar"
@@ -248,6 +253,7 @@ REGEX_pn-gcc-source-4.8.4 = "gcc-(?P<pver>4\.8\.\d+).tar"
 # these packages are taken from snapshots.debian.org; that source is static and goes stale
 # so we check the latest upstream from a directory that does get updated
 REGEX_URI_pn-apt = "${DEBIAN_MIRROR}/main/a/apt/"
+REGEX_URI_pn-apt-native = "${DEBIAN_MIRROR}/main/a/apt/"
 REGEX_URI_pn-resolvconf = "${DEBIAN_MIRROR}/main/r/resolvconf/"
 REGEX_URI_pn-net-tools = "${DEBIAN_MIRROR}/main/n/net-tools/"
 
-- 
2.1.4


